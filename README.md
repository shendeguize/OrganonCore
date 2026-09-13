# Organon Core

Organon is a text-centered philosophical core: **Self-Transcendence, Internal Consistency, and Reflexivity**, with **Grounds** constraining judgments and including the additional commitment of **Openness to Alternative Implementations**. Capability definitions belong to applications rather than a uniform core standard. It expresses a position that can constrain judgments and construction across systems; it does not claim that every system already embodies it.

## Read

- [Philosophy](PHILOSOPHY.md) is the current English authority, including the meanings and limits of its provisions.
- [Rationale](docs/rationale.md) explains contributions, dependencies, counterexamples, and applications. It cannot independently add obligations to the core.
- Lean reader editions: [Core overview](lean/core-overview.md) and [line explanations](lean/core-details.md); [rationale overview](lean/rationale-overview.md) and [line explanations](lean/rationale-details.md). [Chinese Core](zh/lean/core-overview.md) and [Chinese rationale](zh/lean/rationale-overview.md) mirror these bounded results. These companion manuscripts report encoding and review limits; they are not philosophical commitments or proof of whole-text correctness.
- Chinese translations are maintained under `zh/` for readability and follow the English authority.
- [Agent guidance](AGENTS.md) identifies how to work on this repository. The skills below are revisable applications under this repository's goals, not additional philosophical truths.
- [Philosophy resolution](skills/references/philosophy-resolution.md) selects the adopted baseline; the [document format](skills/references/structure.md) defines version metadata, stable text-unit IDs, and a revisable starting template.

## Use the skills

| Skill | Purpose | Entrypoint |
| --- | --- | --- |
| `organon-core-assess` | Assess an input against the adopted philosophy, including applicability, grounds, conflicts, and minimal correction directions. | [SKILL.md](skills/organon-core-assess/SKILL.md) |
| `organon-core-absorb` | Decide whether input warrants revising the philosophy; develop, review, and implement authorized adoption with necessary synchronization. | [SKILL.md](skills/organon-core-absorb/SKILL.md) |
| `organon-core-principled-review` | Review an object under six principles and stated standards; return findings, including bounded review of the method and criteria. | [SKILL.md](skills/organon-core-principled-review/SKILL.md) |
| `organon-core-wording-review` | Review text for grammatical correctness, precision, ambiguity, terminology, redundancy, and necessary qualifications. | [SKILL.md](skills/organon-core-wording-review/SKILL.md) |
| `organon-core-leanify-prove` | Review source correspondence, check conditional proofs and countermodels, and maintain current evidence. | [SKILL.md](skills/organon-core-leanify-prove/SKILL.md) |
| `organon-core-lean-natural-language` | Explain actual Lean definitions and proofs; produce blind translations and bilingual reader editions. | [SKILL.md](skills/organon-core-lean-natural-language/SKILL.md) |

Give an agent the relevant entrypoint and your input, for example: “Use `organon-core-assess` to assess this design under its stated assumptions,” or “Use `organon-core-absorb` to consider whether this counterexample warrants a change.” These skills use English instructions and respond in the user's language. They can be invoked separately but reference this repository's guidance; copying a skill folder alone does not make a standalone distribution. Load the entrypoint explicitly if the host does not discover this directory; no automatic installation or discovery is assumed.

For a downstream assessment or absorption, supply the adopted philosophy's path. Assess, absorb, and principled review retain that selection through their shared references and distinguish it from Core's method constraints. Direct Core invocations without a caller selection use the bundled English philosophy. A missing selected file stops the dependent operation without fallback. Wording review remains independent of philosophical lookup. Core's own maintenance continues to use its English authority.

Use the real external `grilling` capability, directly or through `grill-me`, when explicitly requested or when material unresolved choices require it. Gather facts before questioning; a fully specified ordinary assessment needs neither dependency lookup nor an interview. When the required capability is unavailable, state which stage is incomplete and continue independent work. Cross-validation requires a different agent’s initial judgment before seeing the author’s proposal; missing that capability leaves a provisional result, not completed cross-validation.

[Principled review](skills/organon-core-principled-review/SKILL.md) defines the full-analysis triggers and six dimensions in one place. It distinguishes the object’s own commitments, the selected review standards, and the method’s constraints. Assess uses findings to judge current philosophical compatibility; absorb separately judges reasons for adoption. Method preferences do not automatically establish core conflicts. Both reuse findings when the triggers apply; ordinary narrow assessment keeps targeted checks, and wording-only work does not launch a full cycle. Principled review returns findings without invoking assess or absorb, editing the object, or adopting a revision. Its bounded self-check does not replace independent cross-validation required by absorption.

`organon-core-wording-review` is a wording tool that can be invoked independently and is used by `organon-core-absorb`. It does not assess requirements, authorization, grounds, validation, philosophy, or bilingual correspondence. `organon-core-assess` retains its own judgment checks without invoking it. Wording review does not replace independent cross-validation.

Ordinary assessment need not trigger absorption. Absorption defaults to a proposal and uses existing explicit authorization for changes; changing philosophical meaning requires the user's explicit decision. See [iteration and review](skills/references/iteration.md) and [validation cases](skills/references/validation.md).

When describing adoption of Organon, we recommend identifying the philosophical text, the scope adopted, and the arrangement for receiving updates. Borrowing ideas or adopting selected provisions does not amount to adopting the complete philosophy, including its meanings and conditions of application. A downstream system may retain a fixed text or agree in advance to follow upstream updates; whether an update takes effect depends on that system’s chosen arrangement. These are usage recommendations, not a registration requirement or an additional philosophical commitment. They do not change this repository’s requirement for the user’s explicit decision on changes to philosophical meaning, and an update’s adoption does not establish its correctness.

## Maintain and assess

The initiating agent coordinates independent skill and documentation maintenance under the shared iteration rules, using the applicable assessment, principled-review, wording, and translation checks. Absorb handles philosophical adoption and the synchronization that decision requires, not general maintenance.

Design, implementation, validation, and revision share a concise record of the object and baseline, objective, grounds, alternatives, assessment, and decision. Repository iteration records stay under ignored `.local/iterations/`; ordinary assessments may stay in the conversation. Only selected, authorized general arguments and cases enter maintained documentation.

Validation examines actual reasoning and behavior, including justified non-absorption, relevant variations, method revision, cross-system applications, and alternative implementations. File checks establish textual integrity only. Self-assessment, independent review, and agreement do not prove the philosophy or a method universally correct.

The former `ORGANON.md`, checker, fixtures, governance records, and CI were retired together. Their original relative paths and archive hash inventory are retained locally in `.local/archived/to_absorb/legacy-core/`; the archive is ignored and is not included in a fresh clone. Earlier tracked versions remain in Git history. Completed local requirements, discussions, and iteration records are collected under `.local/archived/`, with an index in its `README.md`.

Core includes Lean implementations, their checking tools, shared parsing and bilingual reader manuscripts. See [standalone Lean use and evidence](lean/README.md) and [dependency-driven maintenance](AGENTS.md#lean-evidence-maintenance). No automated release mechanism is introduced; checking a model does not establish philosophical correctness.

Licensed under [MIT](LICENSE).
