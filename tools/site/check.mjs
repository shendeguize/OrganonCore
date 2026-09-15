import fs from 'node:fs';
import path from 'node:path';
import { build } from './build.mjs';

const index = process.argv.indexOf('--repo');
const repo = path.resolve(index < 0 ? process.cwd() : process.argv[index + 1]);
if (!process.argv.includes('--built')) build(repo);
const config = JSON.parse(fs.readFileSync(path.join(repo, 'site/site.json')));
const root = path.join(repo, 'dist/site');
const base = `/${config.repository}/`;
const walk = dir => fs.readdirSync(dir, { withFileTypes: true }).flatMap(e => e.isDirectory() ? walk(path.join(dir, e.name)) : [path.join(dir, e.name)]);
const pages = walk(root).filter(f => f.endsWith('.html'));
const contents = new Map(pages.map(file => [file, fs.readFileSync(file, 'utf8')]));
const anchors = new Map([...contents].map(([file, text]) => [file, new Set([...text.matchAll(/id="([^"<>]+)"/g)].map(m => m[1]))]));
const failures = [];
let localLinks = 0;
for (const file of pages) {
  const text = contents.get(file);
  const relative = path.relative(root, file).replaceAll(path.sep, '/');
  if (relative === '404.html') continue;
  const peer = relative.startsWith('zh/') ? relative.slice(3) : `zh/${relative}`;
  if (!fs.existsSync(path.join(root, peer))) failures.push(`Missing translation: ${relative}`);
  for (const match of text.matchAll(/(?:href|src)="([^"<>]+)"/g)) {
    const href = match[1].replaceAll('&amp;', '&');
    if (/^(?:https?:|mailto:|data:|javascript:)/.test(href)) continue;
    const url = new URL(href, `https://site.invalid${base}${relative}`);
    if (!url.pathname.startsWith(base)) { failures.push(`Wrong base: ${relative} → ${href}`); continue; }
    const local = decodeURIComponent(url.pathname.slice(base.length));
    const target = [local, `${local}.html`, path.join(local, 'index.html')].map(f => path.join(root, f)).find(f => fs.existsSync(f) && fs.statSync(f).isFile());
    if (!target) { failures.push(`Missing file: ${relative} → ${href}`); continue; }
    localLinks++;
    if (url.hash && target.endsWith('.html')) {
      const anchor = decodeURIComponent(url.hash.slice(1));
      if (!anchors.get(target)?.has(anchor)) failures.push(`Missing anchor: ${relative} → ${href}`);
    }
  }
  if (!text.includes(config.version)) failures.push(`Missing edition: ${relative}`);
}
const stats = JSON.parse(fs.readFileSync(path.join(repo, 'dist/site-inputs.json')));
if (config.philosophyRoot) {
  if (JSON.stringify(stats.languages.en) !== JSON.stringify(stats.languages['zh/'])) failures.push('English/Chinese target and line coverage differ');
  for (const locale of ['', 'zh/']) {
    const page = fs.readFileSync(path.join(root, locale, 'lean.html'), 'utf8');
    for (let n = 1; n <= stats.languages.en.targets; n++) if (!page.includes(`id="t${String(n).padStart(2, '0')}"`)) failures.push(`Missing target ${locale}T${n}`);
    for (const status of ['limited', 'incomplete', 'not_applicable']) if (!page.includes(status)) failures.push(`Lost source state: ${locale}${status}`);
  }
}
const report = { ...stats, htmlPages: pages.length, localLinks, failures: [...new Set(failures)], passed: failures.length === 0 };
fs.writeFileSync(path.join(repo, 'dist/site-check.json'), JSON.stringify(report, null, 2) + '\n');
console.log(JSON.stringify(report, null, 2));
if (failures.length) process.exitCode = 1;
