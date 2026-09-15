import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { hash } from '../scripts/lib/sections.js';
import { check, TOOLCHAIN } from '../skills/organon-core-leanify-prove/scripts/check.js';
import { checkManuscript } from '../skills/organon-core-leanify-prove/scripts/manuscript.js';
import { loadProofTargets, validateProofTargets } from '../skills/organon-core-leanify-prove/scripts/targets.js';

function fixture(t) {
  const root = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-targets-'));
  const run = path.join(root, 'run');
  const write = (name, value) => { const filename = path.resolve(run, name); fs.mkdirSync(path.dirname(filename), { recursive: true }); fs.writeFileSync(filename, value); };
  t.after(() => {
    if (process.env.ORGANON_LEAN_TEST_EVIDENCE_DIR) fs.cpSync(root, path.join(process.env.ORGANON_LEAN_TEST_EVIDENCE_DIR, path.basename(root)), { recursive: true });
    fs.rmSync(root, { recursive: true, force: true });
  });
  const excerpts = ['A duty has a formal definition.\n', 'An assumed proposition entails itself.\n', 'A concrete true proposition has a witness.\n', 'Value justification is outside this synthetic proof.\n'];
  const source = excerpts.join(''), sourceHash = hash(source);
  const declarations = [
    { name: 'Fixture.Duty', kind: 'definition', file: 'Fixture.lean', sources: [{ unit: 'source', clause: 'duty' }] },
    { name: 'Fixture.identity', kind: 'theorem', file: 'Fixture.lean', sources: [{ unit: 'source', clause: 'identity' }] },
    { name: 'Fixture.witness', kind: 'case', file: 'Fixture.lean', sources: [{ unit: 'source', clause: 'witness' }] },
  ];
  const body = ['def Fixture.Duty (P : Prop) : Prop := P', 'theorem Fixture.identity (P : Prop) (h : P) : P := h', 'theorem Fixture.witness : True := True.intro'];
  const model = declarations.map((d, i) => `/-- organon-map ${d.name}\n${d.sources.map(s => `${s.unit}#${s.clause} sha256 ${sourceHash}`).join('\n')}\n-/\n${body[i]}\n`).join('\n');
  write('source.txt', source); write('snapshot.txt', source); write('../current.txt', source);
  write('preregister.md', 'Synthetic binding and status tests; no philosophical result is asserted.\n');
  write('project/lakefile.toml', 'name = "fixture"\n[[lean_lib]]\nname = "Fixture"\n');
  write('project/lean-toolchain', `${TOOLCHAIN}\n`);
  write('source-initial.md', 'Synthetic source-first fixture.\n'); write('code-blind.md', 'Synthetic code-only fixture.\n');
  const clauses = declarations.map((d, i) => ({ id: d.sources[0].clause, claim: excerpts[i].trim(), declarations: [d.name] }));
  clauses.push({ id: 'boundary', claim: excerpts[3].trim(), declarations: [], status: 'nonformal', reason: 'No formal value justification is claimed.' });
  const r = { schema_version: 1, source: { kind: 'text', path: 'source.txt', snapshot: 'snapshot.txt', sha256: sourceHash, spans: [{ id: 'source', start_line: 1, end_line: 4 }] },
    preregistration: { path: 'preregister.md', sha256: hash(fs.readFileSync(path.join(run, 'preregister.md'))) }, project: { path: 'project', root_module: 'Fixture' },
    units: [{ id: 'source', hash: sourceHash, status: 'partial', reason: 'Conditional statements and an explicit boundary.', clauses }], declarations,
    cases: [{ id: 'witness', declaration: 'Fixture.witness', kind: 'positive', expectation: 'True has a witness.' }] };
  const kinds = ['specification', 'theorem', 'satisfiability', 'boundary'];
  const catalog = { schema_version: 1, source_sha256: sourceHash, targets: clauses.map((clause, i) => ({ id: `target.${clause.id}`, kind: kinds[i], sources: [{ unit: 'source', clause: clause.id }], statement: clause.claim,
    premises: i === 1 ? ['P is assumed.'] : [], acceptance: 'Check the stated synthetic object and retain its limitations.', required_declarations: i < 3 ? [{ name: declarations[i].name, kind: declarations[i].kind }] : [], required_cases: i === 2 ? ['Fixture.witness'] : [] })) };
  const kernel = { passed: true, checked: declarations.map(d => d.name), declaration_types: Object.fromEntries(declarations.map(d => [d.name, { type: `Synthetic type of ${d.name}`, sha256: hash(`Synthetic type of ${d.name}`) }])) };
  const review = { schema_version: 1, source_sha256: sourceHash, initial_records: ['source_initial', 'code_blind'].map((role, i) => ({ role, path: i ? 'code-blind.md' : 'source-initial.md', sha256: hash(fs.readFileSync(path.join(run, i ? 'code-blind.md' : 'source-initial.md'))) })),
    entries: clauses.slice(0, 3).map(clause => ({ id: clause.id, fidelity: 'full', reason: 'Synthetic correspondence fixture, not a philosophical judgment.' })),
    target_entries: catalog.targets.map(target => ({ id: target.id, status: 'accepted', reason: 'Synthetic inventory acceptance only.', declarations: target.required_declarations.map(d => d.name), type_hashes: Object.fromEntries(target.required_declarations.map(d => [d.name, kernel.declaration_types[d.name].sha256])) })) };
  const m = { schema_version: 1, repository_root: '..', source_current: { path: '../current.txt', sha256: sourceHash }, review: { path: 'review.json', sha256: '' }, views: {},
    entries: clauses.map((clause, i) => ({ id: clause.id, unit: 'source', clause: clause.id, excerpt: excerpts[i], declarations: clause.declarations, kernel: i < 3 ? 'passed' : 'not_checked', fidelity: i < 3 ? 'full' : 'not_applicable', status: ['incomplete', 'passed', 'limited', 'not_applicable'][i], reason: 'Synthetic result preserves its category and scope.' })) };
  const f = { root, run, write, source, model, r, catalog, kernel, review, m };
  f.save = () => {
    write('project/Fixture.lean', f.model);
    write('targets.json', JSON.stringify(catalog));
    r.proof_targets = { path: 'targets.json', sha256: hash(JSON.stringify(catalog)) }; m.proof_targets = { ...r.proof_targets };
    write('run.json', JSON.stringify(r));
    review.run_sha256 = hash(JSON.stringify(r)); review.proof_targets_sha256 = r.proof_targets.sha256;
    review.code_sha256 = { 'project/Fixture.lean': hash(f.model) };
    m.code_files = [{ path: 'project/Fixture.lean', sha256: hash(f.model) }];
    write('review.json', JSON.stringify(review)); m.review.sha256 = hash(JSON.stringify(review));
    for (const key of ['overview_en', 'details_en', 'overview_zh', 'details_zh']) {
      let content = m.entries.map(entry => `<!-- lean-entry ${entry.id} -->\n<!-- lean-status ${entry.status}; kernel ${entry.kernel}; fidelity ${entry.fidelity} -->\n${entry.context_only ? '<!-- lean-context-only -->\n' : ''}${entry.excerpt}<!-- /lean-entry ${entry.id} -->\n`).join('\n');
      if (key.startsWith('details')) {
        content += `<!-- lean-code project/Fixture.lean -->\n\`\`\`lean\n${f.model}\`\`\`\n<!-- /lean-code project/Fixture.lean -->\n`;
        content += f.model.split('\n').map((line, i) => line.trim() ? `<!-- lean-line project/Fixture.lean:${i + 1} --> Synthetic line explanation for a checker fixture.\n` : '').join('');
      }
      write(`../${key}.md`, content); m.views[key] = { path: `../${key}.md`, sha256: hash(content) };
    }
    write('manuscript.json', JSON.stringify(m));
  };
  f.check = () => checkManuscript(run, 'manuscript.json', f.kernel);
  f.save();
  return f;
}

test('valid planned targets bind review, declarations and types without promoting specifications', t => {
  const f = fixture(t), result = f.check();
  assert.equal(result.passed, true, JSON.stringify(result)); assert.equal(result.proof_targets.complete, true);
  assert.equal(result.semantic_status, 'not_evaluated'); assert.equal(result.entries[0].effective_status, 'incomplete');
  assert.equal(result.entries[3].effective_status, 'not_applicable');
});

test('legacy v1 manuscript and source inventory remain valid without target catalogs', t => {
  const f = fixture(t);
  delete f.r.proof_targets; delete f.m.proof_targets; delete f.review.proof_targets_sha256; delete f.review.target_entries;
  f.write('run.json', JSON.stringify(f.r)); f.review.run_sha256 = hash(JSON.stringify(f.r));
  f.write('review.json', JSON.stringify(f.review)); f.m.review.sha256 = hash(JSON.stringify(f.review)); f.write('manuscript.json', JSON.stringify(f.m));
  const result = f.check(); assert.equal(result.passed, true, JSON.stringify(result)); assert.equal(result.proof_targets, undefined);
});

for (const [name, mutate, pattern] of [
  ['duplicate target', f => f.catalog.targets.push(f.catalog.targets[0]), /duplicate proof target/],
  ['unknown target kind', f => { f.catalog.targets[0].kind = 'truth'; }, /target kind/],
  ['unknown source', f => { f.catalog.targets[0].sources[0].clause = 'missing'; }, /Unknown or duplicate proof target source/],
  ['duplicate source', f => f.catalog.targets[0].sources.push(f.catalog.targets[0].sources[0]), /Unknown or duplicate proof target source/],
  ['source drift', f => { f.catalog.source_sha256 = '0'.repeat(64); }, /source hash drift/],
  ['missing acceptance', f => { f.catalog.targets[0].acceptance = ''; }, /statement or acceptance/],
  ['invalid premises', f => { f.catalog.targets[0].premises = ['']; }, /premises/],
  ['unknown declaration', f => { f.catalog.targets[0].required_declarations[0].name = 'Fixture.missing'; }, /target declaration/],
  ['declaration kind mismatch', f => { f.catalog.targets[0].required_declarations[0].kind = 'theorem'; }, /target declaration/],
  ['definition masquerading as theorem', f => { f.catalog.targets[0].kind = 'theorem'; }, /Theorem target requires a theorem/],
  ['case masquerading as theorem', f => { f.catalog.targets[2].kind = 'theorem'; }, /Theorem target requires a theorem/],
  ['boundary claiming declarations', f => { f.catalog.targets[0].kind = 'boundary'; }, /Boundary target cannot/],
  ['specification missing definition', f => { f.catalog.targets[1].kind = 'specification'; }, /Specification target requires/],
  ['missing case', f => { f.catalog.targets[2].required_cases = ['Fixture.missing']; }, /target case/],
  ['duplicate case', f => f.catalog.targets[2].required_cases.push('Fixture.witness'), /case inventory/],
  ['uncovered mapped clause', f => f.catalog.targets.splice(0, 1), /Mapped clause lacks/],
  ['incomplete relation mapping', f => f.catalog.targets[1].sources.push({ unit: 'source', clause: 'duty' }), /declaration omits source/],
]) test(`${name} fails target inventory validation`, t => {
  const f = fixture(t); mutate(f);
  assert.throws(() => validateProofTargets(f.r, f.catalog), pattern);
});

test('multiple source relation targets validate when the actual declaration retains every source', t => {
  const f = fixture(t), source = { unit: 'source', clause: 'duty' };
  f.catalog.targets[1].sources.push(source); f.r.declarations[1].sources.push(source); f.r.units[0].clauses[0].declarations.push('Fixture.identity');
  assert.doesNotThrow(() => validateProofTargets(f.r, f.catalog));
  f.catalog.targets[2].kind = 'nonentailment';
  assert.doesNotThrow(() => validateProofTargets(f.r, f.catalog));
});

for (const [name, mutate, pattern] of [
  ['missing target file', f => fs.rmSync(path.join(f.run, 'targets.json')), /ENOENT/],
  ['target byte drift', f => f.write('targets.json', '{}'), /target hash drift/],
  ['escaping target path', f => { f.r.proof_targets.path = '../current.txt'; }, /escapes run/],
  ['absolute target path', f => { f.r.proof_targets.path = path.join(f.run, 'targets.json'); }, /binding/],
]) test(`${name} fails target loading`, t => {
  const f = fixture(t); mutate(f); assert.throws(() => loadProofTargets(f.run, f.r), pattern);
});

test('manuscript requires the exact run target binding', t => {
  const f = fixture(t); delete f.m.proof_targets; f.write('manuscript.json', JSON.stringify(f.m));
  assert.match(f.check().errors.join(), /proof target binding mismatch/);
});

for (const [name, mutate, pattern] of [
  ['unknown review target', f => { f.review.target_entries[0].id = 'unknown'; }, /every target exactly once/],
  ['duplicate review target', f => f.review.target_entries.push(f.review.target_entries[0]), /every target exactly once/],
  ['removed boundary with old review', f => f.catalog.targets.pop(), /every target exactly once/],
  ['review declarations mismatch', f => { f.review.target_entries[1].declarations = []; }, /review declaration mismatch/],
  ['old type hash', f => { f.review.target_entries[1].type_hashes['Fixture.identity'] = '0'.repeat(64); }, /type hash mismatch/],
  ['missing actual type', f => { delete f.kernel.declaration_types['Fixture.identity']; }, /Missing actual declaration type/],
  ['tampered actual type', f => { f.kernel.declaration_types['Fixture.identity'].type = 'changed'; }, /Missing actual declaration type/],
  ['missing target type hashes', f => { delete f.review.target_entries[0].type_hashes; }, /type hash mismatch/],
  ['changed actual premise with old review', f => { const type = 'Changed complete type with an extra premise'; f.kernel.declaration_types['Fixture.identity'] = { type, sha256: hash(type) }; }, /type hash mismatch/],
  ['specification given passed status', f => { f.m.entries[0].status = 'passed'; }, /proof target, not specification or boundary/],
  ['boundary given passed status', f => { f.m.entries[3].status = 'passed'; }, /proof target, not specification or boundary/],
]) test(`${name} fails manuscript target checks`, t => {
  const f = fixture(t); mutate(f); f.save(); const result = f.check();
  assert.equal(result.passed, false, JSON.stringify(result)); assert.match(result.errors.join(), pattern);
  assert.notEqual(result.proof_targets?.complete, true);
});

for (const status of ['pending', 'rejected']) test(`${status} target review is mechanically valid but not complete`, t => {
  const f = fixture(t); f.review.target_entries[0].status = status; f.save();
  const result = f.check(); assert.equal(result.passed, true, JSON.stringify(result)); assert.equal(result.proof_targets.complete, false);
});

test('missing bound initial roles cannot produce target completion', t => {
  const f = fixture(t); f.review.initial_records.pop();
  f.m.entries[1].status = 'incomplete'; f.m.entries[2].status = 'incomplete'; f.save();
  const result = f.check(); assert.equal(result.passed, true, JSON.stringify(result)); assert.equal(result.proof_targets.complete, false);
});

test('source currentness and all manuscript checks constrain target completion', t => {
  const f = fixture(t); f.write('../current.txt', f.source + 'Changed.\n');
  const result = f.check(); assert.equal(result.passed, false); assert.equal(result.proof_targets.complete, false);
});

const installed = fs.existsSync(path.join(process.env.ELAN_HOME ?? path.join(os.homedir(), '.elan'), 'toolchains/leanprover--lean4---v4.33.1/bin/lean'));
test('actual Lean exports complete types, binds reviewed hashes and rejects a new premise under old review', { skip: installed ? false : 'Pinned Lean unavailable; no download attempted' }, t => {
  const f = fixture(t), first = check(f.run);
  assert.equal(first.passed, true, JSON.stringify(first)); assert.equal(first.proof_targets.complete, false);
  const types = JSON.parse(fs.readFileSync(path.join(first.evidence, 'declaration-types.json'), 'utf8'));
  assert.deepEqual(types, first.declaration_types); assert.match(types['Fixture.identity'].type, /forallE/); assert.match(types['Fixture.identity'].type, /`h/);
  const identity = JSON.parse(fs.readFileSync(path.join(first.evidence, 'execution-identity.json'), 'utf8'));
  assert.match(identity.sources_at_module_load['skills/organon-core-leanify-prove/scripts/targets.js'], /^[0-9a-f]{64}$/);
  for (const entry of f.review.target_entries) entry.type_hashes = Object.fromEntries(entry.declarations.map(name => [name, types[name].sha256]));
  f.save();
  const reviewed = check(f.run, { manuscript: 'manuscript.json' });
  assert.equal(reviewed.passed, true, JSON.stringify(reviewed)); assert.equal(reviewed.proof_targets.complete, true);
  f.model = f.model.replace('(P : Prop) (h : P) : P := h', '(P : Prop) (extra : True) (h : P) : P := h');
  f.save();
  const changed = check(f.run, { manuscript: 'manuscript.json' });
  assert.equal(changed.kernel_passed, true, JSON.stringify(changed)); assert.equal(changed.passed, false);
  assert.notEqual(changed.declaration_types['Fixture.identity'].sha256, types['Fixture.identity'].sha256);
  assert.match(changed.manuscript.errors.join(), /type hash mismatch/); assert.equal(changed.proof_targets.complete, false);
});


test('accepted proof target cannot coexist with pending source correspondence', t => {
  const f = fixture(t);
  f.review.entries[1].fidelity = 'pending';
  Object.assign(f.m.entries[1], { fidelity: 'pending', status: 'incomplete' });
  f.save();
  const result = f.check();
  assert.equal(result.passed, false); assert.equal(result.proof_targets.complete, false);
  assert.match(result.errors.join(), /Accepted proof target lacks reviewed source correspondence/);
});

test('accepted proof target with reviewed but incomplete source remains incomplete', t => {
  const f = fixture(t); f.m.entries[1].status = 'incomplete'; f.save();
  const result = f.check();
  assert.equal(result.passed, true, JSON.stringify(result)); assert.equal(result.proof_targets.complete, false);
});

for (const status of ['passed', 'limited']) test(`${status} source needs an accepted checked proof target`, t => {
  const f = fixture(t); f.review.target_entries[1].status = 'pending'; f.m.entries[1].status = status; f.save();
  const result = f.check();
  assert.equal(result.passed, false); assert.equal(result.proof_targets.complete, false);
  assert.match(result.errors.join(), /Source proof status lacks an accepted checked proof target/);
});

test('a limited accepted proof survives another pending formal target but cannot become passed', t => {
  const f = fixture(t);
  f.catalog.targets.push({ ...f.catalog.targets[1], id: 'target.additional' });
  f.review.target_entries.push({ ...f.review.target_entries[1], id: 'target.additional', status: 'pending' });
  f.m.entries[1].status = 'limited'; f.m.entries[1].fidelity = 'partial'; f.review.entries[1].fidelity = 'partial'; f.save();
  const limited = f.check();
  assert.equal(limited.passed, true, JSON.stringify(limited)); assert.equal(limited.proof_targets.complete, false);
  f.m.entries[1].status = 'passed'; f.m.entries[1].fidelity = 'full'; f.review.entries[1].fidelity = 'full'; f.save();
  const passed = f.check();
  assert.equal(passed.passed, false); assert.match(passed.errors.join(), /Passed source has an unaccepted formal target/);
});

test('an accepted specification needs source review even though its source is not a proof', t => {
  const f = fixture(t); f.review.entries[0].fidelity = 'pending'; f.m.entries[0].fidelity = 'pending'; f.save();
  assert.match(f.check().errors.join(), /Accepted proof target lacks reviewed source correspondence/);
});

test('an accepted boundary may use not-applicable source status without a source review entry', t => {
  const f = fixture(t); assert.equal(f.review.entries.some(entry => entry.id === 'boundary'), false);
  const result = f.check(); assert.equal(result.passed, true); assert.equal(result.proof_targets.complete, true);
});


function withContextCitation(t) {
  const f = fixture(t), context = { unit: 'source', clause: 'boundary' };
  f.catalog.targets[1].sources.push(context);
  f.r.declarations[1].sources.push(context);
  f.r.units[0].clauses[3].declarations.push('Fixture.identity');
  Object.assign(f.m.entries[3], { context_only: true, declarations: ['Fixture.identity'], kernel: 'passed' });
  f.review.entries.push({ id: 'boundary', context_only: true, fidelity: 'not_applicable', reason: 'Reviewed background citation: this declaration does not prove value justification.' });
  f.model = f.model.replace('source#identity sha256 ' + f.r.source.sha256, 'source#identity sha256 ' + f.r.source.sha256 + '\nsource#boundary sha256 ' + f.r.source.sha256);
  f.save();
  return f;
}

test('reviewed background references retain mapping without claiming a proof of the background', t => {
  const f = withContextCitation(t), result = f.check();
  assert.equal(result.passed, true, JSON.stringify(result));
  assert.equal(result.proof_targets.complete, true);
  assert.equal(result.entries[3].context_only, true);
  assert.equal(result.entries[3].effective_status, 'not_applicable');
  assert.equal(f.r.units[0].clauses[3].declarations[0], 'Fixture.identity');
  assert.doesNotThrow(() => validateProofTargets(f.r, f.catalog));
});

for (const [name, mutate, pattern] of [
  ['unreviewed context label', f => { delete f.review.entries[3].context_only; }, /Context-only review mismatch/],
  ['unmatched review context label', f => { delete f.m.entries[3].context_only; }, /Context-only review mismatch/],
  ['context proof status', f => { f.m.entries[3].status = 'limited'; }, /Context-only citation cannot claim proof/],
  ['context full fidelity', f => { f.m.entries[3].fidelity = 'full'; f.review.entries[3].fidelity = 'full'; }, /Context-only citation cannot claim proof/],
  ['all theorem sources made context', f => { Object.assign(f.m.entries[1], { context_only: true, fidelity: 'not_applicable', status: 'not_applicable' }); Object.assign(f.review.entries[1], { context_only: true, fidelity: 'not_applicable' }); }, /Accepted formal target has only context citations/],
  ['all specification sources made context', f => { Object.assign(f.m.entries[0], { context_only: true, fidelity: 'not_applicable', status: 'not_applicable' }); Object.assign(f.review.entries[0], { context_only: true, fidelity: 'not_applicable' }); }, /Accepted formal target has only context citations/],
]) test(`${name} cannot bypass target completion`, t => {
  const f = withContextCitation(t); mutate(f); f.save(); const result = f.check();
  assert.equal(result.passed, false); assert.notEqual(result.proof_targets?.complete, true);
  assert.match(result.errors.join(), pattern);
});

test('context citations do not waive an incomplete substantive source', t => {
  const f = withContextCitation(t); f.m.entries[1].status = 'incomplete'; f.save();
  const result = f.check(); assert.equal(result.passed, true); assert.equal(result.proof_targets.complete, false);
});

test('context citation markers must remain visible in each bound view', t => {
  const f = withContextCitation(t), ref = f.m.views.overview_en;
  const text = fs.readFileSync(path.resolve(f.run, ref.path), 'utf8').replace('<!-- lean-context-only -->\n', '');
  f.write(ref.path, text); ref.sha256 = hash(text); f.write('manuscript.json', JSON.stringify(f.m));
  assert.match(f.check().errors.join(), /Context-only view mismatch/);
});


test('actual Lean still audits declarations behind context-only citations', { skip: installed ? false : 'Pinned Lean unavailable; no download attempted' }, t => {
  const f = withContextCitation(t), first = check(f.run);
  assert.equal(first.passed, true, JSON.stringify(first));
  for (const entry of f.review.target_entries) entry.type_hashes = Object.fromEntries(entry.declarations.map(name => [name, first.declaration_types[name].sha256]));
  f.save();
  const result = check(f.run, { manuscript: 'manuscript.json' });
  assert.equal(result.passed, true, JSON.stringify(result));
  assert.equal(result.proof_targets.complete, true);
  assert(result.checked.includes('Fixture.identity'));
});
