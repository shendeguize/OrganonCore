import { createHash } from 'node:crypto';
import { normalize, parseFrontmatter } from './frontmatter.js';

export const ID = /^(?:extensions|[a-z][a-z0-9-]*(?:\.[a-z][a-z0-9-]*)+)$/;
export const hash = text => createHash('sha256').update(text).digest('hex');

export function parseDocument(raw) {
  const { metadata, body } = parseFrontmatter(raw);
  const lines = body.match(/[^\n]*\n|[^\n]+$/g) ?? [];
  const heads = [];
  let fence = null;
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i].replace(/\n$/, '');
    if (fence) {
      if (new RegExp(`^ {0,3}${fence.char}{${fence.length},}\\s*$`).test(line)) fence = null;
      continue;
    }
    const opening = /^ {0,3}(`{3,}|~{3,})(.*)$/.exec(line);
    if (opening) {
      if (opening[1][0] === '`' && opening[2].includes('`')) throw new Error('Backtick fence info must not contain backticks');
      fence = { char: opening[1][0], length: opening[1].length }; continue;
    }
    const heading = /^(#{1,6}) (.+)$/.exec(line);
    if (heading) {
      const marker = /^<!-- organon:id (.+) -->\n?$/.exec(lines[i + 1] ?? '');
      if (!marker || !ID.test(marker[1])) throw new Error(`Missing or invalid stable ID after heading: ${line}`);
      heads.push({ start: i, id: marker[1], level: heading[1].length, title: heading[2] });
      i++;
    } else if (/organon:id/.test(line) && /^\s*<!--/.test(line)) {
      throw new Error('Stable ID must immediately follow its ATX heading');
    } else if (/^ {0,3}#{1,6}(?:[ \t]|$)/.test(line) || (/^(?:=+|-+)\s*$/.test(line) && i > 0 && lines[i - 1].trim())) {
      throw new Error('Use unindented ATX headings with stable IDs; setext headings are unsupported');
    }
  }
  if (!heads.length || heads[0].level !== 1 || heads[0].id !== 'organon.preamble' || heads[0].start !== 0) {
    throw new Error('Philosophy must begin with an H1 preamble unit');
  }
  if (heads.slice(1).some(section => section.level === 1)) throw new Error('Only the preamble may use H1');
  const seen = new Set();
  const stack = [];
  const sections = heads.map((head, index) => {
    if (seen.has(head.id)) throw new Error(`Duplicate stable ID: ${head.id}`);
    seen.add(head.id);
    while (stack.length && stack.at(-1).level >= head.level) stack.pop();
    const parent = stack.at(-1)?.id ?? null;
    stack.push(head);
    const end = heads[index + 1]?.start ?? lines.length;
    const content = lines.slice(head.start + 2, end).join('');
    return { id: head.id, title: head.title, level: head.level, parent, body: content,
      hash: hash(normalize(content)), raw: lines.slice(head.start, end).join('') };
  });
  const structure = sections.map(({ id, title, level, parent }) => ({ id, title, level, parent }));
  return { metadata, body, sections, structure, structure_hash: hash(JSON.stringify(structure)), content_hash: hash(raw) };
}

export function withoutExtensions(document) {
  const start = document.sections.findIndex(section => section.id === 'extensions');
  if (start < 0) throw new Error('No Extensions marker; specify the export scope before using --core-only');
  const level = document.sections[start].level;
  if (level === 1) throw new Error('Extensions cannot be the document preamble');
  let end = start + 1;
  while (end < document.sections.length && document.sections[end].level > level) end++;
  return document.sections.filter((_, index) => index < start || index >= end).map(section => section.raw).join('');
}
