#!/usr/bin/env node
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import { isDeepStrictEqual } from 'node:util';
import { hash, parseDocument } from '../../../scripts/lib/sections.js';
import { HASH, normalize } from '../../../scripts/lib/frontmatter.js';
import { checkManuscript } from './manuscript.js';

export const TOOLCHAIN = 'leanprover/lean4:v4.33.1';
const NAME = /^[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*$/;
const LOCAL_ID = /^[A-Za-z0-9][A-Za-z0-9_.-]*$/;
const ALLOWED_AXIOMS = new Set(['propext', 'Classical.choice', 'Quot.sound']);
const FORBIDDEN = /\b(?:sorry|admit|axiom|unsafe|native_decide)\b/g;
const assert = (condition, message) => { if (!condition) throw new Error(message); };
const nonempty = value => typeof value === 'string' && value.trim().length > 0;
const escape = text => text.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');

function localFile(base, relative) {
  assert(nonempty(relative) && !path.isAbsolute(relative), 'Expected a relative run/project path');
  const resolved = path.resolve(base, relative);
  assert(resolved.startsWith(`${path.resolve(base)}${path.sep}`), `Path escapes its directory: ${relative}`);
  const real = fs.realpathSync(resolved);
  assert(real.startsWith(`${fs.realpathSync(base)}${path.sep}`), `Symlink escapes its directory: ${relative}`);
  return resolved;
}

function boundFile(run, reference) {
  assert(reference && HASH.test(reference.sha256 ?? ''), 'Missing bound file hash');
  const filename = localFile(run, reference.path);
  assert(fs.statSync(filename).isFile(), `Not a file: ${reference.path}`);
  assert(hash(fs.readFileSync(filename)) === reference.sha256, `Hash drift: ${reference.path}`);
  return filename;
}

// Comments are removed, strings deliberately retained for a conservative policy.
// Only code-level doc comments can attach provenance to a declaration.
function scanComments(source) {
  let output = '', index = 0, depth = 0, quoted = false;
  const docCommentStarts = new Set();
  while (index < source.length) {
    const pair = source.slice(index, index + 2);
    if (depth) {
      if (pair === '/-') { depth++; output += '  '; index += 2; }
      else if (pair === '-/') { depth--; output += '  '; index += 2; }
      else { output += source[index] === '\n' ? '\n' : ' '; index++; }
    } else if (quoted) {
      output += source[index];
      if (source[index] === '\\' && index + 1 < source.length) output += source[++index];
      else if (source[index] === '"') quoted = false;
      index++;
    } else if (pair === '--') {
      while (index < source.length && source[index] !== '\n') { output += ' '; index++; }
    } else if (pair === '/-') {
      if (source.startsWith('/--', index)) docCommentStarts.add(index);
      depth = 1; output += '  '; index += 2;
    }
    else { quoted = source[index] === '"'; output += source[index++]; }
  }
  assert(depth === 0, 'Unclosed Lean block comment');
  return { code: output, docCommentStarts };
}

export function stripComments(source) { return scanComments(source).code; }

function sourceUnits(run, source) {
  assert(source && ['organon', 'text'].includes(source.kind), 'Unknown source kind');
  const snapshot = boundFile(run, { path: source.snapshot, sha256: source.sha256 });
  assert(nonempty(source.path), 'Missing original source path');
  const original = path.resolve(run, source.path);
  assert(fs.readFileSync(original).equals(fs.readFileSync(snapshot)), 'Source drift: original differs from frozen snapshot');
  const raw = fs.readFileSync(snapshot, 'utf8');
  if (source.kind === 'organon') {
    const parsed = parseDocument(raw);
    assert(isDeepStrictEqual(source.metadata, parsed.metadata), 'Source metadata/version drift');
    return parsed.sections;
  }
  const lines = normalize(raw).match(/[^\n]*\n|[^\n]+$/g) ?? [];
  assert(lines.length > 0 && Array.isArray(source.spans) && source.spans.length > 0, 'Text source requires nonempty frozen line spans');
  let next = 1;
  const units = source.spans.map(span => {
    assert(LOCAL_ID.test(span.id ?? '') && Number.isInteger(span.start_line) && Number.isInteger(span.end_line), 'Invalid text span');
    assert(span.start_line === next && span.end_line >= next && span.end_line <= lines.length, 'Text spans must partition every line, in order');
    next = span.end_line + 1;
    return { id: span.id, hash: hash(lines.slice(span.start_line - 1, span.end_line).join('')) };
  });
  assert(next === lines.length + 1, 'Text spans omit trailing source lines');
  assert(new Set(units.map(unit => unit.id)).size === units.length, 'Duplicate source span ID');
  return units;
}

function inventory(manifest, actual) {
  assert(Array.isArray(manifest.units), 'Missing unit coverage inventory');
  const units = new Map(actual.map(unit => [unit.id, unit]));
  assert(manifest.units.length === units.size && new Set(manifest.units.map(unit => unit.id)).size === units.size, 'Unit inventory must cover every source unit exactly once');
  const clauses = new Map();
  for (const unit of manifest.units) {
    assert(units.get(unit.id)?.hash === unit.hash, `Unit hash drift or unknown ID: ${unit.id}`);
    assert(['formalized', 'partial', 'nonformal', 'excluded', 'structural'].includes(unit.status), `Invalid coverage status: ${unit.id}`);
    assert(unit.status === 'formalized' || nonempty(unit.reason), `Coverage reason required: ${unit.id}`);
    assert(Array.isArray(unit.clauses), `Missing clause entries: ${unit.id}`);
    assert(!['formalized', 'partial'].includes(unit.status) || unit.clauses.length > 0, `Formalized/partial unit needs clauses: ${unit.id}`);
    for (const clause of unit.clauses) {
      const key = `${unit.id}#${clause.id}`;
      assert(LOCAL_ID.test(clause.id ?? '') && !clauses.has(key) && nonempty(clause.claim), `Invalid/duplicate clause: ${key}`);
      assert(Array.isArray(clause.declarations) && new Set(clause.declarations).size === clause.declarations.length, `Clause needs unique declaration references: ${key}`);
      if (clause.declarations.length === 0) {
        assert(['nonformal', 'excluded', 'unresolved'].includes(clause.status) && nonempty(clause.reason), `Unmapped clause needs explicit status and reason: ${key}`);
        assert(unit.status !== 'formalized', `Formalized unit contains an unmapped clause: ${key}`);
      }
      clauses.set(key, clause);
    }
    assert(unit.status !== 'partial' || unit.clauses.some(clause => clause.declarations.length > 0), `Partial unit needs a mapped clause: ${unit.id}`);
  }
  assert(Array.isArray(manifest.declarations) && manifest.declarations.length > 0, 'Missing declaration inventory');
  const declarations = new Map();
  for (const declaration of manifest.declarations) {
    assert(NAME.test(declaration.name ?? '') && !declarations.has(declaration.name), `Invalid/duplicate declaration: ${declaration.name}`);
    assert(['definition', 'theorem', 'case'].includes(declaration.kind), `Invalid declaration kind: ${declaration.name}`);
    assert(Array.isArray(declaration.sources) && declaration.sources.length > 0, `Missing declaration mapping: ${declaration.name}`);
    const keys = declaration.sources.map(source => `${source.unit}#${source.clause}`);
    assert(new Set(keys).size === keys.length, `Duplicate source mapping: ${declaration.name}`);
    for (const key of keys) assert(clauses.get(key)?.declarations.includes(declaration.name), `Missing reverse clause mapping: ${declaration.name} -> ${key}`);
    declarations.set(declaration.name, declaration);
  }
  for (const [key, clause] of clauses) for (const name of clause.declarations) {
    assert(declarations.get(name)?.sources.some(source => `${source.unit}#${source.clause}` === key), `Missing declaration mapping: ${key} -> ${name}`);
  }
  assert(Array.isArray(manifest.cases), 'Missing case inventory (an empty inventory is allowed)');
  const ids = new Set(), names = new Set();
  for (const entry of manifest.cases) {
    assert(LOCAL_ID.test(entry.id ?? '') && !ids.has(entry.id) && !names.has(entry.declaration), 'Invalid or duplicate case');
    assert(declarations.get(entry.declaration)?.kind === 'case' && nonempty(entry.kind) && nonempty(entry.expectation), `Invalid case declaration or expectation: ${entry.id}`);
    ids.add(entry.id); names.add(entry.declaration);
  }
  for (const declaration of declarations.values()) assert(declaration.kind !== 'case' || names.has(declaration.name), `Case declaration missing from inventory: ${declaration.name}`);
  return { units, declarations };
}

function projectFiles(project, rootModule) {
  assert(NAME.test(rootModule ?? ''), 'Invalid root module');
  assert(!fs.existsSync(path.join(project, 'lakefile.lean')), 'Core-only gate requires data-only lakefile.toml; lakefile.lean is unsupported');
  const config = fs.readFileSync(localFile(project, 'lakefile.toml'), 'utf8');
  // A deliberately narrow generated project format; no general TOML evaluation.
  const pattern = /^\s*name = "([A-Za-z][A-Za-z0-9_-]*)"\s*\n(?:version = "[0-9]+\.[0-9]+\.[0-9]+"\s*\n)?(?:defaultTargets = \["([A-Za-z_][A-Za-z0-9_']*)"\]\s*\n)?\[\[lean_lib\]\]\s*\nname = "([A-Za-z_][A-Za-z0-9_']*)"\s*$/;
  const match = pattern.exec(normalize(config));
  assert(match && match[3] === rootModule.split('.')[0] && (!match[2] || match[2] === match[3]), 'Unsupported Lake TOML: use only name, optional version/defaultTargets, and one lean_lib name matching the root module prefix');
  assert(normalize(fs.readFileSync(localFile(project, 'lean-toolchain'), 'utf8')).trim() === TOOLCHAIN, `Expected pinned toolchain ${TOOLCHAIN}`);
  if (fs.existsSync(path.join(project, 'lake-manifest.json'))) {
    const lock = JSON.parse(fs.readFileSync(localFile(project, 'lake-manifest.json'), 'utf8'));
    assert(Array.isArray(lock.packages) && lock.packages.length === 0, 'Dependencies: lake-manifest must contain an empty packages array');
  }
  const files = new Map();
  const visit = directory => {
    for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
      if (['.lake', '.git'].includes(entry.name)) continue;
      const filename = path.join(directory, entry.name);
      assert(!entry.isSymbolicLink(), `Project symlinks are unsupported: ${filename}`);
      if (entry.isDirectory()) visit(filename);
      else if (entry.name.endsWith('.lean')) files.set(path.relative(project, filename).split(path.sep).join('/'), fs.readFileSync(filename, 'utf8'));
    }
  };
  visit(project);
  assert(files.has(`${rootModule.replaceAll('.', '/')}.lean`), 'Missing root module source');
  return { config, files };
}

export function check(runDirectory, options = {}) {
  const run = fs.realpathSync(runDirectory);
  const stamp = `${new Date().toISOString().replaceAll(':', '-')}-${process.pid}-${Math.random().toString(16).slice(2, 8)}`;
  const evidence = path.join(run, 'evidence', 'checks', stamp);
  fs.mkdirSync(evidence, { recursive: true });
  const result = { passed: false, semantic_status: 'not_evaluated', evidence, errors: [], checked: [], dependencies: {}, reported_reviews: [] };
  const record = (name, value) => fs.writeFileSync(path.join(evidence, name), `${JSON.stringify(value, null, 2)}\n`);
  const execute = (label, binary, args, cwd, env, input) => {
    const started_at = new Date().toISOString();
    const command = spawnSync(binary, args, { cwd, env, input, encoding: 'utf8', timeout: 240000, maxBuffer: 16 * 1024 * 1024 });
    const execution = { started_at, finished_at: new Date().toISOString(), command: [binary, ...args], cwd, status: command.status, error: command.error?.message ?? null, stdout: command.stdout ?? '', stderr: command.stderr ?? '' };
    record(`${label}.json`, execution);
    fs.writeFileSync(path.join(evidence, `${label}.log`), execution.stdout + execution.stderr);
    return execution;
  };
  try {
    assert(Number(process.versions.node.split('.')[0]) >= 22, 'Node 22 or newer is required');
    const manifestPath = localFile(run, 'run.json');
    const rawManifest = fs.readFileSync(manifestPath);
    fs.writeFileSync(path.join(evidence, 'run.json'), rawManifest);
    const manifest = JSON.parse(rawManifest);
    assert(manifest.schema_version === 1, 'Unsupported run schema_version');
    boundFile(run, manifest.preregistration);
    if (manifest.baseline) {
      assert(nonempty(manifest.baseline.path) && HASH.test(manifest.baseline.sha256 ?? ''), 'Invalid selected baseline');
      assert(hash(fs.readFileSync(path.resolve(run, manifest.baseline.path))) === manifest.baseline.sha256, 'Selected baseline hash drift');
    }
    const actual = sourceUnits(run, manifest.source);
    const { units, declarations } = inventory(manifest, actual);
    const project = localFile(run, manifest.project?.path);
    const { config, files } = projectFiles(project, manifest.project.root_module);
    const inputs = { 'run.json': hash(rawManifest), [manifest.preregistration.path]: manifest.preregistration.sha256, [manifest.source.snapshot]: manifest.source.sha256, [`${manifest.project.path}/lakefile.toml`]: hash(config) };
    const docCommentStartsByFile = new Map();
    for (const [file, raw] of files) {
      inputs[`${manifest.project.path}/${file}`] = hash(raw);
      const { code, docCommentStarts } = scanComments(normalize(raw));
      docCommentStartsByFile.set(file, docCommentStarts);
      for (const token of code.matchAll(FORBIDDEN)) result.errors.push(`Source policy: ${file}:${code.slice(0, token.index).split('\n').length}: forbidden ${token[0]}`);
    }
    record('inputs-sha256.json', inputs);
    for (const declaration of declarations.values()) {
      assert(files.has(declaration.file), `Missing declaration source file: ${declaration.name}`);
      const provenance = `/-- organon-map ${declaration.name}\n${declaration.sources.map(source => `${source.unit}#${source.clause} sha256 ${units.get(source.unit).hash}`).join('\n')}\n-/`;
      const basename = declaration.name.split('.').at(-1);
      const kinds = declaration.kind === 'definition' ? 'def|abbrev|structure|inductive|class|opaque' : 'theorem';
      const pattern = new RegExp(`${escape(provenance)}\\s*(?:@\\[[^\\]]*\\]\\s*)*(?:(?:noncomputable|protected)\\s+)*(?:${kinds})\\s+(?:${escape(declaration.name)}|${escape(basename)})(?=\\s|[:({])`, 'g');
      const attached = [...normalize(files.get(declaration.file)).matchAll(pattern)]
        .filter(match => docCommentStartsByFile.get(declaration.file).has(match.index));
      assert(attached.length === 1, `Missing declaration or attached provenance: ${declaration.name}`);
    }
    if (manifest.reviews !== undefined) {
      assert(Array.isArray(manifest.reviews), 'reviews must be an array');
      for (const review of manifest.reviews) {
        boundFile(run, review);
        result.reported_reviews.push({ ...review, applicability: 'not_validated' });
      }
    }
    const toolchainDirectory = path.join(process.env.ELAN_HOME ?? path.join(os.homedir(), '.elan'), 'toolchains', 'leanprover--lean4---v4.33.1');
    const bin = path.join(toolchainDirectory, 'bin');
    const lean = path.join(bin, 'lean'), lake = path.join(bin, 'lake');
    assert(fs.existsSync(lean) && fs.existsSync(lake), `Pinned toolchain is not installed at ${toolchainDirectory}; no download attempted`);
    const env = { ...process.env, PATH: `${bin}${path.delimiter}${process.env.PATH ?? ''}`, ELAN_TOOLCHAIN: TOOLCHAIN };
    for (const key of ['LEAN_PATH', 'LEAN_SRC_PATH', 'LEAN_SYSROOT', 'LAKE_HOME']) delete env[key];
    const version = execute('lean-version', lean, ['--version'], run, env);
    assert(version.status === 0 && /Lean \(version 4\.33\.1(?:[ ,)])/.test(version.stdout), 'Installed Lean version does not match 4.33.1');
    const working = path.join(evidence, 'project');
    fs.mkdirSync(working);
    fs.writeFileSync(path.join(working, 'lakefile.toml'), config);
    fs.writeFileSync(path.join(working, 'lean-toolchain'), `${TOOLCHAIN}\n`);
    for (const [file, raw] of files) {
      const destination = path.join(working, file);
      fs.mkdirSync(path.dirname(destination), { recursive: true });
      fs.writeFileSync(destination, raw);
    }
    const build = execute('lake-build', lake, ['build', manifest.project.root_module.split('.')[0]], working, env);
    result.build_returncode = build.status;
    if (build.status !== 0) result.errors.push('Build: lake build failed');
    const program = `import ${manifest.project.root_module}\n${[...declarations.keys()].map(name => `#check ${name}\n#print axioms ${name}`).join('\n')}\n`;
    fs.writeFileSync(path.join(evidence, 'audit.lean'), program);
    const audit = execute('lean-audit', lake, ['env', 'lean', '--stdin'], working, env, program);
    result.audit_returncode = audit.status;
    if (audit.status !== 0) result.errors.push('Audit: root import or declaration accessibility failed');
    for (const name of declarations.keys()) {
      result.checked.push(name);
      const pattern = new RegExp(`'${escape(name)}' (?:depends on axioms:\\s*\\[([^\\]]*)\\]|does not depend on any axioms)`, 'g');
      const matches = [...audit.stdout.matchAll(pattern)];
      if (matches.length !== 1) { result.errors.push(`Audit: expected one axiom report for ${name}`); continue; }
      const axioms = (matches[0][1] ?? '').split(',').map(value => value.trim()).filter(Boolean);
      result.dependencies[name] = axioms;
      const forbidden = axioms.filter(axiom => !ALLOWED_AXIOMS.has(axiom));
      if (forbidden.length) result.errors.push(`Audit: forbidden dependencies for ${name}: ${forbidden.join(', ')}`);
    }
    result.passed = result.errors.length === 0;
  } catch (error) {
    result.errors.push(error.message);
  }
  if (options.manuscript !== undefined) {
    const kernelPassed = result.passed;
    result.manuscript = checkManuscript(run, options.manuscript, result);
    result.kernel_passed = kernelPassed;
    result.passed = kernelPassed && result.manuscript.passed;
    record('manuscript.json', result.manuscript);
  }
  record('summary.json', result);
  return result;
}

export function runCli(usage = 'Usage: node skills/organon-core-leanify-prove/scripts/check.js <run-dir> [--manuscript <run-relative-manifest>]') {
  if (!(process.argv.length === 3 || (process.argv.length === 5 && process.argv[3] === '--manuscript'))) { console.error(usage); process.exitCode = 2; }
  else {
    try { const result = check(process.argv[2], process.argv.length === 5 ? { manuscript: process.argv[4] } : {}); console.log(JSON.stringify(result, null, 2)); process.exitCode = result.passed ? 0 : 1; }
    catch (error) { console.error(error.message); process.exitCode = 1; }
  }
}

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
  runCli();
}
