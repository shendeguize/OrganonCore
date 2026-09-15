# Run format and mechanical gate

Run `node skills/organon-core-leanify-prove/scripts/check.js <run-dir>` from the Core repository with Node 22 or newer. The checker uses only Node built-ins and the repository's existing document parser. Exit 0 means the recorded mechanical checks passed; exit 1 means failure, and exit 2 means invalid CLI usage. No exit status certifies the accuracy of the translation into Lean, philosophical correctness, sufficient grounds, or completion of review.

Optional reader publication checks use `--manuscript <run-relative-manifest>`; see [bound reader manuscripts](manuscript-format.md) for the schema, source drift behavior, bilingual views, and reported-review boundary. The normal frozen-source gate remains independently available.

## Bound inputs

Place `run.json` in a new local run directory. Paths below are relative to that directory unless stated otherwise. Input files remain unchanged; each invocation builds a fresh copy under `evidence/checks/<UTC timestamp>-<unique suffix>/project`. Old build products are never reused. The checker does not modify an existing pilot or project configuration.

```json
{
  "schema_version": 1,
  "source": {
    "kind": "text",
    "path": "original.txt",
    "snapshot": "baseline/source.txt",
    "sha256": "<64 lowercase hexadecimal characters>",
    "spans": [{ "id": "span.1", "start_line": 1, "end_line": 3 }]
  },
  "project": { "path": "leanified", "root_module": "Example" },
  "preregistration": { "path": "PREREGISTERED.md", "sha256": "<SHA256>" },
  "units": [{
    "id": "span.1",
    "hash": "<normalized span SHA256>",
    "status": "partial",
    "reason": "Only the stated implication is represented; its application remains under review.",
    "clauses": [{
      "id": "identity",
      "claim": "An assumed proposition entails itself.",
      "declarations": ["Example.identity", "Example.caseIdentity"]
    }]
  }],
  "declarations": [
    {
      "name": "Example.identity", "kind": "theorem", "file": "Example/Model.lean",
      "sources": [{ "unit": "span.1", "clause": "identity" }]
    },
    {
      "name": "Example.caseIdentity", "kind": "case", "file": "Example/Model.lean",
      "sources": [{ "unit": "span.1", "clause": "identity" }]
    }
  ],
  "cases": [{
    "id": "identity", "declaration": "Example.caseIdentity",
    "kind": "positive", "expectation": "True has an explicit witness."
  }]
}
```

The example's hash placeholders must be replaced with actual hashes. `source.path` identifies the original selected input and may be absolute or relative to the run directory. It must remain byte-identical to the frozen snapshot. `source.sha256` binds the snapshot's original bytes, without whitespace removal or newline conversion. Snapshot, project, preregistration, and review paths must remain within their respective directories; escaping symlinks are rejected. Project symlinks are unsupported.

For an Organon input, set `source.kind` to `organon`, omit `spans`, and set `source.metadata` to the exact metadata returned by `scripts/lib/sections.js`'s `parseDocument`. This includes `format_version`, `philosophy_version`, `core_version`, and `derived_from`. Reuse the parser's section IDs and `hash` values. Every heading's direct body is a distinct unit, including parent sections and the preamble; only line endings are normalized. Whitespace remains significant. The existing format parser determines supported document formats; no particular philosophical version or unit count is frozen here.

For plain text, use `source.kind: "text"`. Ordered inclusive, one-based line spans partition the complete normalized snapshot without gaps or overlaps. IDs are local to that frozen snapshot and may use ASCII letters, digits, dots, hyphens, and underscores, beginning with a letter or digit. The unit hash is SHA256 of the span's text after CRLF/CR normalization to LF, retaining every other character and each existing line ending. An empty source is unsupported. When text changes, create a new snapshot and reconsider its local spans rather than claiming that line positions are globally stable.

An optional `baseline: {"path": "<selected philosophy>", "sha256": "<SHA256>"}` binds the adopted baseline separately from the raw input. Its path may be absolute or relative to the run directory. This identifies the review baseline; it does not make the input an adopted philosophy.

## Coverage and declaration mapping

List every source unit exactly once in `units`. Status is one of `formalized`, `partial`, `nonformal`, `excluded`, or `structural`. All except `formalized` require a nonempty reason. These statuses are reported assessments, not classifications established by the checker. `formalized` and `partial` require at least one clause; other statuses may have an empty clause list. Each clause requires a local ID, nonempty claim, and a list of unique declaration references. An unmodeled clause may use an empty list only with its own status (`nonformal`, `excluded`, or `unresolved`) and a nonempty reason. A `formalized` unit cannot contain an unmodeled clause; a `partial` unit needs at least one mapped clause. Use separate clauses where changes in meaning, assumptions, applicability, or losses need separate review.

Every inventoried declaration requires a qualified Lean name, `kind` (`definition`, `theorem`, or `case`), a project-relative `file`, and one or more `{unit, clause}` references. Clause references and declaration source references must agree in both directions. Every case declaration must appear exactly once in `cases`, with its own unique case ID, nonempty kind, and expected result. An empty case inventory is mechanically allowed; the preregistered objectives and independent review determine whether cases are sufficient. No fixed countermodel count or quota is imposed.

Attach this exact documentation comment immediately before each inventoried declaration, including cases:

```lean
/-- organon-map Example.identity
span.1#identity sha256 <UNIT_HASH>
-/
theorem Example.identity (p : Prop) (h : p) : p := h
```

Use one source line per `sources` entry in the same order. Lean accepts only one documentation comment attached to a declaration. If it already has one, preserve that explanation as an ordinary `/- ... -/` comment before the mapping comment; do not stack two `/-- ... -/` comments. The comment binds the declaration to each source unit's complete direct-body/span hash. Fully qualified declaration names or their final component inside a namespace are supported. Optional attributes and `noncomputable`/`protected` modifiers are supported. Managed names use ASCII letters, digits, underscores, apostrophes, and namespace dots. The bounded attachment check requires `theorem` for `theorem` and `case` entries; `definition` entries accept `def`, `abbrev`, `structure`, `inductive`, `class`, or `opaque`; use a supported declaration spelling instead of extending this check to arbitrary Lean syntax within a run.

Helpers and Lean-generated fields or constructors need not be inventoried separately. Source-policy checks still cover every project `.lean` file. The checker detects a missing inventoried declaration, inconsistent mappings, changed attached unit hashes, and declarations unavailable through the root import. It cannot detect an intended claim omitted from both the preregistration and inventory, or establish that a correctly attached comment describes the declaration's meaning. Review must compare the complete source, clause inventory, actual Lean statements, assumptions, losses, and cases.

## Core-only build and axiom audit

Install `leanprover/lean4:v4.33.1` separately before running this gate. The checker locates that existing installation under `${ELAN_HOME:-~/.elan}/toolchains/leanprover--lean4---v4.33.1`, checks its reported Lean version, and directly invokes its binaries. It does not invoke an elan shim or download a toolchain. Missing installation fails the gate.

Use a generated data-only `lakefile.toml` with exactly this shape, optional version and defaultTargets lines, and no other keys or comments:

```toml
name = "example"
version = "0.0.1"
defaultTargets = ["Example"]
[[lean_lib]]
name = "Example"
```

The library name must match the first component of the root module. When present, `defaultTargets` must contain only that same library name; including it is recommended so a manual `lake build` builds the library. The checker executes `lake build Example`, followed by `lake env lean --stdin` containing the root import and `#check`/`#print axioms` for every inventoried declaration. This explicit build target avoids relying on Lake's default target selection. Root source must exist; a declaration implemented in an unimported module fails the audit. `lean-toolchain` must contain the pinned toolchain. `lakefile.lean`, additional Lake TOML configuration, external dependencies, and a nonempty `lake-manifest.json` packages list are rejected before build. Existing projects outside this deliberately narrow format should be copied into a separate generated run project; the checker never rewrites their configuration.

The axiom allowlist is `propext`, `Classical.choice`, and `Quot.sound`. Any other dependency, including `sorryAx` or a project axiom, fails. A separate conservative source policy rejects `sorry`, `admit`, `axiom`, `unsafe`, and `native_decide` in all project Lean sources after removing nested comments; quoted strings remain subject to this policy. For otherwise valid project inputs, source-policy findings do not skip compilation, so actual axiom evidence can still be retained. This is a local audit of trusted project sources, not a sandbox for hostile Lean metaprograms or a complete Lean-language security analyzer.

## Evidence and review boundary

Each invocation retains its manifest, input hashes, copied Lean project, generated audit program, timestamped command records, stdout/stderr logs, and `summary.json`. Earlier checks remain intact. Failures before compilation retain the available manifest and summary. The preregistration file is hash-bound; the checker cannot authenticate when it was written or whether it includes all intended requirements.

New invocations also retain `execution-identity.json`, independently of the run schema and existing result fields. It records the checker, manuscript checker and both shared parser files by Core-relative path and SHA-256, sampled when the checker module loads, plus the running Node version and observed `lean --version` and `lake --version` versions. Start a fresh process after changing these tools; an already imported module retains its initial source identities. A tool whose version was not successfully observed is marked `not_observed`, including when an earlier failure prevented execution. Version command logs retain the diagnostic details. The portable identity contains no machine-specific paths; command records remain local execution evidence.

This identity is self-reported execution provenance, not approval, authentication of the executing process, or a semantic judgment. Compare preserved receipts to identify changed tool objects, then review their actual effect on the evidence. Recording a new hash neither approves that change nor makes an old result current. Existing receipts and historical run objects are not rewritten to add identity retrospectively. A missing Lake version observation does not replace the existing build and audit gates or change their success criteria.

Optional `reviews` entries contain `path`, `sha256`, and the author's `judgment` or other reported context. The checker verifies each report file's byte hash and copies its entry to `reported_reviews` with `applicability: "not_validated"`. Report authors should record the exact candidate input hashes they reviewed. A report hash alone does not establish that it applies to the current candidate; the initiating agent must compare those bindings after revisions and obtain the required review. The checker always reports `semantic_status: "not_evaluated"`; reported judgments never decide its mechanical pass/fail result, and no stale review is certified as applicable.

Run `node --test tests/lean-checker.test.js` for disposable fixtures, including real Lean checks of valid runs, `sorryAx`, project axioms, and omitted root imports. Tests explicitly skip real Lean cases if the pinned installation is unavailable; a skipped test is not validation evidence for that behavior.

For an agreed complete-proof scope, the optional [proof-target catalog](proof-targets.md) binds planned goals, actual Lean types and target review separately from source coverage. Its completion result does not upgrade source fidelity or certify philosophical correctness.
