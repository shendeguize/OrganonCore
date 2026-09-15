---
name: organon-core-leanify-prove
description: Formalize philosophical claims in Lean, review source fidelity, and produce conditional proofs, countermodels, and bounded analysis. Use when Lean formalization or proof of philosophical relations is requested; ordinary philosophical assessment does not require Lean.
---

# Organon Core Leanify Prove

For maintained Core evidence, the [Lean index](../../lean/README.md) identifies stable current-object entries; historical deliveries are retained under ignored `.local/` and are not dependencies of the formal delivery. A current directory is not an evidence identity. Before replacement, preserve the previous source/run/code/review/manuscript reference closure; keep original manifests unchanged and record any relocated presentation separately. Historical replay must distinguish source staleness from missing files or broken references.

Establish correspondence before treating a proof as evidence about its source. A checked declaration establishes its encoded statement under its dependencies, not the truth of a philosophy or the adequacy of its empirical or value grounds.

## Inputs and environment

Accept a source file or supplied text, an optional selected philosophy, and an output directory. These are skill inputs, not an installed command. Resolve a needed adopted baseline with the [philosophy selection contract](../references/philosophy-resolution.md). Preserve an explicit caller selection and resolve its relative references from the real source directory. A direct Core invocation without a caller selection uses the bundled philosophy; a caller requesting workspace resolution must pass its resolved selection or report lookup failure before delegation. No outer repository or management script is required. An invalid explicit path does not permit fallback. Ordinary text is an object of review, not automatically the adopted baseline. If a needed baseline is unavailable, ask for it while continuing independent source inventory work. For maintenance of Core, use Core's philosophy.

Read the selected text with its meanings and limits and the [iteration rules](../references/iteration.md). Use Node 22 without third-party packages and installed `leanprover/lean4:v4.33.1`, core library only. Check installation before invoking Lake; do not silently install, change toolchains, add Mathlib, or weaken claims to fit available libraries. Explain an unavailable dependency and the affected unfinished stage.

Store private run artifacts under the caller's ignored `.local/`; first verify the directory is ignored in a Git workspace. When the user requests a reader-facing deliverable, prepare a separate minimal evidence package at the authorized location: relative paths, frozen inputs, necessary review records and actual check results. Keep private inputs and iteration history out of that package. Preserve original inputs, existing work and previous judgments. Read [the run format](references/run-format.md) when preparing a checked project. Use a fresh run directory and the documented data-only Lake configuration.

## Source inventory before encoding

Freeze the raw source, resolved baseline, metadata and hashes. For Organon documents, reuse the repository parser: direct bodies include whitespace, excluding heading and ID lines; structure is separate. For ordinary text, assign local stable IDs to an exhaustive, nonoverlapping partition of source lines. Do not add metadata to the source itself.

Inventory every direct-body clause, including tables and qualifications, with its exact source span. Identify structural-only material explicitly. Record claim type, force, quantifiers, objects, applicability, readings, required support and intended formal scope. Empirical, inferential and value aspects may coexist; absence of an assigned category does not establish inapplicability. Preserve context across unit boundaries.

Separate exhaustive source tracing from the proof objective. Organize targets by complete semantic claims and their relationships, retain each qualification with the claim it constrains, and map repeated passages to the same target where their meaning and scope agree. Headings and documentary context need tracing, not invented theorems. Let the user's selected source and objective determine priority; supporting commentary does not acquire a separate full-proof obligation merely because it can be inventoried.

For a complete-proof assignment, freeze a [proof-target catalog](references/proof-targets.md) before encoding. Give each target its source references, precise statement, explicit premises, evidence kind, required declarations/cases and completion condition. Distinguish normative specification, conditional theorem, satisfiability, non-entailment and nonformal boundary; one source passage may require several kinds. Compare an independent source-first inventory before freezing the catalog. A later failed target cannot be deleted, weakened or reclassified to claim the original scope complete; preserve revisions and obtain a decision for material changes of meaning or scope.

Before writing candidate Lean, register expected positive and negative cases and all candidate negative claims. Distinguish lack of sufficient support, false conclusions, non-entailment, permissions, prohibitions and limits on what a provision requires. Not every negative sentence calls for a countermodel. Deduplicate the same claim without dropping its source references. Record late-added cases as later evidence; never backdate them.

Commission a different agent's source-first assessment using only source, baseline, objectives and necessary context. Preserve its initial response before disclosing the encoding or intended verdict. Missing independent review leaves fidelity provisional, rather than blocking unrelated inventory work.

## Encode and test correspondence

Express a normative requirement as a satisfaction condition or obligation interface; do not claim that defining it proves anyone satisfies it. Register domain assumptions as explicit parameters or structure conditions, explain them, and supply concrete instances. Check satisfiability and relevant nonempty cases. A desired conclusion assumed as a premise, renamed Boolean, or empty domain provides no independent support for that conclusion.

Preserve obligation strength, conditions, quantifiers, referents and support relations. Link assessments to the same claim, grounds, conditions and scope. Keep actual applicability distinct from an assessor's potentially missing label, and do not invent exhaustive or exclusive claim categories. Model simultaneously held principles and judgments through a consequence relation over their whole set, with its assumptions stated; independent per-principle tests do not capture joint consequences.

For concrete countermodels, explain how premises, relations and the failed conclusion correspond to a source claim. A freely assigned false result is not evidence of insufficient support. Demonstrate the relationship that fails and check that the instance satisfies the registered domain assumptions. Non-degeneracy supports this review but never replaces semantic relevance. Review the semantic adapter itself: a missing support record establishes missing recorded support, not necessarily insufficient grounds; derive insufficiency from a justified criterion connected to the claim. Check concrete claim-kind assignments against the content, rather than treating a predicate called `actualKind` as self-validating. A necessary evidential condition, such as observation coverage, is not sufficient grounds for an entire mixed claim. Preserve additional support and proportionality conditions explicitly, and do not let unknown objects pass through empty default scopes.

When claims interact, use shared objects and contexts and register the relevant composition targets. Separate inhabited models do not establish that their assumptions hold jointly. Supply a content-bearing nonempty joint witness or retain the composition gap explicitly. Keep source commitments, mathematical representations and application-specific assumptions distinct; a convenient representation is not a new universal philosophical requirement.

Invoke [organon-core-lean-natural-language](../organon-core-lean-natural-language/SKILL.md) through a different agent with only the Lean project and technical context. Withhold source prose, intended verdict and author explanations; preserve its initial backtranslation before comparison. The translator must inspect actual definitions, implicit parameters and proof dependencies. Then compare source-first assessment, backtranslation, code and clause inventory, recording losses and counterexample relevance.

Assign fidelity per claim: accepted for its explicitly stated scope, rejected, or unresolved. A changed obligation, applicability or support relation fails that item. A partial representation cannot certify the whole clause. Escalate unresolved material meaning differences even when both readings are provable; pause only dependent work. Agent agreement alone is not grounds. Build or explore proofs during this process when useful, but do not label them proofs of the source before fidelity acceptance.

## Proof, analysis and return

Prove the accepted encoded claims and test registered cases. Run:

```sh
node <Core>/skills/organon-core-leanify-prove/scripts/check.js <run-dir>
```

Inspect the actual saved build and axiom-audit output. The checker separates mechanical success from unvalidated review reports; it cannot establish semantic precision. Audit every claimed declaration and case through the root import. Exclude `sorryAx` and project axioms; report permitted core dependencies. Existence of source files or a successful Lake build does not ensure an intended declaration was checked.

After preserving blind evidence, request a source–Lean manuscript from the translation skill. Use [organon-core-assess](../organon-core-assess/SKILL.md) for current philosophical compatibility and [organon-core-principled-review](../organon-core-principled-review/SKILL.md) when its substantive-method/full-analysis triggers apply. Pass the selected baseline, precise claims, assumptions, evidence and losses; their judgments do not alter the kernel result or silently adopt a new philosophy.

Return coverage, fidelity judgments and evidence, checked conditional results, semantically relevant countermodels, failed or unfinished proofs, unresolved readings, and unmodeled portions separately. Do not use the former six-unit pilot's count thresholds as a general success criterion. A formalization defect is initially a modeling or method finding; a proposal to change philosophy needs its own reasons and the user's decision.

## Reader status and portable evidence

For a source–Lean reader edition, use the [manuscript contract](references/manuscript-format.md). Report kernel checking and source fidelity separately for each named claim. A summary of **passed** needs a complete correspondence for that claim, an actually checked theorem and the required independent reviews; it remains conditional on its disclosed premises. **Limited** denotes an accepted fragment, finite instance or additional application assumptions. A definition of a duty does not establish its fulfillment.

For **failed**, name the cause: failed proof attempt, forbidden dependency, rejected correspondence, or a source-corresponding inference refuted by a countermodel. Keep **incomplete**, **not applicable** and **stale** distinct. Missing review remains incomplete. Do not infer falsity from an unfinished proof or insufficient support. A verified countermodel may support a source's non-entailment claim; distinguish that source from the implication the example refutes. No pass-count quota applies.

For a target-aware run, inspect the actual Lean declaration types and all explicit, implicit and local premises retained by the checker. Bind the independent target review to those types, code, source and the frozen catalog. The catalog's completion flag only checks recorded prerequisites: independent source coverage and semantic review remain necessary. An accepted specification means its normative expression was reviewed, not that the obligation has been fulfilled or proved universally true. A complete-proof assignment remains incomplete while any agreed provable target or required review is unfinished, even when the mechanical gate passes.

Freeze evidence against source and selected-baseline snapshots. Separately bind the current maintained source and baseline when presenting current judgments. Changed inputs make that presentation stale; they do not invalidate a historical theorem about its unchanged snapshot. Never update old hashes to upgrade old results. A reviewed proof of one clause cannot certify neighboring clauses or the complete unit.

Generate a claim overview and, when requested, a detailed manuscript with the exact Lean file and every nonblank line explained. Bind both languages and granularities to the same claim inventory, code, reported reviews and state. Run the existing check with `--manuscript <manifest>` to verify documentary integrity and status preconditions. This check does not certify the reviewer's semantic judgment, independence, or translation quality; inspect those separately.

For skill iteration, predefine the task's acceptance boundaries, run actual uses and a relevant new variation, preserve failures and changed judgments, and apply only grounded corrections. Respect the agreed iteration bound; stop when the question is resolved or no new grounds justify continuing. Missing evidence or reaching the bound does not turn an unmet criterion into success.

For changes to maintained Core sources, encoding, assumptions, or relevant tool and method behavior, follow [Lean evidence maintenance](../../AGENTS.md#lean-evidence-maintenance). Complete the affected review and bilingual synchronization before declaring maintenance complete; incomplete formalization remains an explicit result, not a requirement to prove every philosophical claim.
