# Lean implementations and reader editions

Core owns its Lean project, checkers and two skills and works without AgentOrganon. The English [philosophy](../PHILOSOPHY.md) is authoritative. Formal definitions, conditional results, finite examples and reader explanations add no philosophical commitments.

## Current object

| Source | English | Chinese | Run and code |
| --- | --- | --- | --- |
| Philosophy 0.1.4 | [Overview](philosophy/overview.md), [details](philosophy/details.md) | [速览](../zh/lean/philosophy/overview.md), [详解](../zh/lean/philosophy/details.md) | [Manifest](philosophy/manuscript.json), [CoreReader.lean](philosophy/leanified/CoreReader.lean) |

The [frozen catalog](philosophy/targets.json) retains 28 targets, 62 prescribed declarations and all 33 source paragraphs. One supplementary application-variation case brings the checked inventory to 63 declarations. The two empty headings remain structural entries. Targets distinguish specifications, conditional theorems, satisfiability, non-entailment and nonformal boundaries. Completing this catalog does not mean that all source paragraphs are unconditionally true or completely formalized.

The overview follows complete claims and their conditions. The details contain the exact complete Lean sources and explanations of every nonblank line in both languages. [Review records](philosophy/reviews/README.md) distinguish the preserved source-first and code-blind initial assessments from later informed comparisons and explain changed judgments. [Validation](VALIDATION.md) provides actual check evidence and its limits.

The stable `philosophy/` path identifies the current object, not immutable evidence. Source, run, code, actual declaration types, review and manuscript hashes identify the objects checked. [Source context](philosophy/SOURCE-CONTEXT.md) explains the frozen source's original relative links.

## Standalone use

Use [organon-core-leanify-prove](../skills/organon-core-leanify-prove/SKILL.md) for formalization and [organon-core-lean-natural-language](../skills/organon-core-lean-natural-language/SKILL.md) for code explanation and manuscripts. These are agent entrypoints, not installed executables. Preserve a caller-selected baseline under the [selection contract](../skills/references/philosophy-resolution.md); code-only explanation requires no philosophy. Language and `--explain-lines` are skill inputs.

With Node >=22, RTK and installed Lean `v4.33.1`, run from Core:

```sh
rtk proxy node skills/organon-core-leanify-prove/scripts/check.js lean/philosophy --manuscript manuscript.json
rtk proxy node --test tests/*.test.js
```

Omitting `--manuscript manuscript.json` checks the frozen source, build, declarations, cases and dependencies. Manuscript checking additionally verifies current-source bindings, exact excerpts, the frozen target catalog, actual type hashes and reported review/status constraints across both languages and granularities. It does not certify semantic fidelity, translation accuracy, reviewer independence or philosophical correctness. No Mathlib, third-party Node dependency or automatic toolchain installation is used.

New checks write receipts beneath ignored `evidence/checks/`. They identify loaded checker/parser bytes and observed Node/Lean/Lake versions; this does not authenticate or approve an implementation. Historical records without receipts remain records without known execution identity.

## History and maintenance

Formal delivery contains the current philosophy object and its necessary evidence. The preceding philosophy and rationale runs and reader views are archived under ignored `.local/lean-history/` on the maintaining machine. Rationale remains explanatory source text, without a separate current proof assignment. Clones, ordinary copies and current tests do not depend on local archives.

Before replacing a current object, preserve the preceding source/run/code/review/view closure and verify historical replay from a separate copy. Follow [dependency-driven maintenance](../AGENTS.md#lean-evidence-maintenance): review affected objects, disclose reuse and prior exposure, and synchronize both languages. A stable path or unchanged version number does not keep old approval current. Ordinary philosophical assessment does not require Lean.
