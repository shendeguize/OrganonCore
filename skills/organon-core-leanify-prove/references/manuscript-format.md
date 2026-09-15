# Bound reader manuscripts

Use `node skills/organon-core-leanify-prove/scripts/check.js <run-dir> --manuscript manuscript.json` with the existing [run format](run-format.md). The optional manifest is relative to the run directory and must remain inside it. The legacy command and `check(runDirectory)` remain unchanged; programmatic callers may use `check(runDirectory, { manuscript: "manuscript.json" })`.

The checker first performs the normal frozen-source, build, declaration and axiom checks. It then checks publication bindings. `kernel_passed` retains the original mechanical gate result; `manuscript.passed` reports manuscript integrity and status constraints. Overall exit 0 requires both. `semantic_status` remains `not_evaluated`: hashes and consistent labels do not establish semantic fidelity, review independence, explanation accuracy, or the completeness of the author's claim segmentation.

## Manifest

All paths, including manuscript views and the current maintained source, are relative to the run directory. `repository_root` is the common publication tree root and must contain the run. Other publication files may be outside the run but must remain inside that root after realpath resolution. Absolute paths and escaping symlinks are rejected. Include the complete tree needed for an ordinary-copy rerun; a root name does not authenticate a Git repository. No private `.local` input or machine-specific path belongs in a published package.

```json
{
  "schema_version": 1,
  "repository_root": "../../..",
  "source_current": {"path": "../../../PHILOSOPHY.md", "sha256": "<run.source.sha256>"},
  "code_files": [{"path": "leanified/Model.lean", "sha256": "<SHA256>"}],
  "review": {"path": "reviews/fidelity.json", "sha256": "<SHA256>"},
  "views": {
    "overview_en": {"path": "../../../lean/core-overview.md", "sha256": "<SHA256>"},
    "details_en": {"path": "../../../lean/core-details.md", "sha256": "<SHA256>"},
    "overview_zh": {"path": "../../../zh/lean/core-overview.md", "sha256": "<SHA256>"},
    "details_zh": {"path": "../../../zh/lean/core-details.md", "sha256": "<SHA256>"}
  },
  "entries": [{
    "id": "assessment.claim",
    "unit": "organon.grounds.assessment",
    "clause": "claim",
    "excerpt": "<exact nonempty substring of this unit's normalized direct body>",
    "declarations": ["Model.example"],
    "kernel": "passed",
    "fidelity": "partial",
    "status": "limited",
    "reason": "Only the named relation is represented; other requirements remain unmodeled."
  }]
}
```

Replace every placeholder. `code_files` covers every project `.lean` file exactly once, including the root import file; paths are run-relative. The four views must be separate files, each containing every entry exactly once and no extra entries. `entries` covers every run unit clause, or one `clause: null` entry when a unit has no clauses. Its `declarations` must equal that clause's inventory. Structural entries retain an exact body excerpt; an empty excerpt is allowed only for an empty/whitespace-only body. Coverage checks cannot detect a source claim omitted from both inventories.

The snapshot and code hashes must match actual bytes. Excerpts use normalized LF text while preserving all other whitespace. `source_current.sha256` must equal the frozen source hash. A changed maintained source yields `current_source: "stale"`, sets every effective manuscript status to `stale`, and fails the publication check even if historical kernel checking passed. This does not invalidate the historical proof of its frozen statement. Never update the expected hash solely to clear the failure; create and review the new source object. Changed code or review objects fail their binding checks instead of silently carrying forward old judgments.

## Review object and statuses

The optional `review` points to hash-bound JSON:

```json
{
  "schema_version": 1,
  "run_sha256": "<SHA256 of run.json bytes>",
  "source_sha256": "<run.source.sha256>",
  "code_sha256": {"leanified/Model.lean": "<SHA256>"},
  "initial_records": [
    {"role": "source_initial", "path": "reviews/source-initial.md", "sha256": "<SHA256>"},
    {"role": "code_blind", "path": "reviews/code-blind.md", "sha256": "<SHA256>"}
  ],
  "entries": [{"id": "assessment.claim", "fidelity": "partial", "reason": "The reviewed fragment retains the stated condition."}]
}
```

Initial records may include additional independent findings. Each final review entry has a unique ID and a nonempty reason. Optional narrative fields, including multiple initial judgments or objections, are retained in the report; the final `fidelity` must resolve them or remain `pending`. The checker verifies bytes and target bindings, not the chronology, blind exposure, authorship or independence claimed in those records. Save actual initial assessments before disclosure and report any known exposure.

Entry `kernel` is `passed`, `failed`, or `not_checked`. A passed kernel entry needs a successful current kernel gate and every named declaration in its checked inventory. Aggregate `passed` or `limited` additionally requires at least one inventoried theorem or case; checking a definition alone is not proof of a source claim. A failed entry needs a failed kernel run and names, but the reviewer must identify the actual failing declaration or dependency; a global failure alone does not diagnose every declaration.

Entry `fidelity` is the reported `full`, `partial`, `rejected`, `pending`, or `not_applicable`; `full`, `partial`, and `rejected` require a matching bound review entry. Aggregate `status` is:

| Status | Mechanical eligibility; semantic rationale remains the reviewer's responsibility |
| --- | --- |
| `passed` | Passed named declarations, full reported fidelity for the named source clause, and both source-initial and code-blind records. |
| `limited` | Passed named declarations, full or partial reported fidelity, both initial records, and explicit limits in `reason`. |
| `failed` | Failed kernel, rejected source correspondence, or a verified countermodel that refutes the source claim. Explain which cause. |
| `incomplete` | Work or review remains incomplete; no approval implied. |
| `not_applicable` | Reported inapplicability and a reason; no declarations, except explicitly reviewed context-only citations in a target-aware run. |
| `stale` | Current source differs from the frozen source. This always fails current publication checking. |

A structural or unmodeled item need not have a review object to remain `not_applicable` or `incomplete`. No count of passed entries is required. Status markers are consistency assertions, not a truth oracle; their visible prose must preserve the same limits.

For a checked countermodel, optionally add:

```json
{"countermodel": {
  "declaration": "Model.counterexample",
  "verification": "passed",
  "target": "refuted",
  "source_relation": "supports_nonentailment",
  "reason": "Name the tested entailment and explain its relation to the source's non-entailment claim."
}}
```

The declaration must belong to the entry and have passed checking. `source_relation` is `supports_nonentailment` or `refutes_source`. The former may support a source claim that something does not follow; the latter requires aggregate `failed`. In both cases the manuscript must distinguish successful verification of the example from refutation of the tested entailment. Relevance is established in review, not by these labels.

## Markdown views

Every view contains one bounded section per entry. Inside it, include exactly the recorded status marker and the exact source excerpt as literal text (for example in a fenced `text` block). Translate explanations, but retain the quoted authoritative source in both languages:

```markdown
<!-- lean-entry assessment.claim -->
<!-- lean-status limited; kernel passed; fidelity partial -->
... exact source excerpt, visible status, boundaries, and reader explanation ...
<!-- /lean-entry assessment.claim -->
```

An overview may collect structural entries in a compact inventory and omit repeated explanatory boilerplate. Each entry still needs its own boundaries, exact excerpt and status marker. Grouping does not merge identities or waive coverage; escaping a table excerpt can change its exact bytes. Keep full source context, code and dependency explanations in the details. Validate a representative presentation sample before batch conversion.

Each details view also contains the entire exact normalized content of every inventoried Lean file in this layout:

````markdown
<!-- lean-code leanified/Model.lean -->
```lean
... complete exact Lean source ...
```
<!-- /lean-code leanified/Model.lean -->
````

For every nonempty code line, including imports and provenance comments, put one explanation on the same Markdown line as its marker:

```markdown
<!-- lean-line leanified/Model.lean:12 --> Given arbitrary P and an assumed h : P, this declaration returns h; it does not establish P without h.
```

Line numbers are one-based in normalized source. English and Chinese details each need every nonempty line exactly once. An empty explanation fails; a nonempty but inaccurate or unhelpful explanation can still pass this mechanical check and must be rejected by reading review. Definitions, assumed conditions, and proved conclusions require distinct explanations. Do not replace explanations with declaration-name paraphrases.

Run `node --test tests/lean-manuscript.test.js` for integrity/status fixtures, relocation, and real-kernel integration. Most integrity tests use a declared synthetic kernel result to isolate manuscript behavior; the integration test invokes the real pinned Lean gate. The existing Lean checker tests cover forbidden proof dependencies and omitted imports. Skipped real-toolchain tests are reported as unavailable, never counted as successful validation.

## Current adopted baseline and clause scope

When run.json binds an adopted baseline, include `baseline_current: {"path": "<run-relative current philosophy>", "sha256": "<run.baseline.sha256>"}`. Missing binding fails the public-manuscript check. Changing that current baseline makes the presentation stale even if its source text (for example, rationale) has not changed. The historical frozen-source kernel result remains separate.

A fully reviewed and checked clause can be reported passed within a partially modeled source unit; this does not certify its unmodeled neighbors. Full source-unit completion cannot be inferred from one passed entry.

For an agreed complete-proof scope, the optional [proof-target catalog](proof-targets.md) binds planned goals, actual Lean types and target review separately from source coverage. Its completion result does not upgrade source fidelity or certify philosophical correctness.

A target-aware source entry may use `context_only: true` for a reviewed background citation under the [context-citation rules](proof-targets.md#context-citations). Bind the same flag and reason in its source review entry; retain exact source and declaration mappings, `fidelity: "not_applicable"` and `status: "not_applicable"`. Place `<!-- lean-context-only -->` inside that entry in each view and explain that the source remains applicable context, not a claimed theorem. Checking its referenced declarations does not prove the background paragraph. A proof target still requires substantive source correspondence and cannot complete with only context citations.
