import fs from 'node:fs';
import http from 'node:http';
import path from 'node:path';
import { chromium } from '@playwright/test';
import assert from 'node:assert/strict';

const option = (name, fallback) => { const i = process.argv.indexOf(name); return i < 0 ? fallback : process.argv[i + 1]; };
const repo = path.resolve(option('--repo', process.cwd()));
const output = path.resolve(option('--output', path.join(repo, 'dist/site-visual')));
const config = JSON.parse(fs.readFileSync(path.join(repo, 'site/site.json')));
const root = path.join(repo, 'dist/site');
const base = `/${config.repository}/`;
fs.mkdirSync(output, { recursive: true });
const mime = { '.html': 'text/html', '.js': 'text/javascript', '.css': 'text/css', '.svg': 'image/svg+xml', '.json': 'application/json', '.woff2': 'font/woff2' };
const server = http.createServer((request, response) => {
  const url = new URL(request.url, 'http://localhost');
  if (!url.pathname.startsWith(base)) { response.writeHead(404).end(); return; }
  const local = decodeURIComponent(url.pathname.slice(base.length));
  const candidates = [local, `${local}.html`, path.join(local, 'index.html')].map(f => path.resolve(root, f));
  const file = candidates.find(f => f.startsWith(root + path.sep) && fs.existsSync(f) && fs.statSync(f).isFile());
  if (!file) { response.writeHead(404).end(); return; }
  response.setHeader('Content-Type', mime[path.extname(file)] ?? 'application/octet-stream');
  response.end(fs.readFileSync(file));
});
await new Promise(resolve => server.listen(0, '127.0.0.1', resolve));
const origin = `http://127.0.0.1:${server.address().port}`;
let browser;
const results = [];
try {
  browser = await chromium.launch({ executablePath: option('--browser', undefined), headless: true });
  for (const [size, viewport] of [['desktop', { width: 1440, height: 1050 }], ['mobile', { width: 390, height: 844 }]]) {
    const context = await browser.newContext({ viewport, reducedMotion: 'reduce' });
    context.setDefaultTimeout(15000);
    context.setDefaultNavigationTimeout(15000);
    const page = await context.newPage();
    const accessibility = await context.newCDPSession(page);
    const errors = [];
    page.on('pageerror', error => errors.push(error.message));
    for (const locale of ['', 'zh/']) {
      await page.goto(origin + base + locale, { waitUntil: 'networkidle' });
      assert.equal(await page.locator('.language-switch').isVisible(), true, `${size}: language switch must be visible`);
      assert.equal(await page.evaluate(() => document.documentElement.scrollWidth > innerWidth + 1), false, `${size}: homepage overflow`);
      // Inspect Chromium's native accessibility tree, not only DOM role locators.
      const ax = await accessibility.send('Accessibility.getFullAXTree');
      fs.writeFileSync(path.join(output, `${size}-${locale ? 'zh' : 'en'}-accessibility.json`), JSON.stringify(ax, null, 2));
      const switchName = locale ? 'Read this page in English' : '用中文阅读本页';
      const axButton = ax.nodes.find(node => !node.ignored && node.role?.value === 'button' && node.name?.value === switchName);
      assert.ok(axButton, `${size}: native accessibility tree must expose a separate language button`);
      assert.ok(ax.nodes.some(node => !node.ignored && node.role?.value === 'link' && node.name?.value === config.repository), `${size}: brand link has its own accessible name`);
      const nodes = new Map(ax.nodes.map(node => [node.nodeId, node]));
      for (let parent = nodes.get(axButton.parentId); parent; parent = nodes.get(parent.parentId)) assert.notEqual(parent.role?.value, 'link', 'language button must not be nested in a native link');
      assert.equal(await page.locator('.language-switch').evaluate(button => Boolean(button.closest('a'))), false, 'no interactive anchor/button nesting');
      await page.screenshot({ path: path.join(output, `${size}-${locale ? 'zh' : 'en'}-home.png`), fullPage: true });
      results.push({ size, language: locale || 'en', page: 'home', passed: true });
    }
    const target = config.philosophyRoot ? 'lean' : 'philosophy';
    console.log(`${size}: reading ${target}`);
    await page.goto(origin + base + target, { waitUntil: 'networkidle' });
    let reachedLanguage = false;
    for (let tab = 0; tab < 20; tab++) {
      await page.keyboard.press('Tab');
      if (await page.locator('.language-switch').evaluate(button => button === document.activeElement)) { reachedLanguage = true; break; }
    }
    assert.ok(reachedLanguage, 'language button must be reachable in sequential keyboard navigation');
    await page.keyboard.press('Enter');
    console.log(`${size}: switched to ${page.url()}`);
    await page.waitForURL(new RegExp(`${base}zh/${target.replace('#', '.*#')}`));
    assert.equal(await page.evaluate(() => localStorage.getItem('organon-language')), 'zh');
    if (config.philosophyRoot) {
      // Hash navigation deliberately begins keyboard focus near the target; test
      // anchor retention separately from sequential navigation at document start.
      await page.goto(origin + base + 'lean#t23', { waitUntil: 'networkidle' });
      await page.locator('.language-switch').click();
      await page.waitForURL(origin + base + 'zh/lean#t23');
      assert.equal(new URL(page.url()).hash, '#t23');
    }
    await page.goto(origin + base, { waitUntil: 'networkidle' });
    await page.waitForURL(origin + base + 'zh/');
    results.push({ size, check: 'keyboard language switch, target retention and preference', passed: true });
    if (config.philosophyRoot) {
      const files = fs.readdirSync(path.join(root, 'lines'));
      const file = files.find(name => name.includes('integration')) ?? files[0];
      const markup = fs.readFileSync(path.join(root, 'lines', file), 'utf8');
      const id = markup.match(/class="line-pair" id="([^"]+)"/)[1];
      await page.goto(origin + base + 'lines/' + file.replace(/\.html$/, ''), { waitUntil: 'networkidle' });
      assert.equal(await page.locator('.code-reader').getAttribute('open'), null);
      await page.locator('.code-reader summary').click();
      assert.equal(await page.locator('.line-pair').first().isVisible(), true);
      await page.goto(origin + base + 'lines/' + file.replace(/\.html$/, '') + '#' + id, { waitUntil: 'networkidle' });
      await page.waitForFunction(anchor => { const top = document.getElementById(anchor)?.getBoundingClientRect().top; return top >= 0 && top < 200; }, id);
      assert.equal(await page.locator('.line-pair').first().isVisible(), true);
      assert.equal(await page.evaluate(() => document.documentElement.scrollWidth > innerWidth + 1), false, `${size}: line reader overflow`);
      await page.screenshot({ path: path.join(output, `${size}-en-lines.png`) });
      await page.locator('.language-switch').click();
      await page.waitForURL(new RegExp(`${base}zh/lines/`));
      assert.equal(new URL(page.url()).hash, '#' + id);
      await page.waitForFunction(anchor => { const top = document.getElementById(anchor)?.getBoundingClientRect().top; return top >= 0 && top < 200; }, id);
      await page.screenshot({ path: path.join(output, `${size}-zh-lines.png`) });
      results.push({ size, check: 'paired source lines and translated line anchor', passed: true });
    }
    assert.deepEqual(errors, [], 'browser runtime errors');
    await context.close();
  }
  fs.writeFileSync(path.join(output, 'report.json'), JSON.stringify({ repository: config.repository, results, passed: true }, null, 2));
  console.log(JSON.stringify({ repository: config.repository, screenshots: output, results, passed: true }, null, 2));
} finally {
  await browser?.close();
  await new Promise(resolve => server.close(resolve));
}
