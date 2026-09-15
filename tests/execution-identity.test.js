import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import { createHash } from 'node:crypto';

const core = fileURLToPath(new URL('../', import.meta.url));
const hash = bytes => createHash('sha256').update(bytes).digest('hex');
const sourceFiles = [
  'skills/organon-core-leanify-prove/scripts/check.js',
  'skills/organon-core-leanify-prove/scripts/manuscript.js',
  'skills/organon-core-leanify-prove/scripts/targets.js',
  'scripts/lib/sections.js',
  'scripts/lib/frontmatter.js',
];

test('fresh executions identify changed tools without rewriting prior portable receipts', t => {
  const copy = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-identity-'));
  t.after(() => {
    if (process.env.ORGANON_LEAN_TEST_EVIDENCE_DIR) {
      const destination = path.resolve(process.env.ORGANON_LEAN_TEST_EVIDENCE_DIR, path.basename(copy));
      fs.mkdirSync(path.dirname(destination), { recursive: true });
      fs.cpSync(copy, destination, { recursive: true });
    }
    fs.rmSync(copy, { recursive: true, force: true });
  });
  for (const name of ['package.json', ...sourceFiles]) {
    const destination = path.join(copy, name);
    fs.mkdirSync(path.dirname(destination), { recursive: true });
    fs.copyFileSync(path.join(core, name), destination);
  }
  const run = path.join(copy, 'run');
  fs.mkdirSync(run);
  fs.writeFileSync(path.join(run, 'run.json'), '{}');
  const receipts = [];
  const execute = () => {
    const child = spawnSync(process.execPath, [sourceFiles[0], 'run'], { cwd: copy, encoding: 'utf8' });
    assert.equal(child.status, 1, child.stderr);
    const result = JSON.parse(child.stdout);
    assert.match(result.errors.join('\n'), /Unsupported run schema_version/);
    const filename = path.join(result.evidence, 'execution-identity.json');
    const raw = fs.readFileSync(filename, 'utf8');
    const identity = JSON.parse(raw);
    assert.equal(identity.assessment, 'self_reported_not_approval');
    assert.deepEqual(identity.lean, { status: 'not_observed' });
    assert.deepEqual(identity.lake, { status: 'not_observed' });
    assert.deepEqual(identity.node, { status: 'observed', version: process.version });
    assert.deepEqual(Object.keys(identity.sources_at_module_load), sourceFiles);
    for (const name of sourceFiles) {
      assert.equal(path.isAbsolute(name), false);
      assert.equal(identity.sources_at_module_load[name], hash(fs.readFileSync(path.join(copy, name))));
    }
    assert.equal(raw.includes(copy), false);
    assert.equal(raw.includes(core), false);
    for (const previous of receipts) assert.equal(fs.readFileSync(previous.filename, 'utf8'), previous.raw);
    receipts.push({ filename, raw });
    return identity;
  };
  let prior = execute();
  for (const name of sourceFiles) {
    fs.appendFileSync(path.join(copy, name), '\n// Independent execution identity variation.\n');
    const current = execute();
    for (const source of sourceFiles) {
      if (source === name) assert.notEqual(current.sources_at_module_load[source], prior.sources_at_module_load[source]);
      else assert.equal(current.sources_at_module_load[source], prior.sources_at_module_load[source]);
    }
    prior = current;
  }
});
