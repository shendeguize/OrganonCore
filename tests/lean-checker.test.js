import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { check, TOOLCHAIN, stripComments } from '../skills/organon-core-leanify-prove/scripts/check.js';
import { hash, parseDocument } from '../scripts/lib/sections.js';

const installed = fs.existsSync(path.join(process.env.ELAN_HOME ?? path.join(os.homedir(), '.elan'), 'toolchains/leanprover--lean4---v4.33.1/bin/lean'));
const realLean = { skip: installed ? false : 'Pinned Lean v4.33.1 is not installed; no automatic download' };

function fixture(t, kind = 'text') {
  const directory = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-lean-check-'));
  t.after(() => {
    if (process.env.ORGANON_LEAN_TEST_EVIDENCE_DIR) {
      const destination = path.resolve(process.env.ORGANON_LEAN_TEST_EVIDENCE_DIR, path.basename(directory));
      fs.mkdirSync(path.dirname(destination), { recursive: true });
      fs.cpSync(directory, destination, { recursive: true });
    }
    fs.rmSync(directory, { recursive: true, force: true });
  });
  const write = (file, text) => { const filename = path.join(directory, file); fs.mkdirSync(path.dirname(filename), { recursive: true }); fs.writeFileSync(filename, text); };
  const raw = kind === 'text' ? 'A stated premise supports the same premise.\n'
    : '---\nformat_version: 0.1.0\nphilosophy_version: 2.3.4\ncore_version: 1.2.3\nderived_from: null\n---\n# Fixture\n<!-- organon:id organon.preamble -->\n\nParent direct body. \n\n## Claim\n<!-- organon:id organon.claim -->\n\nA stated premise supports the same premise.\n';
  write('source.txt', raw); write('snapshot.txt', raw); write('preregister.md', 'Before implementation: test identity and rejection of an unsupported implication.\n');
  const parsed = kind === 'organon' ? parseDocument(raw) : null;
  const sourceUnits = parsed?.sections ?? [{ id: 'span.1', hash: hash(raw) }];
  const mapped = sourceUnits.at(-1);
  const sources = [{ unit: mapped.id, clause: 'identity' }];
  const annotation = name => `/-- organon-map ${name}\n${mapped.id}#identity sha256 ${mapped.hash}\n-/\n`;
  const model = `${annotation('Fixture.identity')}theorem Fixture.identity (p : Prop) (h : p) : p := h\n${annotation('Fixture.caseIdentity')}theorem Fixture.caseIdentity : True := True.intro\n`;
  write('lean/Fixture/Model.lean', model);
  write('lean/Fixture.lean', 'import Fixture.Model\n');
  write('lean/lakefile.toml', 'name = "fixture"\nversion = "0.0.1"\ndefaultTargets = ["Fixture"]\n[[lean_lib]]\nname = "Fixture"\n');
  write('lean/lean-toolchain', `${TOOLCHAIN}\n`);
  const manifest = {
    schema_version: 1,
    source: { kind, path: 'source.txt', snapshot: 'snapshot.txt', sha256: hash(raw), ...(parsed ? { metadata: parsed.metadata } : { spans: [{ id: mapped.id, start_line: 1, end_line: 1 }] }) },
    project: { path: 'lean', root_module: 'Fixture' },
    preregistration: { path: 'preregister.md', sha256: hash(fs.readFileSync(path.join(directory, 'preregister.md'))) },
    units: sourceUnits.map(unit => ({ id: unit.id, hash: unit.hash, status: unit.id === mapped.id ? 'formalized' : 'nonformal', reason: 'Context is retained without a formal claim.', clauses: unit.id === mapped.id ? [{ id: 'identity', claim: 'An assumed proposition entails itself.', declarations: ['Fixture.identity', 'Fixture.caseIdentity'] }] : [] })),
    declarations: [{ name: 'Fixture.identity', kind: 'theorem', file: 'Fixture/Model.lean', sources }, { name: 'Fixture.caseIdentity', kind: 'case', file: 'Fixture/Model.lean', sources }],
    cases: [{ id: 'identity', declaration: 'Fixture.caseIdentity', kind: 'positive', expectation: 'True has an explicit witness.' }],
  };
  const save = () => write('run.json', `${JSON.stringify(manifest, null, 2)}\n`);
  save();
  return { directory, manifest, write, save, model, annotation, mapped };
}

test('comment policy handles nested comments and retains quoted tokens', () => {
  assert.equal(stripComments('/- sorry /- axiom -/ -/\ntheorem x : True := by trivial').includes('sorry'), false);
  assert.match(stripComments('def x := "sorry"'), /sorry/);
  assert.throws(() => stripComments('/-'), /Unclosed/);
});

for (const [label, wrap] of [
  ['an ordinary block comment', example => `/- Example only:\n${example}-/\n`],
  ['nested block comments', example => `/- Outer /- Inner:\n${example}-/ -/\n`],
  ['a string with an escaped quote', example => String.raw`def Fixture.example : String := "quoted \" example` + `\n${example}"\n`],
]) {
  test(`provenance inside ${label} cannot annotate a real declaration`, t => {
    const f = fixture(t);
    const annotation = f.annotation('Fixture.identity');
    const example = `${annotation}theorem Fixture.identity (p : Prop) (h : p) : p := h\n`;
    f.write('lean/Fixture/Model.lean', wrap(example) + f.model.replace(annotation, ''));
    const result = check(f.directory);
    assert.equal(result.passed, false, JSON.stringify(result));
    assert.match(result.errors.join('\n'), /Missing declaration or attached provenance: Fixture.identity/);
    assert.equal(fs.existsSync(path.join(result.evidence, 'lake-build.json')), false);
  });
}

test('real provenance remains valid after comments and quoted comment markers', realLean, t => {
  const f = fixture(t);
  const prefix = '/- Outer /- nested -/ -/\n-- /-- ignored line comment\n' +
    String.raw`def Fixture.example : String := "/- /-- markers -/ and \"quotation\""` + '\n';
  f.write('lean/Fixture/Model.lean', prefix + f.model);
  const result = check(f.directory);
  assert.equal(result.passed, true, JSON.stringify(result));
});

test('real Lean accepts frozen plain text; outputs and input config are retained', realLean, t => {
  const f = fixture(t);
  const before = fs.readFileSync(path.join(f.directory, 'lean/lakefile.toml'));
  const result = check(f.directory);
  assert.equal(result.passed, true, JSON.stringify(result));
  assert.equal(result.semantic_status, 'not_evaluated');
  assert.deepEqual(result.checked, ['Fixture.identity', 'Fixture.caseIdentity']);
  assert.deepEqual(result.dependencies['Fixture.identity'], []);
  assert.equal(result.build_returncode, 0);
  assert.equal(result.audit_returncode, 0);
  assert.deepEqual(fs.readFileSync(path.join(f.directory, 'lean/lakefile.toml')), before);
  assert.equal(fs.existsSync(path.join(f.directory, 'lean/.lake')), false);
  assert.match(fs.readFileSync(path.join(result.evidence, 'lean-audit.log'), 'utf8'), /Fixture.identity/);
  assert.ok(JSON.parse(fs.readFileSync(path.join(result.evidence, 'lake-build.json'))).started_at);
  const identity = JSON.parse(fs.readFileSync(path.join(result.evidence, 'execution-identity.json')));
  assert.deepEqual(identity.node, { status: 'observed', version: process.version });
  assert.deepEqual(identity.lean, { status: 'observed', version: '4.33.1' });
  const lakeOutput = JSON.parse(fs.readFileSync(path.join(result.evidence, 'lake-version.json')));
  assert.equal(lakeOutput.status, 0);
  assert.deepEqual(identity.lake, { status: 'observed', version: /Lake version ([A-Za-z0-9][A-Za-z0-9.+_-]*)/.exec(lakeOutput.stdout)[1] });
});

test('real Lean accepts Organon versions and full parent direct-body coverage without pilot constants', realLean, t => {
  const f = fixture(t, 'organon');
  const result = check(f.directory);
  assert.equal(result.passed, true, JSON.stringify(result));
});

test('partial coverage retains explicitly unmodeled clauses while formalized coverage rejects them', realLean, t => {
  const f = fixture(t);
  f.manifest.units[0].status = 'partial';
  f.manifest.units[0].clauses.push({ id: 'value', claim: 'The source values this form of support.', declarations: [], status: 'nonformal', reason: 'The value is retained for review, without an encoding.' });
  f.save();
  assert.equal(check(f.directory).passed, true);
  f.manifest.units[0].status = 'formalized';
  f.save();
  assert.match(check(f.directory).errors.join('\n'), /Formalized unit contains an unmapped clause/);
  f.manifest.units[0].status = 'partial';
  delete f.manifest.units[0].clauses[1].reason;
  f.save();
  assert.match(check(f.directory).errors.join('\n'), /Unmapped clause needs explicit status and reason/);
});

test('a definition of a proposition cannot masquerade as a theorem or case', t => {
  for (const name of ['Fixture.identity', 'Fixture.caseIdentity']) {
    const f = fixture(t);
    f.write('lean/Fixture/Model.lean', f.model.replace(`theorem ${name}`, `def ${name}`));
    const result = check(f.directory);
    assert.equal(result.passed, false);
    assert.match(result.errors.join('\n'), /Missing declaration or attached provenance/);
  }
});

test('real Lean allows standard axioms and keeps reported semantic judgments separate', realLean, t => {
  const f = fixture(t);
  f.write('lean/Fixture/Model.lean', f.model.replace('(p : Prop) (h : p) : p := h', '(p : Prop) : p ∨ ¬p := Classical.em p'));
  f.write('review.md', 'The current mapping requires semantic revision.\n');
  f.manifest.reviews = [{ path: 'review.md', sha256: hash(fs.readFileSync(path.join(f.directory, 'review.md'))), judgment: 'rejected', candidate_sha256: '0'.repeat(64) }];
  f.save();
  const result = check(f.directory);
  assert.equal(result.passed, true, JSON.stringify(result));
  assert.ok(result.dependencies['Fixture.identity'].includes('Classical.choice'));
  assert.equal(result.semantic_status, 'not_evaluated');
  assert.equal(result.reported_reviews[0].judgment, 'rejected');
  assert.equal(result.reported_reviews[0].applicability, 'not_validated');
});

test('real Lean rejects sorry through source policy and actual sorryAx dependency', realLean, t => {
  const f = fixture(t);
  f.write('lean/Fixture/Model.lean', f.model.replace(': p := h', ': p := by sorry'));
  const result = check(f.directory);
  assert.equal(result.passed, false);
  assert.equal(result.build_returncode, 0, JSON.stringify(result));
  assert.ok(result.errors.some(error => error.includes('forbidden sorry')));
  assert.deepEqual(result.dependencies['Fixture.identity'], ['sorryAx']);
});

test('real Lean rejects a project axiom through source policy and actual dependencies', realLean, t => {
  const f = fixture(t);
  f.write('lean/Fixture/Model.lean', `axiom Fixture.extra : True\n${f.model.replace('True.intro', 'Fixture.extra')}`);
  const result = check(f.directory);
  assert.equal(result.passed, false);
  assert.equal(result.build_returncode, 0, JSON.stringify(result));
  assert.ok(result.errors.some(error => error.includes('forbidden axiom')));
  assert.deepEqual(result.dependencies['Fixture.caseIdentity'], ['Fixture.extra']);
});

test('real Lean root-import omission fails even after a successful prior run', realLean, t => {
  const f = fixture(t);
  assert.equal(check(f.directory).passed, true);
  f.write('lean/Fixture.lean', '-- omitted import\n');
  const result = check(f.directory);
  assert.equal(result.passed, false);
  assert.notEqual(result.audit_returncode, 0);
  assert.ok(result.errors.some(error => error.includes('root import')));
});

test('source and snapshot mutations fail before Lean; whitespace and coverage stay significant', t => {
  for (const kind of ['source', 'snapshot', 'unit', 'coverage', 'metadata']) {
    const f = fixture(t, 'organon');
    if (kind === 'source') f.write('source.txt', fs.readFileSync(path.join(f.directory, 'source.txt'), 'utf8') + ' ');
    if (kind === 'snapshot') f.write('snapshot.txt', fs.readFileSync(path.join(f.directory, 'snapshot.txt'), 'utf8') + ' ');
    if (kind === 'unit') f.manifest.units[0].hash = hash('Parent direct body.');
    if (kind === 'coverage') f.manifest.units.shift();
    if (kind === 'metadata') f.manifest.source.metadata.philosophy_version = '9.9.9';
    f.save();
    const result = check(f.directory);
    assert.equal(result.passed, false, kind);
    assert.match(result.errors.join('\n'), /drift|inventory/, kind);
  }
});

test('missing declaration, missing inventory mapping and altered provenance fail', t => {
  for (const kind of ['source', 'inventory', 'provenance']) {
    const f = fixture(t);
    if (kind === 'source') f.write('lean/Fixture/Model.lean', f.model.replace('theorem Fixture.identity ', 'theorem Fixture.removed '));
    if (kind === 'inventory') { f.manifest.declarations.shift(); f.save(); }
    if (kind === 'provenance') f.write('lean/Fixture/Model.lean', f.model.replace(f.mapped.hash, '0'.repeat(64)));
    const result = check(f.directory);
    assert.equal(result.passed, false, kind);
    assert.match(result.errors.join('\n'), /declaration|provenance/, kind);
  }
});

test('unsafe Lake configuration and dependency locks fail without executing them', t => {
  for (const kind of ['lean', 'toml', 'lock']) {
    const f = fixture(t);
    if (kind === 'lean') f.write('lean/lakefile.lean', '#eval IO.println "must not run"\n');
    if (kind === 'toml') f.write('lean/lakefile.toml', 'name = "fixture"\n[[require]]\nname = "mathlib"\n');
    if (kind === 'lock') f.write('lean/lake-manifest.json', '{"packages":[{"name":"mathlib"}]}');
    const result = check(f.directory);
    assert.equal(result.passed, false, kind);
    assert.equal(fs.existsSync(path.join(result.evidence, 'lake-build.json')), false);
    assert.match(result.errors.join('\n'), /Lake|lakefile|Dependencies/, kind);
  }
});

test('preregistration binding, text spans, cases and missing toolchain fail closed', t => {
  for (const kind of ['preregister', 'spans', 'case', 'toolchain']) {
    const f = fixture(t);
    if (kind === 'preregister') f.write('preregister.md', 'rewritten after implementation');
    if (kind === 'spans') f.manifest.source.spans[0].start_line = 2;
    if (kind === 'case') f.manifest.cases = [];
    f.save();
    const prior = process.env.ELAN_HOME;
    if (kind === 'toolchain') process.env.ELAN_HOME = path.join(f.directory, 'not-installed');
    try {
      const result = check(f.directory);
      assert.equal(result.passed, false, kind);
      assert.equal(fs.existsSync(path.join(result.evidence, 'lake-build.json')), false);
      if (kind === 'toolchain') assert.match(result.errors.join('\n'), /no download attempted/);
    } finally { if (prior === undefined) delete process.env.ELAN_HOME; else process.env.ELAN_HOME = prior; }
  }
});
