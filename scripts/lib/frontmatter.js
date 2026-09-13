export const FORMAT_VERSION = '0.1.0';
export const SEMVER = /^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)$/;
export const HASH = /^[a-f0-9]{64}$/;

export function normalize(text) {
  return text.replace(/\r\n?/g, '\n');
}

function scalar(value) {
  if (value.startsWith('"')) {
    let parsed;
    try { parsed = JSON.parse(value); } catch { throw new Error('Invalid quoted frontmatter scalar'); }
    if (typeof parsed !== 'string') throw new Error('Expected a string scalar');
    return parsed;
  }
  if (SEMVER.test(value)) return value;
  throw new Error('Unsupported frontmatter syntax: use X.Y.Z or a JSON double-quoted string');
}

export function validateMetadata(meta, supported = true) {
  for (const key of ['format_version', 'philosophy_version', 'core_version']) {
    if (!SEMVER.test(meta[key] ?? '')) throw new Error(`Invalid ${key}: expected X.Y.Z`);
  }
  if (supported && meta.format_version !== FORMAT_VERSION) {
    throw new Error(`Unsupported format_version ${meta.format_version}; supported: ${FORMAT_VERSION}`);
  }
  if (meta.derived_from !== null) {
    const source = meta.derived_from;
    if (!source || Object.keys(source).sort().join(',') !== 'content_hash,philosophy_version,source_id'
      || typeof source.source_id !== 'string' || !source.source_id.trim()
      || !SEMVER.test(source.philosophy_version ?? '') || !HASH.test(source.content_hash ?? '')) {
      throw new Error('Invalid derived_from: expected source_id, philosophy_version and content_hash');
    }
  }
  return meta;
}

export function parseFrontmatter(raw, { supported = true } = {}) {
  const text = normalize(raw);
  if (!text.startsWith('---\n')) throw new Error('Missing philosophy frontmatter');
  const end = text.indexOf('\n---\n', 4);
  if (end < 0) throw new Error('Unclosed philosophy frontmatter');
  const lines = text.slice(4, end).split('\n');
  const meta = {};
  for (let index = 0; index < lines.length; index++) {
    const match = /^(format_version|philosophy_version|core_version|derived_from):(?: (.*))?$/.exec(lines[index]);
    if (!match) throw new Error(`Unsupported frontmatter field or syntax: ${lines[index]}`);
    const [, key, value] = match;
    if (Object.hasOwn(meta, key)) throw new Error(`Duplicate frontmatter field: ${key}`);
    if (key !== 'derived_from') {
      if (!SEMVER.test(value ?? '')) throw new Error(`Invalid ${key}: use an unquoted X.Y.Z triple`);
      meta[key] = value;
    } else if (value === 'null') {
      meta[key] = null;
    } else if (value === undefined || value === '') {
      const source = {};
      while (index + 1 < lines.length && lines[index + 1].startsWith(' ')) {
        const child = /^  (source_id|philosophy_version|content_hash): (.+)$/.exec(lines[++index]);
        if (!child || Object.hasOwn(source, child[1])) throw new Error('Unsupported or duplicate derived_from field');
        if (!child[2].startsWith('"')) throw new Error('derived_from values must be JSON double-quoted strings');
        source[child[1]] = scalar(child[2]);
      }
      meta[key] = source;
    } else throw new Error('derived_from must be null or an indented source object');
  }
  if (Object.keys(meta).length !== 4) throw new Error('Expected exactly four philosophy frontmatter fields');
  validateMetadata(meta, supported);
  return { metadata: meta, body: text.slice(end + 5) };
}

export function renderFrontmatter(metadata, body) {
  validateMetadata(metadata);
  let header = ['---', ...['format_version', 'philosophy_version', 'core_version'].map(key => `${key}: ${metadata[key]}`)];
  if (metadata.derived_from === null) header.push('derived_from: null');
  else {
    header.push('derived_from:');
    for (const key of ['source_id', 'philosophy_version', 'content_hash']) {
      header.push(`  ${key}: ${JSON.stringify(metadata.derived_from[key])}`);
    }
  }
  return `${header.join('\n')}\n---\n${body}`;
}
