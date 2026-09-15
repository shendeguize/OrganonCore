import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { spawnSync } from 'node:child_process';
import { createHash } from 'node:crypto';
import MarkdownIt from 'markdown-it';
const here = path.dirname(fileURLToPath(import.meta.url));
const md = new MarkdownIt({ html: true });
const read = f => fs.readFileSync(f, 'utf8');
const write = (f, text) => { fs.mkdirSync(path.dirname(f), { recursive: true }); fs.writeFileSync(f, text); };
const html = s => s.replaceAll('&', '&amp;').replaceAll('<', '&lt;').replaceAll('>', '&gt;').replaceAll('"', '&quot;');
const slug = s => s.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/-$/, '');

export function extractLines(run, details) {
  const manifest = JSON.parse(read(path.join(run, 'manuscript.json')));
  const explanations = new Map();
  for (const match of details.matchAll(/<!-- lean-line ([^\n]+):(\d+) -->\s*\*\*L\d+\*\*\s*([^\n]+)/g)) {
    const key = `${match[1]}:${match[2]}`;
    if (explanations.has(key)) throw new Error(`Duplicate line explanation: ${key}`);
    explanations.set(key, match[3]);
  }
  return manifest.code_files.map(file => {
    const relative = path.relative(run, path.resolve(run, file.path));
    if (relative.startsWith('..') || path.isAbsolute(relative) || relative.split(path.sep).includes('.local')) throw new Error(`Nonpublic code path: ${file.path}`);
    const codeText = read(path.join(run, file.path));
    if (createHash('sha256').update(codeText).digest('hex') !== file.sha256) throw new Error(`Code identity mismatch: ${file.path}`);
    const lines = codeText.split('\n').flatMap((code, i) => {
      if (!code.trim()) return [];
      const key = `${file.path}:${i + 1}`;
      if (!explanations.has(key)) throw new Error(`Missing line explanation: ${key}`);
      return [{ number: i + 1, code, explanation: explanations.get(key), anchor: `line-code-${slug(file.path)}-${i + 1}` }];
    });
    return { path: file.path, slug: slug(file.path), lines };
  });
}

function rewriteLinks(text, sourceFile, repo, name, locale, base, ref) {
  return text.replace(/\]\(([^\s)]+)([^)]*)\)/g, (whole, href, suffix) => {
    if (/^(https?:|mailto:|#|\/)/.test(href)) return whole;
    const [file, anchor] = href.split('#');
    const resolved = path.resolve(path.dirname(sourceFile), file);
    const relative = path.relative(repo, resolved).split(path.sep).join('/');
    if (file.endsWith('PHILOSOPHY.md')) return `](/${locale}philosophy${anchor ? '#' + anchor : ''}${suffix})`;
    if (file.endsWith('rationale/README.md')) return `](/${locale}rationale${anchor ? '#' + anchor : ''}${suffix})`;
    return `](https://github.com/shendeguize/${name}/blob/${ref}/${relative}${anchor ? '#' + anchor : ''}${suffix})`;
  });
}

export function prepare(repo) {
  repo = path.resolve(repo);
  const config = JSON.parse(read(path.join(repo, 'site/site.json')));
  if (config.themeVersion !== JSON.parse(read(path.join(here, 'package.json'))).version) throw new Error('Shared site theme version mismatch');
  const source = path.join(repo, 'dist/site-source');
  fs.rmSync(source, { recursive: true, force: true });
  fs.mkdirSync(source, { recursive: true });
  fs.cpSync(path.join(repo, 'site'), source, { recursive: true });
  fs.rmSync(path.join(source, 'site.json'));
  fs.cpSync(path.join(here, 'theme'), path.join(source, '.vitepress/theme'), { recursive: true });
  fs.symlinkSync(path.join(here, 'node_modules'), path.join(source, 'node_modules'), process.platform === 'win32' ? 'junction' : 'dir');
  const base = `/${config.repository}/`;
  const role = config.repository;
  const nav = lang => {
    const zh = lang === 'zh/';
    return [{ text: zh ? '快速开始' : 'Quick start', link: `/${lang}quick-start` }, { text: zh ? '理解 Organon' : 'Understand', link: `/${lang}understand` }, { text: zh ? '哲学' : 'Philosophy', link: `/${lang}philosophy` }, { text: zh ? 'Lean 对照' : 'Lean reader', link: `/${lang}lean` }];
  };
  const vp = {
    title: role, description: 'Ground agent judgments and improvements.', base,
    cleanUrls: true, outDir: path.join(repo, 'dist/site'), cacheDir: path.join(repo, 'dist/site-cache'),
    appearance: true, lastUpdated: false,
    locales: { root: { label: 'English', lang: 'en', themeConfig: { nav: nav('') } }, zh: { label: '简体中文', lang: 'zh-Hans', themeConfig: { nav: nav('zh/'), outlineTitle: '本页内容', returnToTopLabel: '返回顶部', sidebarMenuLabel: '目录', darkModeSwitchLabel: '外观' } } },
    themeConfig: { releaseVersion: config.version, preview: process.env.ORGANON_SITE_PREVIEW === 'true', outline: [2, 3], socialLinks: [{ icon: 'github', link: `https://github.com/shendeguize/${role}` }], footer: { message: 'Philosophy · methods · grounds / 哲学 · 方法 · 根据', copyright: 'MIT · Organon' } },
    vite: { resolve: { preserveSymlinks: true } }
  };
  write(path.join(source, '.vitepress/config.mjs'), `export default ${JSON.stringify(vp, null, 2)};\n`);
  const stats = { repository: role, version: config.version, languages: {}, publicInputsOnly: true };
  for (const locale of ['', 'zh/']) {
    const zh = !!locale;
    for (const [document, page] of [['getting-started.md', 'quick-start.md'], ['understanding.md', 'understand.md']]) {
      const prose = read(path.join(repo, locale, 'docs', document));
      write(path.join(source, locale, page), prose.replaceAll(`https://shendeguize.github.io/${role}/`, '/'));
    }
    if (!config.philosophyRoot) continue;
    const owner = path.resolve(repo, config.philosophyRoot);
    const ownerRelative = path.relative(repo, owner);
    if (ownerRelative.startsWith('..') || ownerRelative.split(path.sep).includes('.local')) throw new Error('Philosophy source must belong to this public repository');
    const root = path.join(owner, locale);
    const philosophy = path.join(root, 'PHILOSOPHY.md');
    const sourceVersion = read(philosophy).match(/^philosophy_version: (.+)$/m)?.[1];
    const coreVersion = read(philosophy).match(/^core_version: (.+)$/m)?.[1];
    let body = read(philosophy).replace(/^---\n[\s\S]*?\n---\n/, '');
    body = body.replace(/<!-- organon:id ([^ ]+) -->/g, '<a id="$1"></a>');
    write(path.join(source, locale, 'philosophy.md'), rewriteLinks(body, philosophy, repo, role, locale, base, `v${config.version}`));
    const rationale = path.join(root, 'rationale/README.md');
    if (!fs.existsSync(rationale)) throw new Error(`Rationale migration required: ${rationale}`);
    write(path.join(source, locale, 'rationale.md'), rewriteLinks(read(rationale), rationale, repo, role, locale, base, `v${config.version}`));
    const run = path.join(owner, 'lean/philosophy');
    const reader = path.join(root, 'lean/philosophy');
    const overview = read(path.join(reader, 'overview.md'));
    const details = read(path.join(reader, 'details.md'));
    const targets = JSON.parse(read(path.join(run, 'targets.json'))).targets;
    const files = extractLines(run, details);
    const rewrite = text => rewriteLinks(text, path.join(reader, 'details.md'), repo, role, locale, base, `v${config.version}`)
      .replace(/\]\(#(line-code-[^)]+)\)/g, (whole, anchor) => {
        const f = files.find(file => anchor.startsWith(`line-code-${file.slug}-`));
        if (!f) throw new Error(`Unknown code anchor: ${anchor}`);
        return `](/${locale}lines/${f.slug}#${anchor})`;
      })
      .replace(/https:\/\/github.com\/shendeguize\/[^)]+\/blob\/[^/]+\/[^)]+\/(details|overview)\.md(#.*?)?(?=\))/g, (_, granularity, hash = '') => `/${locale}${granularity === 'details' ? 'lean-detail' : 'lean'}${hash}`);
    const sourceNote = zh ? `> 哲学 ${sourceVersion} · 已考虑的 Core ${coreVersion}。阅读视图来自本仓库公开的目标清单、读者稿和 Lean 文件；页面布局不改变其中的判定。` : `> Philosophy ${sourceVersion} · considered Core ${coreVersion}. This view uses the repository’s public target catalog, readers and Lean files. Presentation does not change their judgments.`;
    const lineLinks = files.map(f => `- [${f.path}](/${locale}lines/${f.slug})`).join('\n');
    write(path.join(source, locale, 'lean.md'), `${sourceNote}\n\n${rewrite(overview)}\n\n## ${zh ? '逐行对照' : 'Code and explanation'}\n\n${lineLinks}\n`);
    const lineStart = details.search(/<!-- lean-code /);
    const sectionStart = lineStart < 0 ? details.length : details.lastIndexOf('\n## ', lineStart);
    write(path.join(source, locale, 'lean-detail.md'), `${sourceNote}\n\n${rewrite(details.slice(0, sectionStart))}\n\n## ${zh ? '逐行对照' : 'Code and explanation'}\n\n${lineLinks}\n`);
    for (const file of files) {
      const rows = file.lines.map(line => `<div class="line-pair" id="${line.anchor}"><pre><a class="line-number" href="#${line.anchor}">L${line.number}</a><code>${html(line.code)}</code></pre><div class="explanation">${md.render(line.explanation)}</div></div>`).join('\n');
      write(path.join(source, locale, `lines/${file.slug}.md`), `---\noutline: false\n---\n# ${html(file.path)}\n\n[${zh ? '返回主张速览' : 'Back to claims'}](/${locale}lean) · [${zh ? '声明与证明' : 'Declarations and proofs'}](/${locale}lean-detail)\n\n${sourceNote}\n\n<details class="code-reader">\n<summary>${zh ? '展开 Lean 与逐行解读' : 'Expand Lean and line explanations'} · ${file.lines.length} ${zh ? '行' : 'lines'}</summary>\n<div class="line-header"><span>Lean</span><span>${zh ? '逐行解读' : 'Line explanation'}</span></div>\n<div v-pre>\n${rows}\n</div>\n</details>\n`);
    }
    stats.languages[locale || 'en'] = { targets: targets.length, files: files.length, nonblankLines: files.reduce((n, f) => n + f.lines.length, 0) };
  }
  write(path.join(repo, 'dist/site-inputs.json'), JSON.stringify(stats, null, 2) + '\n');
  return { source, stats };
}

export function build(repo) {
  const { source, stats } = prepare(repo);
  const result = spawnSync(process.execPath, [path.join(here, 'node_modules/vitepress/bin/vitepress.js'), 'build', source], { stdio: 'inherit' });
  if (result.status !== 0) throw new Error('VitePress build failed');
  return stats;
}
if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
  const index = process.argv.indexOf('--repo');
  const repo = index < 0 ? process.cwd() : process.argv[index + 1];
  console.log(JSON.stringify(process.argv.includes('--prepare') ? prepare(repo).stats : build(repo), null, 2));
}
