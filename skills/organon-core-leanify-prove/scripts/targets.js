import fs from 'node:fs';
import path from 'node:path';
import { isDeepStrictEqual } from 'node:util';
import { hash } from '../../../scripts/lib/sections.js';
import { HASH } from '../../../scripts/lib/frontmatter.js';

const assert = (condition, message) => { if (!condition) throw new Error(message); };
const text = value => typeof value === 'string' && value.trim().length > 0;
const ID = /^[A-Za-z0-9][A-Za-z0-9_.-]*$/;
const sourceKey = source => `${source?.unit}#${source?.clause}`;
const sameSet = (actual, expected) => Array.isArray(actual) && new Set(actual).size === actual.length && actual.length === expected.length && expected.every(x => actual.includes(x));
export const PROOF_KINDS = ['theorem', 'satisfiability', 'nonentailment'];

// The catalog records intended semantics. This check only validates its bindings and inventory.
export function validateProofTargets(manifest, catalog) {
  assert(catalog?.schema_version === 1, 'Unsupported proof target schema_version');
  assert(catalog.source_sha256 === manifest.source.sha256, 'Proof target source hash drift');
  assert(Array.isArray(catalog.targets) && catalog.targets.length > 0, 'Missing proof targets');
  const clauses = new Map(manifest.units.flatMap(unit => unit.clauses.map(clause => [`${unit.id}#${clause.id}`, clause])));
  const declarations = new Map(manifest.declarations.map(declaration => [declaration.name, declaration]));
  const ids = new Set(), covered = new Set();
  for (const target of catalog.targets) {
    assert(ID.test(target.id ?? '') && !ids.has(target.id), `Invalid or duplicate proof target: ${target.id}`);
    ids.add(target.id);
    assert(['specification', ...PROOF_KINDS, 'boundary'].includes(target.kind), `Invalid proof target kind: ${target.id}`);
    assert(text(target.statement) && text(target.acceptance), `Missing proof target statement or acceptance: ${target.id}`);
    assert(Array.isArray(target.premises) && target.premises.every(text), `Invalid proof target premises: ${target.id}`);
    assert(Array.isArray(target.sources) && target.sources.length > 0, `Missing proof target sources: ${target.id}`);
    const sources = target.sources.map(sourceKey);
    assert(new Set(sources).size === sources.length && sources.every(key => clauses.has(key)), `Unknown or duplicate proof target source: ${target.id}`);
    sources.forEach(key => covered.add(key));
    assert(Array.isArray(target.required_declarations), `Missing proof target declarations: ${target.id}`);
    const names = target.required_declarations.map(declaration => declaration.name);
    assert(new Set(names).size === names.length, `Duplicate proof target declaration: ${target.id}`);
    for (const required of target.required_declarations) {
      const actual = declarations.get(required.name);
      assert(actual && required.kind === actual.kind, `Unknown or mismatched proof target declaration: ${target.id}: ${required.name}`);
      assert(sources.every(key => actual.sources.some(source => sourceKey(source) === key)), `Proof target declaration omits source: ${target.id}: ${required.name}`);
    }
    assert(Array.isArray(target.required_cases) && new Set(target.required_cases).size === target.required_cases.length, `Invalid proof target case inventory: ${target.id}`);
    for (const name of target.required_cases) {
      assert(names.includes(name) && declarations.get(name)?.kind === 'case' && manifest.cases.some(entry => entry.declaration === name), `Unknown or mismatched proof target case: ${target.id}: ${name}`);
    }
    if (target.kind === 'boundary') assert(names.length === 0 && target.required_cases.length === 0, `Boundary target cannot claim declarations: ${target.id}`);
    else if (target.kind === 'specification') assert(target.required_declarations.some(x => x.kind === 'definition'), `Specification target requires a definition: ${target.id}`);
    else if (target.kind === 'theorem') assert(target.required_declarations.some(x => x.kind === 'theorem'), `Theorem target requires a theorem, not only definitions or cases: ${target.id}`);
    else assert(target.required_declarations.some(x => ['theorem', 'case'].includes(x.kind)), `Proof target requires a theorem or case: ${target.id}`);
  }
  for (const [key, clause] of clauses) assert(clause.declarations.length === 0 || covered.has(key), `Mapped clause lacks a proof target: ${key}`);
  return catalog;
}

export function loadProofTargets(run, manifest) {
  const reference = manifest.proof_targets;
  if (reference === undefined) return null;
  assert(reference && text(reference.path) && !path.isAbsolute(reference.path) && HASH.test(reference.sha256 ?? ''), 'Invalid proof target binding');
  const filename = path.resolve(run, reference.path), base = fs.realpathSync(run);
  assert(filename.startsWith(`${path.resolve(run)}${path.sep}`), 'Proof target path escapes run');
  assert(fs.realpathSync(filename).startsWith(`${base}${path.sep}`) && fs.statSync(filename).isFile(), 'Proof target file escapes run or is not a file');
  const raw = fs.readFileSync(filename);
  assert(hash(raw) === reference.sha256, 'Proof target hash drift');
  return validateProofTargets(manifest, JSON.parse(raw));
}

// Type hashes are derived from Lean's actual complete Expr types, never the catalog statement.
export function checkTargetReview(catalog, reference, review, kernel) {
  assert(review && review.proof_targets_sha256 === reference.sha256, 'Proof target review binding mismatch');
  assert(Array.isArray(review.target_entries) && sameSet(review.target_entries.map(entry => entry.id), catalog.targets.map(target => target.id)), 'Proof target review must cover every target exactly once');
  const entries = catalog.targets.map(target => {
    const entry = review.target_entries.find(item => item.id === target.id);
    const names = target.required_declarations.map(declaration => declaration.name);
    assert(['accepted', 'rejected', 'pending'].includes(entry.status) && text(entry.reason), `Invalid proof target review status or reason: ${target.id}`);
    assert(sameSet(entry.declarations, names), `Proof target review declaration mismatch: ${target.id}`);
    const actual = Object.fromEntries(names.map(name => {
      const type = kernel.declaration_types?.[name];
      assert(type && typeof type.type === 'string' && HASH.test(type.sha256 ?? '') && hash(type.type) === type.sha256, `Missing actual declaration type: ${name}`);
      return [name, type.sha256];
    }));
    assert(isDeepStrictEqual(entry.type_hashes, actual), `Proof target review type hash mismatch: ${target.id}`);
    return { id: target.id, kind: target.kind, reported_status: entry.status, declarations: names };
  });
  const initial = review.initial_records ?? [];
  const complete = kernel.passed && initial.some(record => record.role === 'source_initial') && initial.some(record => record.role === 'code_blind') && entries.every(entry => entry.reported_status === 'accepted' && entry.declarations.every(name => kernel.checked.includes(name)));
  return { sha256: reference.sha256, complete, semantic_status: 'not_evaluated', entries };
}

// Catalog acceptance and source presentation must describe the same current evidence.
// A reviewed definition may remain source-incomplete without becoming a proof.
export function reconcileTargetSources(catalog, result, sourceEntries, kernel) {
  const sources = new Map(sourceEntries.map(entry => [`${entry.unit}#${entry.clause}`, entry]));
  const reviews = new Map(result.entries.map(entry => [entry.id, entry]));
  const accepted = target => reviews.get(target.id).reported_status === 'accepted';
  const contextOnly = entry => entry?.context_only === true && entry.fidelity === 'not_applicable' && entry.status === 'not_applicable';
  const substantiveSources = target => target.sources.filter(source => !contextOnly(sources.get(sourceKey(source))));
  const checkedProof = target => PROOF_KINDS.includes(target.kind) && accepted(target) && kernel.passed && target.required_declarations.every(declaration => kernel.checked.includes(declaration.name));
  for (const target of catalog.targets) if (accepted(target)) {
    if (target.kind !== 'boundary') assert(substantiveSources(target).length > 0, `Accepted formal target has only context citations: ${target.id}`);
    for (const source of target.sources) {
      const entry = sources.get(sourceKey(source));
      assert(entry && (contextOnly(entry) || ['full', 'partial'].includes(entry.fidelity) || (target.kind === 'boundary' && entry.fidelity === 'not_applicable')), `Accepted proof target lacks reviewed source correspondence: ${target.id}: ${sourceKey(source)}`);
    }
  }
  for (const [key, entry] of sources) if (['passed', 'limited'].includes(entry.status)) {
    const related = catalog.targets.filter(target => target.sources.some(source => sourceKey(source) === key));
    assert(related.some(checkedProof), `Source proof status lacks an accepted checked proof target: ${entry.id}`);
    if (entry.status === 'passed') assert(related.filter(target => target.kind !== 'boundary').every(accepted), `Passed source has an unaccepted formal target: ${entry.id}`);
  }
  const proofSourcesComplete = catalog.targets.filter(target => PROOF_KINDS.includes(target.kind)).every(target => substantiveSources(target).length > 0 && substantiveSources(target).every(source => ['passed', 'limited'].includes(sources.get(sourceKey(source))?.status)));
  return { ...result, complete: result.complete && proofSourcesComplete };
}
