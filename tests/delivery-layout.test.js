import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import crypto from 'node:crypto';
import { fileURLToPath } from 'node:url';
import { checkManuscript } from '../skills/organon-core-leanify-prove/scripts/manuscript.js';

const core = fileURLToPath(new URL('../', import.meta.url));
const read = p => JSON.parse(fs.readFileSync(p, 'utf8'));
const frozenTargets = '2400383120ab2d98454597a73cdcaaadf45b8e47b18a646118708dc5d81da2a4';
const checkCurrent = run => checkManuscript(run, 'manuscript.json', read(path.join(run, 'evidence/kernel.json')));

test('current delivery retains the frozen proof contract and complete reviewed bindings', () => {
  const run = path.join(core, 'lean/philosophy');
  const manifest = read(path.join(run, 'run.json'));
  const raw = fs.readFileSync(path.join(run, 'targets.json'));
  assert.equal(crypto.createHash('sha256').update(raw).digest('hex'), frozenTargets);
  assert.equal(manifest.proof_targets.sha256, frozenTargets);
  const targets = JSON.parse(raw).targets;
  assert.equal(targets.length, 28);
  assert.equal(new Set(targets.flatMap(t => t.required_declarations.map(d => d.name))).size, 62);
  // Stored kernel evidence checks bindings here; the documented standalone command runs Lean again.
  const result = checkCurrent(run);
  assert.equal(result.passed, true, result.errors.join('\n'));
  assert.equal(result.proof_targets.complete, true);
  assert.equal(result.entries.length, 35); // 33 source paragraphs and two empty headings.
  assert(result.proof_targets.entries.every(e => e.reported_status === 'accepted'));
  assert.equal(fs.existsSync(path.join(core, 'lean/rationale')), false);
  assert.equal(fs.existsSync(path.join(core, 'zh/lean/rationale')), false);
});

test('current closure works in an ordinary copy and rejects source drift or a removed target binding', t => {
  const copy = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-current-'));
  t.after(() => fs.rmSync(copy, { recursive: true, force: true }));
  for (const relative of ['PHILOSOPHY.md', 'lean/philosophy', 'zh/lean/philosophy']) {
    const target = path.join(copy, relative);
    fs.mkdirSync(path.dirname(target), { recursive: true });
    fs.cpSync(path.join(core, relative), target, {
      recursive: true,
      filter: source => !['.lake', 'checks', 'lake-manifest.json'].includes(path.basename(source)),
    });
  }
  assert.equal(fs.existsSync(path.join(copy, '.local')), false);
  assert.equal(fs.existsSync(path.join(copy, '.git')), false);
  const run = path.join(copy, 'lean/philosophy');
  const clean = checkCurrent(run);
  assert.equal(clean.passed, true, clean.errors.join('\n'));
  assert.equal(clean.proof_targets.complete, true);
  const manifestFile = path.join(run, 'manuscript.json');
  const original = fs.readFileSync(manifestFile);
  const missing = JSON.parse(original);
  delete missing.proof_targets;
  fs.writeFileSync(manifestFile, JSON.stringify(missing));
  const invalid = checkCurrent(run);
  assert.equal(invalid.passed, false);
  assert(invalid.errors.includes('Manuscript proof target binding mismatch'));
  fs.writeFileSync(manifestFile, original);
  fs.appendFileSync(path.join(copy, 'PHILOSOPHY.md'), '\nSource drift fixture.\n');
  const stale = checkCurrent(run);
  assert.equal(stale.passed, false);
  assert.equal(stale.current_source, 'stale');
  assert.equal(stale.proof_targets.complete, false);
  assert(stale.entries.every(e => e.effective_status === 'stale'));
});
