# Independent comparison addendum — Core provenance comments

This follows the earlier current-source comparison. The first refreshed gate exposed a stale unit identity inside the organon-map annotation. That failure is retained; the earlier code-byte identity observation described the candidate before this correction.

The reviewer inspected the actual diff and independently asserted that Integration.lean changes only the two preamble unit hashes in its organon-map comment, on lines587–588. Replacing those exact two old values reproduces the complete new file; no broad comment stripping is used. New file SHA256: `b5ba8617e06f03963c4284344fbe3c662188f1b88542c55cc15beb1cd5f99c03`.

The unit hash includes the entire direct preamble body, so both p1 and p2 annotations must follow its changed link even though only p2 text changed. This is a source-provenance repair, not a new theorem, premise or proof. Reuse of the same declaration interpretation remains justified at the unchanged statement/proof level. Code-file identity and corresponding reader/code/evidence bindings must be newly recorded; old code-file hashes must not represent these new bytes. Preserve all previous scope/status limits and the preceding failure.

Accepted within this comparison scope, conditional on the actual renewed current gate and complete four-view synchronization. The domain T01 checkpoint rewording also retains the existing Core0.1.2 adoption rather than selecting a new baseline.
