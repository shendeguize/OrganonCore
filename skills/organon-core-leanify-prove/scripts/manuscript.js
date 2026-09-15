import fs from 'node:fs';
import path from 'node:path';
import { isDeepStrictEqual } from 'node:util';
import { hash, parseDocument } from '../../../scripts/lib/sections.js';
import { normalize, HASH } from '../../../scripts/lib/frontmatter.js';
import { loadProofTargets, checkTargetReview, reconcileTargetSources, PROOF_KINDS } from './targets.js';

const assert = (condition, message) => { if (!condition) throw new Error(message); };
const text = value => typeof value === 'string' && value.trim().length > 0;
const ID = /^[A-Za-z0-9][A-Za-z0-9_.-]*$/;
const inside = (base, file) => file === base || file.startsWith(`${base}${path.sep}`);
const sameSet = (a, b) => Array.isArray(a) && new Set(a).size === a.length && a.length === b.length && b.every(x => a.includes(x));

// This validates a trusted publication's bindings, not hostile filesystem access or Lean execution.
export function checkManuscript(runDirectory, manifestName, kernel) {
  const result = { passed: false, semantic_status: 'not_evaluated', current_source: 'unchecked', current_baseline: 'not_selected', errors: [], entries: [] };
  try {
    const run = fs.realpathSync(runDirectory);
    assert(text(manifestName) && !path.isAbsolute(manifestName), 'Manuscript manifest path must be run-relative');
    const manifestPath = path.resolve(run, manifestName);
    assert(inside(run, manifestPath) && inside(run, fs.realpathSync(manifestPath)), 'Manuscript manifest escapes run');
    const rawManifest = fs.readFileSync(manifestPath);
    const m = JSON.parse(rawManifest);
    result.manifest_sha256 = hash(rawManifest);
    assert(m.schema_version === 1, 'Unsupported manuscript schema_version');
    assert(text(m.repository_root) && !path.isAbsolute(m.repository_root), 'repository_root must be relative');
    const root = path.resolve(run, m.repository_root);
    const realRoot = fs.realpathSync(root);
    assert(inside(root, run) && inside(realRoot, run), 'repository_root must contain run');
    const file = relative => {
      assert(text(relative) && !path.isAbsolute(relative), 'Publication paths must be relative');
      const resolved = path.resolve(run, relative);
      assert(!path.relative(root, resolved).split(path.sep).includes('.local') && !path.relative(realRoot, fs.realpathSync(resolved)).split(path.sep).includes('.local'), `Publication reference uses private .local data: ${relative}`);
      assert(inside(root, resolved) && inside(realRoot, fs.realpathSync(resolved)), `Publication path escapes repository: ${relative}`);
      assert(fs.statSync(resolved).isFile(), `Not a publication file: ${relative}`);
      return resolved;
    };
    const bound = reference => {
      assert(reference && HASH.test(reference.sha256 ?? ''), 'Missing publication file hash');
      const filename = file(reference.path);
      const raw = fs.readFileSync(filename);
      assert(hash(raw) === reference.sha256, `Publication hash drift: ${reference.path}`);
      return raw.toString('utf8');
    };
    const rawRun = fs.readFileSync(file('run.json'));
    const r = JSON.parse(rawRun);
    assert(isDeepStrictEqual(m.proof_targets, r.proof_targets), 'Manuscript proof target binding mismatch');
    const targets = loadProofTargets(run, r);
    if (targets) bound(m.proof_targets);
    // Public evidence must be portable even though legacy run.json accepts absolute source/baseline paths.
    for (const ref of [r.source?.path, r.source?.snapshot, r.baseline?.path, r.preregistration?.path, r.project?.path].filter(x => x !== undefined)) {
      assert(text(ref) && !path.isAbsolute(ref), 'Public run paths must be relative');
      const resolved = path.resolve(run, ref);
      assert(inside(root, resolved) && inside(realRoot, fs.realpathSync(resolved)), `Public run path escapes repository: ${ref}`);
      assert(!path.relative(root, resolved).split(path.sep).includes('.local') && !path.relative(realRoot, fs.realpathSync(resolved)).split(path.sep).includes('.local'), `Public run uses private .local data: ${ref}`);
    }
    const source = bound({ path: r.source.snapshot, sha256: r.source.sha256 });
    assert(m.source_current?.sha256 === r.source.sha256, 'Current source expected hash must equal frozen source hash');
    const current = fs.readFileSync(file(m.source_current.path));
    let stale = hash(current) !== r.source.sha256;
    result.current_source = stale ? 'stale' : 'current';
    if (r.baseline) {
      assert(m.baseline_current?.sha256 === r.baseline.sha256, 'Missing or mismatched current baseline binding');
      const baselineNow = fs.readFileSync(file(m.baseline_current.path));
      result.current_baseline = hash(baselineNow) === r.baseline.sha256 ? 'current' : 'stale';
      stale ||= result.current_baseline === 'stale';
    }
    let units;
    if (r.source.kind === 'organon') units = new Map(parseDocument(source).sections.map(x => [x.id, x.body]));
    else {
      const lines = normalize(source).match(/[^\n]*\n|[^\n]+$/g) ?? [];
      units = new Map(r.source.spans.map(x => [x.id, lines.slice(x.start_line - 1, x.end_line).join('')]));
    }
    const expected = new Map();
    for (const unit of r.units) {
      if (unit.clauses.length) for (const clause of unit.clauses) expected.set(`${unit.id}#${clause.id}`, { unit, clause });
      else expected.set(`${unit.id}#`, { unit, clause: null });
    }
    const project = path.resolve(run, r.project.path);
    const expectedCode = [];
    const visit = directory => {
      for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
        if (['.lake', '.git'].includes(entry.name)) continue;
        const filename = path.join(directory, entry.name);
        assert(!entry.isSymbolicLink(), 'Public Lean project must not contain symlinks');
        if (entry.isDirectory()) visit(filename);
        else if (entry.name.endsWith('.lean')) expectedCode.push(path.relative(run, filename).split(path.sep).join('/'));
      }
    };
    visit(project);
    assert(Array.isArray(m.code_files) && sameSet(m.code_files.map(x => x.path), expectedCode), 'Code file inventory must cover every project Lean file exactly once');
    const code = new Map(m.code_files.map(ref => [ref.path, bound(ref)]));
    const codeHashes = Object.fromEntries(m.code_files.map(ref => [ref.path, ref.sha256]));
    let review = null;
    if (m.review) {
      review = JSON.parse(bound(m.review));
      assert(review.schema_version === 1 && review.run_sha256 === hash(rawRun) && review.source_sha256 === r.source.sha256 && isDeepStrictEqual(review.code_sha256, codeHashes), 'Review object binding mismatch');
      assert(Array.isArray(review.entries) && new Set(review.entries.map(x => x.id)).size === review.entries.length, 'Invalid review entry inventory');
      assert(Array.isArray(review.initial_records), 'Missing review initial records');
      for (const initial of review.initial_records) bound(initial);
    }
    if (targets) result.proof_targets = checkTargetReview(targets, r.proof_targets, review, kernel);
    const keys = ['overview_en', 'details_en', 'overview_zh', 'details_zh'];
    const views = Object.fromEntries(keys.map(key => [key, bound(m.views?.[key])]));
    assert(new Set(keys.map(key => m.views[key].path)).size === 4, 'Four manuscript views require separate files');
    assert(Array.isArray(m.entries) && m.entries.length === expected.size, 'Manuscript must cover every source clause or unclausified unit');
    const ids = new Set(), covered = new Set();
    for (const entry of m.entries) {
      assert(ID.test(entry.id ?? '') && !ids.has(entry.id), 'Invalid or duplicate manuscript entry ID');
      ids.add(entry.id);
      const key = `${entry.unit}#${entry.clause ?? ''}`;
      assert(expected.has(key) && !covered.has(key), `Invalid or duplicate manuscript source: ${key}`);
      covered.add(key);
      const { unit, clause } = expected.get(key);
      assert(typeof entry.excerpt === 'string' && units.get(entry.unit)?.includes(entry.excerpt), `Source excerpt mismatch: ${entry.id}`);
      assert(entry.excerpt.trim() || !units.get(entry.unit)?.trim(), `Empty excerpt for substantive source: ${entry.id}`);
      assert(sameSet(entry.declarations, clause?.declarations ?? []), `Manuscript declaration mapping mismatch: ${entry.id}`);
      assert(text(entry.reason), `Missing boundary/reason: ${entry.id}`);
      assert(['passed', 'failed', 'not_checked'].includes(entry.kernel), 'Invalid kernel status');
      assert(['full', 'partial', 'rejected', 'pending', 'not_applicable'].includes(entry.fidelity), 'Invalid fidelity status');
      assert(['passed', 'limited', 'failed', 'incomplete', 'not_applicable', 'stale'].includes(entry.status), 'Invalid aggregate status');
      const reported = review?.entries.find(x => x.id === entry.id);
      if (reported) assert(reported.fidelity === entry.fidelity && text(reported.reason), `Review judgment mismatch: ${entry.id}`);
      assert(entry.context_only === undefined || entry.context_only === true, `Invalid context-only marker: ${entry.id}`);
      assert(Boolean(reported?.context_only) === Boolean(entry.context_only), `Context-only review mismatch: ${entry.id}`);
      if (entry.context_only) {
        assert(targets && reported?.context_only === true && text(reported.reason), `Context-only citation requires target-aware review: ${entry.id}`);
        assert(entry.fidelity === 'not_applicable' && entry.status === 'not_applicable' && entry.countermodel == null, `Context-only citation cannot claim proof: ${entry.id}`);
      }
      if (['full', 'partial', 'rejected'].includes(entry.fidelity)) assert(reported, `Missing reported fidelity review: ${entry.id}`);
      if (entry.kernel === 'passed') assert(kernel.passed && entry.declarations.length > 0 && entry.declarations.every(name => kernel.checked.includes(name)), `Kernel cannot support passed entry: ${entry.id}`);
      if (entry.kernel === 'failed') assert(!kernel.passed && entry.declarations.length > 0, `No failed kernel run for entry: ${entry.id}`);
      if (['passed', 'limited'].includes(entry.status)) {
        if (targets) assert(targets.targets.some(target => PROOF_KINDS.includes(target.kind) && target.sources.some(source => `${source.unit}#${source.clause}` === key)), `Source proof status requires a proof target, not specification or boundary: ${entry.id}`);
        assert(entry.declarations.some(name => r.declarations.some(d => d.name === name && ['theorem', 'case'].includes(d.kind))), `Approval needs a proved declaration, not only definitions: ${entry.id}`);
        assert(entry.kernel === 'passed' && reported && ['full', 'partial'].includes(entry.fidelity), `Approval lacks kernel or review: ${entry.id}`);
        assert(review.initial_records.some(x => x.role === 'source_initial') && review.initial_records.some(x => x.role === 'code_blind'), `Approval lacks initial source review or code blind record: ${entry.id}`);
        assert(entry.status !== 'passed' || (entry.fidelity === 'full' && clause !== null), `Full approval exceeds the named clause coverage: ${entry.id}`);
      }
      if (entry.status === 'failed') assert(entry.kernel === 'failed' || entry.fidelity === 'rejected' || (entry.countermodel?.target === 'refuted' && entry.countermodel?.source_relation === 'refutes_source'), `Failure needs a recorded cause: ${entry.id}`);
      if (entry.status === 'not_applicable') assert(entry.fidelity === 'not_applicable' && (entry.declarations.length === 0 || entry.context_only === true), `Inapplicable entry contains a formal claim: ${entry.id}`);
      if (entry.countermodel != null) {
        assert(entry.declarations.includes(entry.countermodel.declaration) && entry.countermodel.verification === 'passed' && entry.kernel === 'passed' && entry.countermodel.target === 'refuted' && text(entry.countermodel.reason), `Countermodel must separate verified example and refuted target: ${entry.id}`);
        assert(['supports_nonentailment', 'refutes_source'].includes(entry.countermodel.source_relation), `Countermodel needs its relation to the source claim: ${entry.id}`);
        if (entry.countermodel.source_relation === 'refutes_source') assert(entry.status === 'failed', `Refuted source claim cannot be reported as passed: ${entry.id}`);
      }
      if (entry.status === 'stale') assert(stale, `Stale status without current source drift: ${entry.id}`);
      for (const [name, content] of Object.entries(views)) {
        const start = `<!-- lean-entry ${entry.id} -->`, end = `<!-- /lean-entry ${entry.id} -->`;
        assert(content.split(start).length === 2 && content.split(end).length === 2, `Missing or duplicate entry in ${name}: ${entry.id}`);
        const a = content.indexOf(start) + start.length, b = content.indexOf(end);
        assert(b >= a, `Reversed manuscript section: ${entry.id}`);
        const section = content.slice(a, b);
        assert(section.split('<!-- lean-status ').length === 2 && section.includes(`<!-- lean-status ${entry.status}; kernel ${entry.kernel}; fidelity ${entry.fidelity} -->`), `Manuscript status mismatch in ${name}: ${entry.id}`);
        assert(section.split('<!-- lean-context-only -->').length === (entry.context_only ? 2 : 1), `Context-only view mismatch in ${name}: ${entry.id}`);
        assert(section.includes(entry.excerpt), `Manuscript source quotation mismatch in ${name}: ${entry.id}`);
      }
      result.entries.push({ id: entry.id, kernel: entry.kernel, reported_fidelity: entry.fidelity, reported_status: entry.status, effective_status: stale ? 'stale' : entry.status, ...(entry.context_only ? { context_only: true } : {}) });
    }
    if (review) assert(review.entries.every(x => ids.has(x.id)), 'Review contains unknown manuscript entries');
    if (targets) result.proof_targets = reconcileTargetSources(targets, result.proof_targets, m.entries, kernel);
    for (const key of keys) {
      const actual = [...views[key].matchAll(/<!-- lean-entry ([A-Za-z0-9_.-]+) -->/g)].map(x => x[1]);
      assert(sameSet(actual, [...ids]), `Unknown or missing manuscript entries in ${key}`);
    }
    for (const key of ['details_en', 'details_zh']) for (const [filename, raw] of code) {
      const normalized = normalize(raw);
      const block = `<!-- lean-code ${filename} -->\n\`\`\`lean\n${normalized}${normalized.endsWith('\n') ? '' : '\n'}\`\`\`\n<!-- /lean-code ${filename} -->`;
      assert(views[key].includes(block), `Missing exact Lean code block in ${key}: ${filename}`);
      const lines = normalized.split('\n');
      for (let i = 0; i < lines.length; i++) if (lines[i].trim()) {
        const marker = `<!-- lean-line ${filename}:${i + 1} -->`;
        assert(views[key].split(marker).length === 2, `Missing or duplicate line explanation in ${key}: ${filename}:${i + 1}`);
        const explanation = views[key].split(marker)[1].split('\n')[0].trim();
        assert(text(explanation) && !explanation.startsWith('<!--'), `Empty line explanation in ${key}: ${filename}:${i + 1}`);
      }
    }
    if (stale) result.errors.push('Current source or adopted baseline drift: historical kernel evidence remains separate; current manuscript is stale');
    result.passed = result.errors.length === 0;
  } catch (error) { result.errors.push(error.message); }
  if (result.proof_targets && !result.passed) result.proof_targets.complete = false;
  return result;
}
