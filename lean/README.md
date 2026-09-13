# Lean implementations and reader editions

Core owns the Lean projects, evidence, checkers and two skills. This repository can be copied or cloned on its own; an outer AgentOrganon checkout is not required. The English [philosophy](../PHILOSOPHY.md) remains authoritative. Implementations and skills are revisable support for its study, not additional philosophical commitments.

## Read and inspect

| Source | English | Chinese | Current run and exact Lean code |
| --- | --- | --- | --- |
| Philosophy 0.1.3, all 22 units | [Overview](core-overview.md), [line explanations](core-details.md) | [Overview](../zh/lean/core-overview.md), [line explanations](../zh/lean/core-details.md) | [Run](core-v0.1.3/philosophy/run.json), [CoreReader.lean](core-v0.1.3/philosophy/leanified/CoreReader.lean) |
| Rationale with the Core-tooling design explanation | [Overview](rationale-overview.md), [line explanations](rationale-details.md) | [Overview](../zh/lean/rationale-overview.md), [line explanations](../zh/lean/rationale-details.md) | [Run](core-v0.1.3/rationale-core-tools/run.json), [RationaleReader.lean](core-v0.1.3/rationale-core-tools/leanified/RationaleReader.lean) |

The current 495 navigation entries report 14 limited correspondences, 2 rejected correspondences, 371 incomplete entries and 108 structural or inapplicable entries. Zero complete source claims are reported passed. These counts are not a philosophical quality score. The revised rationale row adds one inventory clause; no proof or fidelity grade was upgraded. All 228 nonblank Lean lines retain English and Chinese explanations.

## Standalone use

Use [organon-core-leanify-prove](../skills/organon-core-leanify-prove/SKILL.md) and [organon-core-lean-natural-language](../skills/organon-core-lean-natural-language/SKILL.md) by their entrypoints. They accept ordinary input as well as Organon text. Preserve the caller's explicit adopted baseline; direct Core invocation uses the existing [selection contract](../skills/references/philosophy-resolution.md). Code-only explanation does not require a philosophical baseline. Language and `--explain-lines` are skill inputs, not a translation executable.

With Node >=22, RTK, and the already installed `leanprover/lean4:v4.33.1` toolchain, run from the Core root:

```sh
rtk proxy node skills/organon-core-leanify-prove/scripts/check.js lean/core-v0.1.3/philosophy --manuscript manuscript.json
rtk proxy node skills/organon-core-leanify-prove/scripts/check.js lean/core-v0.1.3/rationale-core-tools --manuscript manuscript.json
rtk proxy node --test
```

Omit `--manuscript manuscript.json` to check only a run's frozen sources, build, declarations, cases and dependencies. The manuscript option also binds current source/baseline, both languages and both granularities, exact excerpts and reported review objects. It does not certify source fidelity, reviewer independence or translation accuracy. No third-party Node packages or Mathlib are required; the checker does not install or silently change the toolchain.

## Maintenance and history

Follow [Lean evidence maintenance](../AGENTS.md#lean-evidence-maintenance) when actual source, code, assumption or method/tool dependencies change. Current checks and bilingual synchronization are completion conditions; successful proof of every philosophical claim is not. Hash changes matter without a philosophy-version change. Philosophy 0.1.3 is unchanged; the revised rationale has a new source hash and a separate run.

The [preceding rationale run](core-v0.1.3/rationale/run.json) and its [English historical reader](core-v0.1.3/rationale/readers/en/rationale-overview.md) / [Chinese historical reader](core-v0.1.3/rationale/readers/zh/rationale-overview.md) remain available. Its frozen kernel evidence can be replayed with the base command. Its manuscript check deliberately fails as stale against the current rationale. Original source/code/review objects are retained; relocation changes paths and reader hashes, not what historical proofs established. Earlier check results prefixed `before-migration-` are historical, not certification of the new layout.

Current run reviews distinguish initial source assessment, unchanged code backtranslation reused by exact hash, and informed migration comparison. The two rejected support/grounds mappings remain rejected. [Migration validation](VALIDATION.md) reports actual standalone and compatibility results; [preceding validation](history/reader-validation-before-migration.md) retains the earlier task's results. Private iteration records and caches are not part of the portable delivery. No global installation, release workflow or remote publication is implied.
