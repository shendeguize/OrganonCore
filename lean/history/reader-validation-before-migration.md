> Historical result of the preceding reader task, before Core owned the runtime. Current migration results are recorded separately.

# Validation of the Core 0.1.3 reader edition

This is a local delivery record dated 2026-09-13. It separates machine checks from reported source correspondence. The source text and its Chinese translation remain unchanged.

| Check | Actual result | Evidence |
| --- | --- | --- |
| Philosophy Lean build, declaration/dependency audit and four manuscript views | Pass; 18 registered declarations; 123 entries | [Actual result](../core-v0.1.3/philosophy/evidence/before-migration-manuscript-check.json) |
| Rationale Lean build, declaration/dependency audit and four manuscript views | Pass; 10 registered declarations; 371 entries | [Actual result](../core-v0.1.3/rationale/evidence/before-migration-manuscript-check.json) |
| Complete `rtk proxy node --test` | 82 passed, 1 failed, 0 skipped; all 35 manuscript tests and 17 pre-existing Lean checker tests passed | [Complete actual output](../validation/final-node-tests.json) |
| Existing management test failure | The task-start snapshot reproduces the same obsolete expected philosophy-body hash. The test and source bodies were preserved, not changed to obtain a green result | [Baseline reproduction](../validation/preexisting-management-failure.json) |
| Both Lean skill format checks | Pass | [Formalization skill](../validation/final-skill-format.json), [translation skill](../validation/final-translator-format.json) |
| Independent final difference review and ordinary-copy rerun | Pass for both fresh builds and manuscript checks; no fidelity upgrade | [Review](../validation/independent-final-review.md), [Copy results](../validation/relocation.json) |
| English and Chinese source-format checks | Pass; 22 matching stable units | [Actual output](../validation/final-source-format.json) |

The full suite is **not green**. Its existing failure is in `tests/management.test.js`, which still expects an older English philosophy-body hash. The observed current normalized body hash is `41496fa241aa3c3cb6e3abc83992f904f4cbc4555f6fee935b72fc799fe06ee1`; the expected hash is `2c20e768e68f438edc462647dca33d253b9882cc5125874b70d55bc83ae9da57`. This task did not revise that migration baseline.

Reported fidelity is 14 limited correspondences and 2 rejected correspondences, with 370 incomplete entries and 108 structural or inapplicable entries. **Zero complete source claims are reported passed.** These are navigation entries, not a measure of philosophical quality. All 424 extracted clauses and 228 nonblank Lean lines have bilingual presentation; this does not establish complete atomic claim segmentation or full formalization.

Three bounded revisions addressed initial compilation, independently observed source mismatches, and reader/status-checking defects. The final new adversarial case rejects using a countermodel that supports a negative source claim as the sole reason to mark that source claim failed. Kernel results remain separate from source correspondence throughout. Independent first records, informed comparisons, initial code translation and informed code updates are included in each package's `reviews/` directory. Initial exposure limitations are disclosed in the [package overview](../README.md).

The two rejected attempts concern the missing support relation in an observation-coverage model and the missing substantive examination behind a grounds-ID test. They remain visible as failed source correspondences, although their formulas pass Lean. Assessment's mixed-responsibility and omitted-label clauses have limited correspondence; its full source duty is not certified.
