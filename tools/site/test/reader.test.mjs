import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { createHash } from 'node:crypto';
import { extractLines } from '../build.mjs';

function fixture(t) {
  const dir = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-site-'));
  t.after(() => fs.rmSync(dir, { recursive: true, force: true }));
  const code = 'def one := 1\n\n theorem same : one = 1 := rfl\n';
  fs.writeFileSync(path.join(dir, 'A.lean'), code);
  fs.writeFileSync(path.join(dir, 'manuscript.json'), JSON.stringify({ code_files: [{ path: 'A.lean', sha256: createHash('sha256').update(code).digest('hex') }] }));
  return { dir, details: '<!-- lean-line A.lean:1 --> **L1** Defines one.\n<!-- lean-line A.lean:3 --> **L3** Proves the definition by reflexivity.\n' };
}
test('paired reader preserves actual code, line numbers and supplied explanations', t => {
  const { dir, details } = fixture(t);
  const [file] = extractLines(dir, details);
  assert.deepEqual(file.lines.map(x => x.number), [1, 3]);
  assert.equal(file.lines[1].code, ' theorem same : one = 1 := rfl');
  assert.equal(file.lines[1].explanation, 'Proves the definition by reflexivity.');
});
test('missing, duplicated and stale explanations cannot produce a complete-looking page', t => {
  const { dir, details } = fixture(t);
  assert.throws(() => extractLines(dir, details.split('\n')[0]), /Missing line/);
  assert.throws(() => extractLines(dir, details + details), /Duplicate line/);
  fs.appendFileSync(path.join(dir, 'A.lean'), '-- changed\n');
  assert.throws(() => extractLines(dir, details), /identity mismatch/);
});
test('private or escaped code references are rejected before reading', t => {
  const { dir, details } = fixture(t);
  for (const file of ['../A.lean', '.local/A.lean']) {
    fs.writeFileSync(path.join(dir, 'manuscript.json'), JSON.stringify({ code_files: [{ path: file }] }));
    assert.throws(() => extractLines(dir, details), /Nonpublic code path/);
  }
});
