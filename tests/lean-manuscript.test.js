import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { checkManuscript } from '../skills/organon-core-leanify-prove/scripts/manuscript.js';
import { check, TOOLCHAIN } from '../skills/organon-core-leanify-prove/scripts/check.js';
import { hash } from '../scripts/lib/sections.js';

function fixture(t) {
  const root = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-manuscript-'));
  const run = path.join(root, 'package');
  const write = (name, data) => { const p = path.resolve(run, name); fs.mkdirSync(path.dirname(p), { recursive: true }); fs.writeFileSync(p, data); };
  t.after(() => {
    if (process.env.ORGANON_LEAN_TEST_EVIDENCE_DIR) fs.cpSync(root, path.join(process.env.ORGANON_LEAN_TEST_EVIDENCE_DIR, path.basename(root)), { recursive: true });
    fs.rmSync(root, { recursive: true, force: true });
  });
  const source = 'An assumed proposition follows from itself.\n';
  const unitHash = hash(source);
  const model = `/-- organon-map Fixture.identity\nspan.1#identity sha256 ${unitHash}\n-/\ntheorem Fixture.identity (P : Prop) (h : P) : P := h\n`;
  write('snapshot.txt', source); write('../current.txt', source); write('source.txt', source);
  write('project/Fixture.lean', model);
  write('project/lakefile.toml', 'name = "fixture"\n[[lean_lib]]\nname = "Fixture"\n');
  write('project/lean-toolchain', `${TOOLCHAIN}\n`);
  write('preregister.md', 'Test identity with explicit assumption.\n');
  const r = { schema_version: 1, source: { kind: 'text', path: 'source.txt', snapshot: 'snapshot.txt', sha256: hash(source), spans: [{ id: 'span.1', start_line: 1, end_line: 1 }] },
    preregistration: { path: 'preregister.md', sha256: hash('Test identity with explicit assumption.\n') },
    project: { path: 'project', root_module: 'Fixture' },
    units: [{ id: 'span.1', hash: unitHash, status: 'partial', reason: 'Only a formal identity is modeled.', clauses: [{ id: 'identity', claim: source.trim(), declarations: ['Fixture.identity'] }] }],
    declarations: [{ name: 'Fixture.identity', kind: 'theorem', file: 'Fixture.lean', sources: [{ unit: 'span.1', clause: 'identity' }] }], cases: [] };
  write('run.json', JSON.stringify(r));
  write('source-initial.md', 'Initial source assessment: an explicit premise is retained.\n');
  write('code-blind.md', 'Given arbitrary P and assumed h : P, identity returns h.\n');
  const review = { schema_version: 1, run_sha256: hash(JSON.stringify(r)), source_sha256: hash(source), code_sha256: { 'project/Fixture.lean': hash(model) },
    initial_records: [{ role: 'source_initial', path: 'source-initial.md', sha256: hash(fs.readFileSync(path.join(run, 'source-initial.md'))) }, { role: 'code_blind', path: 'code-blind.md', sha256: hash(fs.readFileSync(path.join(run, 'code-blind.md'))) }],
    entries: [{ id: 'claim.1', fidelity: 'partial', reason: 'Reported limited relation only.' }] };
  const m = { schema_version: 1, repository_root: '..', source_current: { path: '../current.txt', sha256: hash(source) },
    code_files: [{ path: 'project/Fixture.lean', sha256: hash(model) }], review: { path: 'review.json', sha256: '' }, views: {},
    entries: [{ id: 'claim.1', unit: 'span.1', clause: 'identity', excerpt: source, declarations: ['Fixture.identity'], kernel: 'passed', fidelity: 'partial', status: 'limited', reason: 'Limited to explicit premise.' }] };
  const views = {};
  const makeViews = () => {
    for (const key of ['overview_en', 'details_en', 'overview_zh', 'details_zh']) {
      views[key] = m.entries.map(e => `<!-- lean-entry ${e.id} -->\n<!-- lean-status ${e.status}; kernel ${e.kernel}; fidelity ${e.fidelity} -->\n${e.excerpt}\n${e.reason}\n<!-- /lean-entry ${e.id} -->\n`).join('\n');
      if (key.startsWith('details')) {
        views[key] += `\n<!-- lean-code project/Fixture.lean -->\n\`\`\`lean\n${model}\`\`\`\n<!-- /lean-code project/Fixture.lean -->\n`;
        views[key] += model.split('\n').map((line, i) => line.trim() ? `<!-- lean-line project/Fixture.lean:${i + 1} --> ${i < 3 ? 'Provenance comment; not a logical premise.' : 'For arbitrary P and h : P, return h. This assumes P.'}\n` : '').join('');
      }
    }
  };
  makeViews();
  const save = () => {
    write('review.json', JSON.stringify(review));
    if (m.review) m.review.sha256 = hash(JSON.stringify(review));
    for (const [key, data] of Object.entries(views)) { write(`../${key}.md`, data); m.views[key] = { path: `../${key}.md`, sha256: hash(data) }; }
    write('manuscript.json', JSON.stringify(m));
  };
  save();
  const kernel = { passed: true, checked: ['Fixture.identity'] };
  return { root, run, write, source, model, r, m, review, views, save, makeViews, kernel, check: () => checkManuscript(run, 'manuscript.json', kernel) };
}

test('four manuscript views bind source, code and reported review while retaining semantic boundary', t => {
  const f = fixture(t), result = f.check();
  assert.equal(result.passed, true, JSON.stringify(result));
  assert.equal(result.semantic_status, 'not_evaluated');
  assert.equal(result.entries[0].effective_status, 'limited');
});

test('reviewed full clause may pass within partial unit without certifying its neighbors', t => {
  const f = fixture(t);
  f.m.entries[0].fidelity = 'full'; f.m.entries[0].status = 'passed'; f.review.entries[0].fidelity = 'full';
  f.makeViews(); f.save();
  assert.equal(f.check().passed, true);
  assert.equal(f.r.units[0].status, 'partial');
  f.r.units[0].status = 'formalized';
  f.write('run.json', JSON.stringify(f.r)); f.review.run_sha256 = hash(JSON.stringify(f.r)); f.save();
  assert.equal(f.check().passed, true);
  f.kernel.checked = [];
  assert.match(f.check().errors.join(), /Kernel cannot support/);
});

for (const [kind, mutate, pattern] of [
  ['snapshot', f => f.write('snapshot.txt', 'changed'), /hash drift/],
  ['code', f => f.write('project/Fixture.lean', f.model + '-- changed\n'), /hash drift/],
  ['review', f => f.write('review.json', '{}'), /hash drift/],
  ['initial review', f => f.write('code-blind.md', 'changed'), /hash drift/],
  ['manuscript', f => f.write('../details_en.md', 'changed'), /hash drift/],
]) test(`${kind} tampering fails without silently refreshing evidence`, t => {
  const f = fixture(t); mutate(f);
  assert.match(f.check().errors.join(), pattern);
});

test('current source drift preserves historical kernel result and marks all entries stale', t => {
  const f = fixture(t); f.write('../current.txt', f.source + 'New conditions.\n');
  const result = f.check();
  assert.equal(result.passed, false); assert.equal(result.current_source, 'stale');
  assert.equal(result.entries[0].effective_status, 'stale');
  assert.equal(result.entries[0].kernel, 'passed');
});

for (const [kind, mutate, pattern] of [
  ['missing review', f => { delete f.m.review; }, /Missing reported fidelity/],
  ['review object', f => { f.review.code_sha256['project/Fixture.lean'] = '0'.repeat(64); }, /object binding/],
  ['missing code blind record', f => { f.review.initial_records.pop(); }, /lacks initial/],
  ['changed fidelity', f => { f.review.entries[0].fidelity = 'rejected'; }, /judgment mismatch/],
  ['entry omission', f => { f.m.entries = []; }, /cover every/],
  ['declaration omission', f => { f.m.entries[0].declarations = []; }, /declaration mapping/],
  ['code omission', f => { f.m.code_files = []; }, /Code file inventory/],
  ['excerpt mismatch', f => { f.m.entries[0].excerpt = 'Another claim'; }, /Source excerpt/],
  ['false empty excerpt', f => { f.m.entries[0].excerpt = ''; }, /Empty excerpt/],
  ['language status disagreement', f => { f.views.overview_zh = f.views.overview_zh.replace('lean-status limited', 'lean-status passed'); }, /status mismatch/],
  ['quote omission', f => { f.views.overview_en = f.views.overview_en.replace(f.source, ''); }, /source quotation/],
  ['code excerpt change', f => { f.views.details_en = f.views.details_en.replace(' : P := h', ' : P := by assumption'); }, /exact Lean code/],
  ['line explanation omission', f => { f.views.details_zh = f.views.details_zh.replace(/<!-- lean-line project\/Fixture\.lean:4 -->[^\n]*/, ''); }, /line explanation/],
  ['line explanation empty', f => { f.views.details_zh = f.views.details_zh.replace(/(<!-- lean-line project\/Fixture\.lean:4 -->)[^\n]*/, '$1'); }, /Empty line explanation/],
  ['invented failure', f => { f.m.entries[0].status = 'failed'; f.makeViews(); }, /Failure needs/],
]) test(`${kind} is rejected even when document hashes are refreshed`, t => {
  const f = fixture(t); mutate(f); f.save(); assert.match(f.check().errors.join(), pattern);
});

test('unreviewed pending entry stays incomplete; structural content can be inapplicable', t => {
  const f = fixture(t);
  delete f.m.review; f.m.entries[0].fidelity = 'pending'; f.m.entries[0].status = 'incomplete';
  f.makeViews(); f.save(); assert.equal(f.check().passed, true);
  f.r.units[0].clauses = []; f.r.units[0].status = 'structural';
  f.write('run.json', JSON.stringify(f.r));
  Object.assign(f.m.entries[0], { clause: null, declarations: [], kernel: 'not_checked', fidelity: 'not_applicable', status: 'not_applicable' });
  f.makeViews(); f.save(); assert.equal(f.check().passed, true);
});

test('countermodel success distinguishes supported nonentailment from refuted source claim', t => {
  const f = fixture(t);
  f.m.entries[0].countermodel = { declaration: 'Fixture.identity', verification: 'passed', target: 'refuted', source_relation: 'supports_nonentailment', reason: 'Synthetic checker fixture only; relevance is reviewed separately.' };
  f.save(); assert.equal(f.check().passed, true);
  f.m.entries[0].countermodel.source_relation = 'refutes_source'; f.save();
  assert.match(f.check().errors.join(), /Refuted source claim/);
  f.m.entries[0].status = 'failed'; f.makeViews(); f.save();
  assert.equal(f.check().passed, true);
});

test('a countermodel supporting nonentailment cannot alone make the source fail', t => {
  const f = fixture(t);
  f.m.entries[0].countermodel = { declaration: 'Fixture.identity', verification: 'passed', target: 'refuted', source_relation: 'supports_nonentailment', reason: 'Synthetic status fixture; the negative source claim is supported.' };
  f.m.entries[0].status = 'failed'; f.makeViews(); f.save();
  assert.match(f.check().errors.join(), /Failure needs/);
  f.m.entries[0].fidelity = 'rejected'; f.review.entries[0].fidelity = 'rejected';
  f.makeViews(); f.save();
  assert.equal(f.check().passed, true);
});

test('kernel failure cannot support positive manuscript status', t => {
  const f = fixture(t); f.kernel.passed = false;
  assert.match(f.check().errors.join(), /Kernel cannot support/);
});

test('absolute paths and escaping symlinks are rejected', t => {
  const f = fixture(t);
  f.m.source_current.path = path.join(f.root, 'current.txt'); f.save();
  assert.match(f.check().errors.join(), /paths must be relative/);
  const outside = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-outside-'));
  t.after(() => fs.rmSync(outside, { recursive: true, force: true }));
  fs.writeFileSync(path.join(outside, 'source.txt'), f.source);
  fs.symlinkSync(path.join(outside, 'source.txt'), path.join(f.root, 'link.txt'));
  f.m.source_current.path = '../link.txt'; f.save();
  assert.match(f.check().errors.join(), /escapes repository/);
});

test('ordinary relocated copy has no dependency on original paths', t => {
  const f = fixture(t), copy = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-relocated-'));
  t.after(() => fs.rmSync(copy, { recursive: true, force: true }));
  fs.cpSync(f.root, copy, { recursive: true });
  assert.equal(checkManuscript(path.join(copy, 'package'), 'manuscript.json', f.kernel).passed, true);
});

const installed = fs.existsSync(path.join(process.env.ELAN_HOME ?? path.join(os.homedir(), '.elan'), 'toolchains/leanprover--lean4---v4.33.1/bin/lean'));
test('optional manuscript entry point follows a real Lean build and retains legacy behavior', { skip: installed ? false : 'Pinned Lean unavailable; no download attempted' }, t => {
  const f = fixture(t);
  const legacy = check(f.run);
  assert.equal(legacy.passed, true, JSON.stringify(legacy)); assert.equal(legacy.manuscript, undefined);
  const actual = check(f.run, { manuscript: 'manuscript.json' });
  assert.equal(actual.passed, true, JSON.stringify(actual)); assert.equal(actual.kernel_passed, true); assert.equal(actual.manuscript.passed, true);
  f.write('../current.txt', f.source + 'changed');
  const stale = check(f.run, { manuscript: 'manuscript.json' });
  assert.equal(stale.passed, false); assert.equal(stale.kernel_passed, true); assert.equal(stale.manuscript.current_source, 'stale');
});

test('a second conflicting status marker cannot hide behind the expected marker', t => {
  const f = fixture(t);
  f.views.overview_zh = f.views.overview_zh.replace('<!-- /lean-entry claim.1 -->', '<!-- lean-status passed; kernel passed; fidelity full -->\n<!-- /lean-entry claim.1 -->');
  f.save();
  assert.equal(f.check().passed, false);
});

test('public references cannot depend on a private local directory', t => {
  const f = fixture(t); f.write('../.local/current.txt', f.source);
  f.m.source_current.path = '../.local/current.txt'; f.save();
  assert.match(f.check().errors.join(), /private/);
});

test('a checked definition alone does not qualify as a proved source claim', t => {
  const f = fixture(t);
  f.r.declarations[0].kind = 'definition'; f.write('run.json', JSON.stringify(f.r));
  f.review.run_sha256 = hash(JSON.stringify(f.r)); f.save();
  assert.match(f.check().errors.join(), /proved declaration/);
});


test('current adopted baseline drift makes unchanged source presentation stale', t => {
  const f = fixture(t);
  f.write('baseline.md', 'Adopted baseline v1.\n'); f.write('../baseline-current.md', 'Adopted baseline v1.\n');
  f.r.baseline = { path: 'baseline.md', sha256: hash('Adopted baseline v1.\n') };
  f.write('run.json', JSON.stringify(f.r)); f.review.run_sha256 = hash(JSON.stringify(f.r));
  f.m.baseline_current = { path: '../baseline-current.md', sha256: f.r.baseline.sha256 }; f.save();
  assert.equal(f.check().passed, true);
  f.write('../baseline-current.md', 'Adopted baseline v2.\n');
  const result = f.check();
  assert.equal(result.current_source, 'current'); assert.equal(result.current_baseline, 'stale');
  assert.equal(result.passed, false); assert.equal(result.entries[0].effective_status, 'stale');
});

test('public run with adopted baseline requires a current-baseline binding', t => {
  const f = fixture(t); f.write('baseline.md', 'Baseline.\n');
  f.r.baseline = { path: 'baseline.md', sha256: hash('Baseline.\n') };
  f.write('run.json', JSON.stringify(f.r)); f.review.run_sha256 = hash(JSON.stringify(f.r)); f.save();
  assert.match(f.check().errors.join(), /current baseline/i);
});
