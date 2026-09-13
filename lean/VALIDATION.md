# Core Lean migration validation

Actual local validation dated 2026-09-13. Core now contains the implementation and can run without the outer repository. This record describes migration and evidence integrity, not completion of philosophical formalization. English and Chinese philosophy texts remain byte-identical at version 0.1.3; the rationale implementation row has a new source object.

## Hash-baseline repair follow-up

After the user requested repair, the two fixed expectations in the outer management test were updated to the independently verified, previously approved bilingual Core 0.1.3 bodies. The source text, normalization algorithm and remaining assertions were unchanged. [Independent review](validation/hash-baseline-followup/independent-review.md) also checked that subsequent body mutations still fail the fixed-hash guard.

Fresh full runs now pass: **Core 53/53** ([output](validation/hash-baseline-followup/core-tests.json)) and **outer 87/87** ([output](validation/hash-baseline-followup/outer-tests.json)), with zero skips. Both current Lean manuscript checks also pass. The migration-time failure and its raw outputs below are retained as historical evidence; they are not the current test status.

## Migration-time results before the repair

| Check | Actual result | Evidence |
| --- | --- | --- |
| Core `rtk proxy node --test` | 53 passed, 0 failed, 0 skipped | [Full output](validation/migration/final-core-tests.json) |
| Outer `rtk proxy node --test` | 86 passed, 1 failed, 0 skipped | [Full output](validation/migration/final-outer-tests.json) |
| Current philosophy and rationale runs, Core and outer entrypoints | Build/audit/manuscript pass; results identical apart from generated evidence locations | [Entrypoint results](validation/migration/final-entrypoint-results.json) |
| Core-only ordinary copy, both current manuscripts | Pass, current source and baseline; 18/10 declarations, 123/372 entries | [Philosophy](validation/migration/philosophy-current-standalone.json), [rationale](validation/migration/rationale-current-standalone.json) |
| Core-only ordinary copy, all Core tests | 53 passed, 0 failed, 0 skipped | [Full output](validation/migration/node-tests-standalone.json) |
| Historical rationale in ordinary copy | Frozen kernel passes; current manuscript is rejected as stale while kernel remains valid | [Base](validation/migration/rationale-history-base-standalone.json), [currentness](validation/migration/rationale-history-current-standalone.json) |
| Both source-format checks | Pass, 22 matching units | [English](validation/migration/final-source-en.json), [Chinese](validation/migration/final-source-zh.json) |
| Four Core/outer skill formats | Pass | [Core proof](validation/migration/final-organon-core-leanify-prove-format.json), [Core translation](validation/migration/final-organon-core-lean-natural-language-format.json), [outer proof](validation/migration/final-organon-leanify-prove-format.json), [outer translation](validation/migration/final-organon-lean-natural-language-format.json) |
| Independent source, method, wording and bilingual difference review | No unresolved actionable finding within reviewed scope; initial and informed stages distinguished | [Final review](validation/migration/diff-review.md), [initial source review](core-v0.1.3/rationale-core-tools/reviews/migration-source-initial.md), [informed comparison](core-v0.1.3/rationale-core-tools/reviews/migration-source-comparison.md) |

At migration time, the outer suite was **not green**. Its then-unchanged management test expected an older philosophy-body hash; the same failure was reproduced before this migration and is retained in the [preceding validation](history/reader-validation-before-migration.md). No test expectation or philosophy text was changed during that migration stage; the justified follow-up above corrects only the stale expectations.

The [recorded parser/CLI comparison](validation/migration/parser-cli-parity.txt) shows the shared parser was compared with the frozen original on 22 variants, including malformed input, CR/CRLF, whitespace, direct bodies, structure, rendering and Extensions behavior. Twelve original/Core/outer CLI checks on the original frozen packages produced matching results. Subsequent current-package checks above separately validate the new layout and revised rationale. The forwarding APIs retain their exported functions and old CLI usage behavior; outer `coreWarnings` retains its configuration source.

[Independent actual skill use](validation/migration/skill-responses.md), with [command results](validation/migration/skill-actual-results.json), covered a two-clause ordinary source, a Lean-only premise projection, an explicit downstream baseline and an invalid explicit path. A first attempt with no declaration inventory was rejected and preserved. A later conditional interface passed mechanical checking while its source fidelity remained incomplete. The identity example returned its assumed premise; it was not presented as an independent proof of that premise. The explicit downstream version was retained; missing explicit selection did not fall back to Core. These are bounded behavior observations, not proof of general agent capability.

The current corpus has 14 limited correspondences, 2 rejected correspondences, 371 incomplete entries and 108 structural/inapplicable entries: **zero complete source claims are marked passed**. The revised rationale row replaces six inventory clauses with seven, with no theorem mappings or promoted grades. Unchanged code explanations are explicitly reused, not newly blind-reviewed. Original fidelity records are retained as `fidelity-before-migration.json`; original source/code/initial-review bytes are preserved.

All checker outputs retain `semantic_status: not_evaluated`. Binding checks do not establish semantic fidelity, independent authorship or accurate translation. Source correspondence failures remain modeling findings, not proofs that the philosophy is false. Migration completion does not imply full formalization. No global installation, push or remote publication was performed.
