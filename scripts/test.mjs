import fs from 'node:fs';
import path from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const directory = path.join(root, 'tests');
const files = fs.existsSync(directory) ? fs.readdirSync(directory).filter(name => /\.test\.(?:mjs|js)$/.test(name)).sort().map(name => path.join(directory, name)) : [];
if (!files.length) throw new Error('No owned tests found');
const result = spawnSync(process.execPath, ['--test', '--test-concurrency=2', ...process.argv.slice(2), ...files], { stdio: 'inherit', cwd: root });
if (result.error) throw result.error;
process.exitCode = result.status ?? 1;
