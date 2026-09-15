import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath, pathToFileURL } from 'node:url';

const root = fileURLToPath(new URL('../', import.meta.url));
const checker = 'skills/organon-core-leanify-prove/scripts/check.js';
function temporary(t) {
  const directory = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-cli-entry-'));
  t.after(() => fs.rmSync(directory, { recursive: true, force: true }));
  return directory;
}

test('checker dispatches through physical and directory-symlink entry paths', t => {
  const alias = path.join(temporary(t), 'core');
  fs.symlinkSync(root, alias, 'dir');
  for (const base of [root, alias]) {
    const result = spawnSync(process.execPath, [path.join(base, checker)], { encoding: 'utf8' });
    assert.equal(result.status, 2, base);
    assert.match(result.stderr, /^Usage: node /);
    assert.equal(result.stdout, '');
  }
});

test('checker imports remain quiet from stdin and a separate caller', t => {
  const source = `import { check, runCli } from ${JSON.stringify(pathToFileURL(path.join(root, checker)).href)};\nif (typeof check !== 'function' || typeof runCli !== 'function') throw Error('Missing exports');\n`;
  const caller = path.join(temporary(t), 'caller.mjs');
  fs.writeFileSync(caller, source);
  for (const [args, input] of [[['--input-type=module', '-'], source], [[caller], undefined]]) {
    const result = spawnSync(process.execPath, args, { input, encoding: 'utf8' });
    assert.equal(result.status, 0, result.stderr);
    assert.equal(result.stdout, '');
    assert.equal(result.stderr, '');
  }
});
