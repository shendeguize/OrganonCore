# Proof targets and completion

Use this extension for assignments with an agreed complete-proof scope. It separates what the source says from the mathematical objectives to be completed. It does not define a universal philosophical proof checklist. The [run](run-format.md) and [manuscript](manuscript-format.md) schemas remain v1; existing callers and the CLI remain compatible.

## Before encoding

Obtain an independent source-first inventory, compare complete semantic claims and relations, then freeze `targets.json`. It contains `schema_version: 1`, `source_sha256`, and a nonempty `targets` list. Each item contains:

- `id`, `kind`, `statement`, `premises` and `acceptance`. Kinds are `specification`, `theorem`, `satisfiability`, `nonentailment` and `boundary`; premises may be empty.
- Unique `sources: [{unit, clause}]` references to existing run clauses. Several passages may support one target; one passage may have several targets with different responsibilities.
- `required_declarations: [{name, kind}]` and `required_cases: [name]`. Declaration kinds retain the run's definition/theorem/case distinction. Boundary targets have none; specifications require a definition; theorem targets require a theorem rather than cases alone; satisfiability and non-entailment need an actual theorem or case.

The statement and acceptance condition must identify every intended branch, full mathematical premises and applicable positive/negative instances. Keep an earlier frozen catalog when adding targets or revising a statement. Do not remove unfinished targets, assume their conclusions, or change their category to make the original scope appear complete. The hashes bind a record, not its creation time or the authority to revise it.

## Bindings and execution

Both `run.json` and a target-aware manuscript contain the same `proof_targets: {path, sha256}`. The catalog is inside the run, binds the frozen source hash, and covers every mapped source clause. Every required declaration must carry the target's source mappings. Omitting the extension preserves legacy behavior; a maintained complete-proof delivery must require it in its own delivery checks.

The checker audits Lean's actual `ConstantInfo.type`, including implicit and local premises, and saves exact type expressions and SHA256 values in `declaration-types.json` and `result.declaration_types`. These expressions come from the installed Lean runtime, not from the catalog prose. Code hashes remain bound separately. New execution receipts identify the loaded target checker as well as the existing tool files.

Build first to obtain actual types. Then bind a reviewed object to the run, source, code and catalog. In addition to ordinary manuscript review fields, use `proof_targets_sha256` and `target_entries: [{id, status, reason, declarations, type_hashes}]`. Target statuses are `accepted`, `rejected` or `pending`; each `type_hashes` map contains exactly the required declaration names and their observed type hashes. Boundary entries use an empty map. The target list must match the catalog exactly. Review files and initial source/code records retain their exact hashes.

This dependency direction has no hash cycle: the planned catalog does not reference the run, review or execution. Review points to its input objects and observed types. Changing premises creates a new type and requires a corresponding new review, even if the theorem still compiles.

## Result and limits

`proof_targets.complete` requires successful current build/manuscript checks, every target accepted, every required declaration checked and both initial source/code review records bound. Pending or rejected targets may pass mechanical integrity checks while completion remains false. Without manuscript review, completion remains false. A specification or boundary target alone cannot promote a source entry to `passed` or `limited`.

Accepted targets require `full` or `partial` correspondence for their substantive source entries; a boundary may instead use `not_applicable`. A source cited only as context may use the explicitly reviewed `context_only` exception below. An accepted proof-bearing target also requires its source entries to be `passed` or `limited` for completion. A reviewed but still `incomplete` source may retain acceptance while keeping completion false. Pairing target acceptance with pending or rejected source correspondence is an integrity error.

A source entry marked `passed` requires all covering nonboundary targets to be accepted. A `limited` entry may retain an accepted, checked fragment while another covering target remains pending or rejected; that unfinished target still prevents overall completion. Specification-only acceptance cannot turn the source into a proved claim.

An accepted specification records faithful normative expression, not fulfilled obligations. An accepted boundary records the scope of what is not being proved, not permission to drop a difficult theorem. Generic theorems, finite witnesses, source-correspondence judgments and actual-world empirical/value grounds remain distinct. The completion flag does not authenticate reviewers, prove semantic exhaustiveness, validate a premise's adequacy, or establish philosophical truth; `semantic_status` remains `not_evaluated`.

For interacting targets, check the same objects and contexts jointly and require relevant nonempty witnesses. Test changed assumptions, vacuous domains, duplicated citations, missing relations, deleted targets, misleading result categories and caller-selected sources. Confirm the changed method through actual use on the requested source and a new relevant variation; a format check alone does not establish improved reasoning or readability.

## Context citations

A frozen target may cite a paragraph for authority, conditions or interpretive background without claiming to prove that paragraph. Preserve its source/declaration mappings. For a target-aware manuscript, mark such an entire entry `context_only: true` in both the manuscript and the matching hash-bound source review entry, with a reason. Its fidelity and aggregate status must remain `not_applicable`; it cannot claim a countermodel proof. This means that mathematical proof is inapplicable to that citation role, not that the philosophical condition is waived.

The role applies to that source entry across all its target citations. Do not use it for a paragraph that also has a substantive proved correspondence; keep that correspondence and its limits instead. Each view must show `<!-- lean-context-only -->` inside the entry and explain its background role. Referenced declarations retain normal inventory, type and dependency checks.

Every accepted nonboundary target must retain at least one substantive source. Its proof-bearing substantive sources must still be passed or limited for target completion. Missing or mismatched review, unmarked views, all-context targets, or incomplete actual claims cannot gain completion through this exception. The checker verifies bindings and role consistency, not whether the reviewer's background classification is semantically correct. Existing v1 objects without this optional role retain their previous behavior.
