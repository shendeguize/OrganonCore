import test from 'node:test';
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';

const core = fileURLToPath(new URL('../', import.meta.url));

test('Core runtime is usable from an ordinary copy without the outer package', t => {
  const copy = fs.mkdtempSync(path.join(os.tmpdir(), 'organon-core-runtime-'));
  t.after(() => fs.rmSync(copy, { recursive: true, force: true }));
  for (const name of ['package.json', 'PHILOSOPHY.md', 'scripts', 'skills/organon-core-leanify-prove/scripts']) {
    const destination = path.join(copy, name);
    fs.mkdirSync(path.dirname(destination), { recursive: true });
    fs.cpSync(path.join(core, name), destination, { recursive: true });
  }
  const result = spawnSync(process.execPath, ['--input-type=module', '-e', `
    import assert from 'node:assert/strict';
    import fs from 'node:fs';
    import { parseDocument } from './scripts/lib/sections.js';
    import * as frontmatter from './scripts/lib/frontmatter.js';
    import { check, TOOLCHAIN } from './skills/organon-core-leanify-prove/scripts/check.js';
    import { checkManuscript } from './skills/organon-core-leanify-prove/scripts/manuscript.js';
    const source = fs.readFileSync('PHILOSOPHY.md', 'utf8');
    const parsed = parseDocument(source);
    assert.equal(parsed.sections.map(s => s.raw).join(''), parsed.body);
    assert.equal(parsed.sections[0].id, 'organon.preamble');
    assert.deepEqual(parseDocument(source.replaceAll('\\n', '\\r\\n')).sections, parsed.sections);
    assert.throws(() => parseDocument(source.replace('organon.preamble', 'invalid')), /stable ID/);
    assert.equal(frontmatter.coreWarnings, undefined);
    assert.equal(typeof check, 'function');
    assert.equal(typeof checkManuscript, 'function');
    assert.equal(TOOLCHAIN, 'leanprover/lean4:v4.33.1');
  `], { cwd: copy, encoding: 'utf8' });
  assert.equal(result.status, 0, result.stderr);
  const cli = spawnSync(process.execPath, ['skills/organon-core-leanify-prove/scripts/check.js'], { cwd: copy, encoding: 'utf8' });
  assert.equal(cli.status, 2);
  assert.match(cli.stderr, /Usage: node skills\/organon-core-leanify-prove\/scripts\/check.js/);
});
