---
name: organon-core-lean-natural-language
description: Explain Lean definitions and proofs in a readable natural-language manuscript, with optional source comparison and line-by-line explanation. Use for Lean backtranslation, philosophical formalization review, and human-readable proof documentation.
---

# Organon Core Lean Natural Language

Translate actual Lean semantics, not declaration names or an author's intended interpretation. This skill can run independently or as the translation sub-skill of [organon-core-leanify-prove](../organon-core-leanify-prove/SKILL.md). Default to Chinese Markdown unless the user selects another language.

## Invocation

Accept a Lean project or snippets, an output path, optional original prose and mappings, an explicit output language (English or Chinese when requested), and the optional `--explain-lines` skill argument. Language and explanation options are skill inputs, not an installed translation CLI. This argument requests a manuscript variant; there is no installed translation executable. Preserve the concise claim-based main text in both variants. With `--explain-lines`, add an appendix explaining every nonblank code line, including syntax and proof steps; group closing delimiters where their role is unchanged.

Use the declared project toolchain when inspecting existing code. The paired proof workflow supports only installed Lean 4.33.1 and core libraries; report incompatible or unavailable dependencies, rather than silently rebuilding under another environment. Standalone explanation of other code is possible, but qualify anything not checked. Never introduce `sorry` or modify proof inputs to make an explanation compile.

## Blind backtranslation

For an independent fidelity assignment, the translator must be a different agent and receive only encoding, required imports, toolchain and the translation task. Do not retrieve original prose, prior verdicts or the author's intended correspondence. Mapping IDs and hashes identify code; they are not evidence of meaning. If source prose or expectations were already disclosed, record the contamination and use a fresh reviewer for the initial blind step.

Read actual definitions transitively as needed, not just theorem headers. Record the project file hashes and exact declaration locations. Explain parameters, implicit binders, typeclass assumptions, domains, quantifiers, identity links, logical connectives, and conditions. Expand aliases and structures enough to expose the meaning that determines the result. Keep terms consistent throughout the manuscript.

Separate definitions, assumed premises, obligations and proved conclusions. For `theorem result (h : P) : P := h`, explain that the conclusion is supplied by the premise. A field named `supports` or `isCorrect` is an uninterpreted relation until its definition or an explicit domain interpretation supplies more. A structure encoding responsibility does not prove the responsibility fulfilled. Explain vacuous cases, unconstrained predicates and quantifier order where material.

For each claim, include an exact code excerpt with location, the natural-language statement, necessary definitions and assumptions, key proof steps and dependencies, and what the statement does not establish. Say whether dependencies were checked or only inspected; a build log without a declaration/axiom audit does not establish all intended claims. Axioms permitted by the proof workflow remain visible dependencies. Save the initial manuscript before seeing source comparison material.

## Source–Lean manuscript

After the blind artifact is preserved, compare it with supplied source prose and mappings. Keep the original blind artifact unchanged and produce a separate comparison. When only code is supplied, complete the code explanation and label source fidelity unevaluated; do not invent an original philosophical claim or require a philosophical baseline for syntax explanation.

Arrange the manuscript by source claim, with exact source excerpt and ID/version/hash where available, exact Lean excerpt, the code-derived translation, assumptions, proof outline and dependencies, and correspondence/loss findings. For a target-aware run, make the main text follow the reviewed target's claim, formal meaning, premises, proof or countermodel and limits. Keep the exhaustive source-tracing entries in a linked appendix when that improves navigation, with all required exact excerpts and markers retained. Do not split connected meanings by punctuation or count repeated citations as new proofs. Keep conditions directly locatable from the claim they constrain. Distinguish whole-claim coverage from a proved fragment. Preserve force, applicability, quantifiers, objects and support relations; a mismatch is not fixed by paraphrasing the code as though it already matched the source. Mark definitions and examples that add application assumptions.

Where a countermodel appears, explain its concrete objects and relationships, which premises hold, and which source-corresponding conclusion fails. Distinguish falsehood, insufficient support and non-entailment. Do not portray arbitrary truth assignments as an independently supported interpretation.

In source comparison, inspect finite adapters as well as abstract interfaces: a label such as `actualKind` may misclassify its own example, and absence from a support-record list is only absence of a record unless an independently justified interpretation establishes more.

Distinguish necessary evidence conditions from sufficient support for the complete claim. If a proportionality or adequacy premise is supplied to a theorem, retain it as a premise in the manuscript rather than describing it as established by the proof.

A materially different reading remains unresolved even if Lean accepts both encodings. Return the alternatives and affected claims to the caller or user; do not revise philosophical meaning through translation. The manuscript supports human review but does not itself certify fidelity or philosophical correctness.

## Reader editions and translations

For a paired proof-workflow edition, follow the [manuscript contract](../organon-core-leanify-prove/references/manuscript-format.md). Present the kernel result, reported source fidelity and bounded summary separately. Keep failed proof attempts, rejected mappings and refuted inferences distinguishable; missing work, non-applicability and stale inputs are separate states. A successful countermodel check is not a successful proof of the implication it refutes. It can instead support a source claim that the implication does not necessarily follow.

For target-aware manuscripts, report source coverage, specification review and theorem completion separately, using the [proof-target contract](../organon-core-leanify-prove/references/proof-targets.md). The actual full declaration type and code determine the premises; a registry statement is an intended target, not the theorem itself. Explain any difference before reporting completion. Neither a definition nor an empirical/value boundary becomes an unfinished theorem merely by appearing in the source inventory.

The overview names each source claim, quotes it exactly and points to the detailed explanation. The detailed view retains the overview's scope and status, the exact code and locations, actual assumptions and proof dependencies, and the line explanations requested by `--explain-lines`. Mark structural material without inventing a philosophical theorem. Every unmodeled source claim retains an explicit state and reason; do not drop it to improve apparent coverage.

Keep the overview useful for finding claims, statuses and limits. Put full code, dependencies and repeated source context in the detail view; structural or blank entries may be collected in a compact inventory. Preserve each entry's exact excerpt, unique boundaries and status marker even when grouped. Test a sample containing structural whitespace, a table and different statuses against the manuscript checker before applying a new presentation throughout. Compare actual lookup and interpretation tasks before claiming a readability improvement; fewer lines alone do not establish it.

Translate the reviewed English reader edition into Chinese when requested. Preserve Lean tokens, declaration names, identifiers, hashes, mathematical force, applicability and proof/fidelity states. Natural-language explanations may be idiomatic. Do not repair an English/code discrepancy by silently changing the Chinese claim or upgrading its status; return the discrepancy for review. Standalone translation is not a new independent blind assessment.

A publishable evidence package must not require private `.local` records or machine-specific paths. Bind the edition to its frozen source, code and review objects, and check current-source and selected-baseline drift separately. Retain earlier editions as historical evidence rather than replacing their hashes. Mechanical manuscript checks establish these bindings and coverage markers, not the correctness of the explanation.

For maintained Core reader editions, follow [Lean evidence maintenance](../../AGENTS.md#lean-evidence-maintenance). A changed source or relevant interpretation requires updated comparison and translation; a path-only migration may reuse an unchanged code explanation with that reuse disclosed.
