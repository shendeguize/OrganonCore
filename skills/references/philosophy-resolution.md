# Selecting a philosophical baseline

The caller may supply the path of the adopted philosophy for an assessment or absorption task. Resolve a relative supplied path against the caller's working directory, then retain the selected path and text version throughout the operation. Read the whole text, including meanings and application limits. Pass the same selection to delegated skills and independent reviewers; a shared reference does not select another baseline.

For a readable symbolic link, retain the selected path while resolving the text's relative references from the real target's directory. Reading a link does not authorize writing through it or replacing it; a read-only mirror remains read-only for philosophy management.

For a direct Core skill invocation without a caller-selected philosophy, use `../../PHILOSOPHY.md` relative to that skill's `SKILL.md` directory. Work on the Core repository itself retains its English `PHILOSOPHY.md` as the maintenance baseline.

A caller requesting workspace resolution, such as AgentOrganon, checks `PHILOSOPHY.md` at the Git repository root first and then in the current working directory. Outside a Git repository, check only the working directory. Do not recursively search ancestors or descendants. The caller passes the selected path to Core instead of invoking Core's default lookup.

If a supplied or selected path is missing or unreadable, stop the dependent philosophical operation and report the path. If workspace lookup finds no candidate, stop and report that a workspace philosophy must be initialized or explicitly selected. Do not substitute the bundled Core philosophy after a workspace or explicit selection fails. A caller may provide its own initialization instructions.

Keep three objects distinct: the selected adopted philosophy, the candidate that may replace it, and the Core method's own constraints. The selected philosophy supplies the baseline for compatibility judgments; the Core instructions govern use of this review method. A method constraint does not silently become a commitment of the selected philosophy. If the method cannot perform a requested operation under its constraints, report that limitation separately instead of changing the selected baseline or treating the limitation as a philosophical conflict.

Downstream users may explicitly revise or withdraw Core commitments. Assess the current selected baseline and the reasons for a proposed revision separately; neither difference from Core nor compatibility with the selected text alone decides adoption. Retain the shared requirements for independent review and the user's decision on changes to philosophical meaning. A candidate becomes the adopted baseline only after authorized adoption, with the preceding judgment preserved.

The wording-review skill does not select or require a philosophy. It reviews wording within its stated scope.
