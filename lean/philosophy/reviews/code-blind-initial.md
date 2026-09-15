# Frozen initial blind code assessment

This record was written before any source text, intended interpretation, author explanation, or other review was supplied. Inputs were restricted to the neutral project and `local command-wrapper instructions`. The root import and all five modules were read in full. No source-fidelity judgment is made. Preserve this initial record without revision; later comparison belongs elsewhere.

## Result

The supplied project builds with Lean 4.33.1. Its checked statements are ordinary definitions, conditional interfaces, small exact models and counterexamples. They do not prove a philosophical system, autonomous compliance, general real-world capability or correctness of a source text. The logical results themselves follow from the definitions and explicit premises inspected. Names frequently describe interpretations broader than the propositions alone.

## Dependency and semantic findings

1. `Logic.lean:4-26` uses arbitrary `W : Type`, claims `W → Prop`, theories as predicates on claims, and universal semantic consequence. Admissibility conjoins the held theory, contextual assumptions and scope. A witness gives consistency (`31-35`); the witness is an explicit substantive premise, not produced by the theorem. Consistency tests only `Q` and is vacuous when `Q` is empty, even for an unsatisfiable held theory (independently compiled). Examples on Boolean worlds demonstrate joint inconsistency, reversible slices and context-sensitive consequences. They do not characterize every kind of practical tension.
2. `Logic.lean:129-144` compares theory membership, contextual assumptions, meanings and scopes extensionally and treats revision-identity change as reportable. `TruthfulReport` requires `true` on change; it permits `true` with no change. This is a one-way specification, not a detector or history log. `conflictRequiresChange:195-197` only proves failure of `Consistent` from positive and negative consequences; no repair or change operation occurs.
3. `Agency.lean:33-35` makes generation the conjunction of an adopted pursuit predicate and revisability of current forms. It contains no execution or growth guarantee. `Expanded:103-105` means list membership gains among precisely two encoded operations, not semantic acquisition of arbitrary abilities. Duplicated inventories do not add an available operation. The external-resource computation requires three optional natural numbers solely because it is programmed that way. The last announcement conjunct in `generationLimits:171` is equality of an enum constructor with itself, unconnected to any reporting agent.
4. `Agency.lean:197-207` makes performed work list membership and reflexivity a universally quantified conditional over supplied rules, ownership and applicability. `noSelfExemption` instantiates that premise. The concrete rules cover five enumerated subjects and two activities; `completeOwnWork` constructs the ten records directly. Empty rules permit empty records (compiled). This is not evidence that a real generation/assessment procedure ran, nor a requirement for every conceivable subject. The self-test counterexample explicitly passes sample 1 but fails 0.
5. `Evidence.lean:11-15` treats records as supplied Boolean tests and outputs; support is truth in all compatible modeled worlds. It does not authenticate measurements. Contradictory records can make bare support vacuous; empirical discharge separately requires a compatible in-scope witness. Empty records can discharge a universally true claim with universally true uncertainty (compiled); the interface requires no nonempty empirical record list. The repeated-measurement examples correctly leave an unmeasured coordinate or budget undetermined.
6. `Evidence.lean:23-24` only checks nonempty concepts and reasons. `FacetArticulated:57-62` additionally ties assumptions, reasons and limits to the facet, which blocks the supplied unrelated articulation. Canonical articulation obtains these ties by construction. There is no semantic quality check of concept strings.
7. `ValueProcedure:35-38` checks nonempty reasons, each reason's conditional implication to a separate consequence within limits, and a nonempty answer string for relevant criticism within limits. It does not test the commitment or starting theory, require satisfiable limits/reasons, require the consequence to support the commitment, or evaluate answer quality. I compiled a value position with commitment always `False`, inconsistent starting assumptions, reason/consequence always `True`, and response `some "x"` satisfying this interface. Through `canonicalGroundsForSingleton`, `Grounds` for that always-false commitment is also constructible. This is an actual semantic boundary, not a claim that the code proves `False`.
8. `Grounds:89-93` enforces a nonempty list, coverage of the caller-supplied applicability predicate, common claim identity, articulation alignment and each facet's discharge. It neither establishes that the applicability predicate identifies all real obligations nor makes all facet kinds truth certificates. Integration often defines applicability as exactly list membership or singleton equality. `AchievementAccountability` is only an alias. `LabeledDuties` ignores labels by definition, so label invariance is definitional.
9. `Choice.lean:34-47` requires at least one listed, valued, satisfied method reason; every status reason is excluded by definition. It does not require all valued requirements, feasibility or optimality. A successor implementation with budget increased to 2 is justified by simplicity alone while still failing the identity output objective (compiled). Explanation means numerical equality; procedure means only that the trace's last entry equals the output. Neither checks causal explanation or intermediate trace validity. `singleFeasible` quantifies over exactly identity/successor, not all implementations.
10. `Integration.lean:24-47` models worlds as those two candidates. A run at zero identifies identity, whose universal identity behavior is known by definition. Thus `observedCapability` is valid within a closed model; it is not induction from one observation over unrestricted programs. `changedOutsideZero` in Choice already illustrates an implementation excluded from that candidate type. `held:52` includes capability itself, but the separate support theorem derives capability via candidate identification rather than assuming held capability.
11. The integrated charter is a conjunction of constructed policy, semantic consistency and prefilled records. `jointWitness:238-245` supplies the chosen identity world and already checked components; this is a satisfiable example, not a universal theorem that these commitments can always be fulfilled together.
12. `commitmentPosition:145-149` stores the commitment itself as its starting assumption. The procedure proof instead establishes reason-to-consequence implications, including generation's run inequality implying an existential inequality, consistency from admissibility, reflexivity from record membership, empirical compatibility implying capability, and output correctness giving an output reason. None is automatically an argument for adoption of the named commitment. `reasonsBelongToCommitments` proves field equalities and interface satisfaction. Its criticism is budget failure while limits restrict to the identity world where the budget holds; additionally a constant nonempty response is supplied for every world. `groundsSelfAssessment` shows a record and the existing observation implication, not self-proof of an epistemic principle.
13. `Evidence.lean:407-486` distinguishes matching recorded/actual numeric fields, matching setting fields, a fixed upper bound, universal doubling output, and an attached tiny executable program with equal output. The counterexamples establish these distinctions. `ExternalCertificate` stores output-correctness proof only and carries no external provenance; `externalAssessment` constructs it locally. `nonExecutableAssessment` means a discharged inferential facet has no empirical tag, not that the mathematical proposition is undecidable or an evaluation procedure cannot run.

## Verification

- Actual commands: `rtk read local command-wrapper instructions`; `rtk proxy python3 -c ...` for project-only inventory and complete line-numbered source reads; `rtk proxy lake build` (exit 0, 8 jobs); `rtk proxy lake env lean --version`; `rtk proxy python3 - <<'PY' ...` to generate and execute `rtk proxy lake env lean --stdin` with `#print axioms` for every source-declared theorem, definition, abbreviation, structure and inductive.
- Runtime: Lean 4.33.1, arm64-apple-darwin24.6.0, commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6, Release. No upgrade or dependency installation was performed. The build generated its normal local manifest/cache.
- The full transitive axiom audit below returned exit 0. No `sorryAx` or project-specific axioms appeared; the only reported axioms were `propext`, `Quot.sound`, and for some proofs `Classical.choice`.
- Additional stdin probes checked the seven boundary cases described above. First combined probe exited 1 because `decide` did not unfold `MethodContent` sufficiently; replacing that tactic with `change 2 ≤ 2; decide` produced exit 0 for the unchanged proposition and all seven probes. This was a probe elaboration correction, with no project code change.
- No original-source interpretation, external comparison or source-fidelity review occurred. Detailed per-line English explanation is a separate artifact and may be completed after this frozen initial record.

## Input hashes

- `CoreReader.lean`: `80eee78ec3453fefdb26d3dbce97f0447d4b9ffeb4683604dad0c03902a1bfdd`
- `CoreReader/Agency.lean`: `7a86cc678ce6727a797e819f30d2aa2ffa5657c49e79da9799d114a966b5279a`
- `CoreReader/Choice.lean`: `67e6c3dd951d4c1c1324a5b9d60a0ed3e2f81f1794b3b534d261ae07400d66e5`
- `CoreReader/Evidence.lean`: `071cd93df9d011abc692f5c74fb2abb6d3ca3ac5cd14b76fa08a1ccec3ee7f95`
- `CoreReader/Integration.lean`: `191a64ae7c5b5ef132318e00c55c940389e53b455057e11021f4996946fe8160`
- `CoreReader/Logic.lean`: `c59b7c1e2a4fe3cdb22b54bedc6be75f51fb42357f7510963fd981cac5b70923`

## Complete transitive axiom audit

```text
'CoreReader.Agency.FormKind' does not depend on any axioms
'CoreReader.Agency.Form' does not depend on any axioms
'CoreReader.Agency.Aim' does not depend on any axioms
'CoreReader.Agency.Policy' does not depend on any axioms
'CoreReader.Agency.Generative' does not depend on any axioms
'CoreReader.Agency.openPolicy' does not depend on any axioms
'CoreReader.Agency.neutralPolicy' does not depend on any axioms
'CoreReader.Agency.permissionNotValuation' depends on axioms: [propext, Quot.sound]
'CoreReader.Agency.revisabilityCovers' does not depend on any axioms
'CoreReader.Agency.Operation' does not depend on any axioms
'CoreReader.Agency.Operation.run' does not depend on any axioms
'CoreReader.Agency.InventoryKind' does not depend on any axioms
'CoreReader.Agency.Item' does not depend on any axioms
'CoreReader.Agency.Available' does not depend on any axioms
'CoreReader.Agency.inventoryNotCapability' depends on axioms: [propext, Quot.sound]
'CoreReader.Agency.State' does not depend on any axioms
'CoreReader.Agency.Expanded' does not depend on any axioms
'CoreReader.Agency.baseState' does not depend on any axioms
'CoreReader.Agency.inflatedState' does not depend on any axioms
'CoreReader.Agency.stableTrace' does not depend on any axioms
'CoreReader.Agency.revisionWithoutProgress' depends on axioms: [propext, Quot.sound]
'CoreReader.Agency.ExternalResources' does not depend on any axioms
'CoreReader.Agency.assistedExecution' does not depend on any axioms
'CoreReader.Agency.availableResources' does not depend on any axioms
'CoreReader.Agency.StableReason' does not depend on any axioms
'CoreReader.Agency.Announcement' does not depend on any axioms
'CoreReader.Agency.generationLimits' depends on axioms: [propext, Quot.sound]
'CoreReader.Agency.Phase' does not depend on any axioms
'CoreReader.Agency.Subject' does not depend on any axioms
'CoreReader.Agency.Subject.owner' does not depend on any axioms
'CoreReader.Agency.Activity' does not depend on any axioms
'CoreReader.Agency.Principle' does not depend on any axioms
'CoreReader.Agency.Performed' does not depend on any axioms
'CoreReader.Agency.Reflexive' does not depend on any axioms
'CoreReader.Agency.noSelfExemption' does not depend on any axioms
'CoreReader.Agency.applicationRule' does not depend on any axioms
'CoreReader.Agency.applicationWork' does not depend on any axioms
'CoreReader.Agency.applicabilityRetained' depends on axioms: [propext, Classical.choice, Quot.sound]
'CoreReader.Agency.ownSubjects' does not depend on any axioms
'CoreReader.Agency.ownRules' does not depend on any axioms
'CoreReader.Agency.completeOwnWork' does not depend on any axioms
'CoreReader.Agency.completeOwnWork_reflexive' depends on axioms: [propext, Quot.sound]
'CoreReader.Agency.generationNotReflexivity' depends on axioms: [propext, Quot.sound]
'CoreReader.Agency.ownArithmeticPrinciple' does not depend on any axioms
'CoreReader.Agency.selfTest' does not depend on any axioms
'CoreReader.Agency.selfTestDoesNotProve' does not depend on any axioms
'CoreReader.Choice.StatusKind' does not depend on any axioms
'CoreReader.Choice.MethodReason' does not depend on any axioms
'CoreReader.Choice.Reason' does not depend on any axioms
'CoreReader.Choice.Implementation' does not depend on any axioms
'CoreReader.Choice.Requirements' does not depend on any axioms
'CoreReader.Choice.MethodContent' does not depend on any axioms
'CoreReader.Choice.Relevant' does not depend on any axioms
'CoreReader.Choice.JustifiedChoice' does not depend on any axioms
'CoreReader.Choice.statusOnlyFails' depends on axioms: [propext]
'CoreReader.Choice.identityImpl' does not depend on any axioms
'CoreReader.Choice.successorImpl' does not depend on any axioms
'CoreReader.Choice.changedOutsideZero' does not depend on any axioms
'CoreReader.Choice.identityRequirements' does not depend on any axioms
'CoreReader.Choice.objectiveReason' does not depend on any axioms
'CoreReader.Choice.identityOutputReason' does not depend on any axioms
'CoreReader.Choice.identityJustified' depends on axioms: [propext]
'CoreReader.Choice.conventionWithReason' depends on axioms: [propext]
'CoreReader.Choice.Candidate' does not depend on any axioms
'CoreReader.Choice.implementation' does not depend on any axioms
'CoreReader.Choice.Feasible' does not depend on any axioms
'CoreReader.Choice.singleFeasible' depends on axioms: [propext, Classical.choice, Quot.sound]
'CoreReader.Choice.localNotGlobal' does not depend on any axioms
'CoreReader.Choice.internalReasons' depends on axioms: [propext, Quot.sound]
'CoreReader.Choice.openNotEquivalent' depends on axioms: [propext]
'CoreReader.Choice.priorityClaim' does not depend on any axioms
'CoreReader.Choice.statusFacts' does not depend on any axioms
'CoreReader.Choice.statusFactsModel' does not depend on any axioms
'CoreReader.Choice.priorityArticulation' does not depend on any axioms
'CoreReader.Choice.AssessmentAccurate' does not depend on any axioms
'CoreReader.Choice.statusDoesNotEntailPriority' does not depend on any axioms
'CoreReader.Choice.generalGroundsNotChoice' depends on axioms: [propext]
'CoreReader.Evidence.Record' does not depend on any axioms
'CoreReader.Evidence.Compatible' does not depend on any axioms
'CoreReader.Evidence.Supports' does not depend on any axioms
'CoreReader.Evidence.Articulation' does not depend on any axioms
'CoreReader.Evidence.Articulated' does not depend on any axioms
'CoreReader.Evidence.ValuePosition' does not depend on any axioms
'CoreReader.Evidence.ValueProcedure' does not depend on any axioms
'CoreReader.Evidence.Facet' does not depend on any axioms
'CoreReader.Evidence.Facet.claim' does not depend on any axioms
'CoreReader.Evidence.FacetDischarged' does not depend on any axioms
'CoreReader.Evidence.FacetArticulated' does not depend on any axioms
'CoreReader.Evidence.canonicalArticulation' does not depend on any axioms
'CoreReader.Evidence.canonicalFacetArticulated' does not depend on any axioms
'CoreReader.Evidence.canonicalArticulated' depends on axioms: [propext]
'CoreReader.Evidence.Grounds' does not depend on any axioms
'CoreReader.Evidence.AchievementAccountability' does not depend on any axioms
'CoreReader.Evidence.achievementNeedsSupport' does not depend on any axioms
'CoreReader.Evidence.supportWeakening' does not depend on any axioms
'CoreReader.Evidence.evidenceWeakeningCanLoseSupport' depends on axioms: [propext]
'CoreReader.Evidence.scopeRestriction' does not depend on any axioms
'CoreReader.Evidence.Duties' does not depend on any axioms
'CoreReader.Evidence.LabeledDuties' does not depend on any axioms
'CoreReader.Evidence.assessmentUnion' does not depend on any axioms
'CoreReader.Evidence.labelsCannotWaive' does not depend on any axioms
'CoreReader.Evidence.switchRecord' does not depend on any axioms
'CoreReader.Evidence.switchCompatible' depends on axioms: [propext]
'CoreReader.Evidence.switchSupported' depends on axioms: [propext]
'CoreReader.Evidence.optionBenefit' does not depend on any axioms
'CoreReader.Evidence.optionCost' does not depend on any axioms
'CoreReader.Evidence.switchPosition' does not depend on any axioms
'CoreReader.Evidence.switchValueProcedure' depends on axioms: [propext, Classical.choice, Quot.sound]
'CoreReader.Evidence.unsupportedPosition' does not depend on any axioms
'CoreReader.Evidence.switchEmpirical' does not depend on any axioms
'CoreReader.Evidence.switchEmpiricalDischarged' depends on axioms: [propext]
'CoreReader.Evidence.mixedMissingResponsibility' depends on axioms: [propext]
'CoreReader.Evidence.uninformativeArgument' does not depend on any axioms
'CoreReader.Evidence.articulationNotSupport' depends on axioms: [propext]
'CoreReader.Evidence.unrelatedArticulationRejected' depends on axioms: [propext]
'CoreReader.Evidence.temperatureRecord' does not depend on any axioms
'CoreReader.Evidence.temperatureCompatible' depends on axioms: [propext]
'CoreReader.Evidence.BudgetWorld' does not depend on any axioms
'CoreReader.Evidence.announcement' does not depend on any axioms
'CoreReader.Evidence.announcementPosition' does not depend on any axioms
'CoreReader.Evidence.announcementNotBudgetReason' depends on axioms: [propext]
'CoreReader.Evidence.actionRecord' does not depend on any axioms
'CoreReader.Evidence.actionCompatible' depends on axioms: [propext]
'CoreReader.Evidence.measurementRepeatNotSupport' depends on axioms: [propext]
'CoreReader.Evidence.selfAssertionNotReason' depends on axioms: [propext]
'CoreReader.Evidence.valueWithoutSelfProof' depends on axioms: [propext, Classical.choice, Quot.sound]
'CoreReader.Evidence.heterogeneousReasons' depends on axioms: [propext, Classical.choice, Quot.sound]
'CoreReader.Evidence.zeroRecord' does not depend on any axioms
'CoreReader.Evidence.localGenerator' does not depend on any axioms
'CoreReader.Evidence.allTrue' does not depend on any axioms
'CoreReader.Evidence.zeroCompatible' depends on axioms: [propext]
'CoreReader.Evidence.selfOriginDoesNotSupport' depends on axioms: [propext]
'CoreReader.Evidence.localNotUniversal' depends on axioms: [propext]
'CoreReader.Evidence.hiddenDifference' does not depend on any axioms
'CoreReader.Evidence.singleObservation' depends on axioms: [propext]
'CoreReader.Evidence.arithmeticFacet' does not depend on any axioms
'CoreReader.Evidence.usesObservation' depends on axioms: [propext]
'CoreReader.Evidence.noUniversalChain' depends on axioms: [propext]
'CoreReader.Evidence.Trial' does not depend on any axioms
'CoreReader.Evidence.Verified' does not depend on any axioms
'CoreReader.Evidence.Reproduced' does not depend on any axioms
'CoreReader.Evidence.Bounded' does not depend on any axioms
'CoreReader.Evidence.variableOutcomesStableBound' depends on axioms: [propext, Quot.sound]
'CoreReader.Evidence.verificationReproductionStability' depends on axioms: [propext, Quot.sound]
'CoreReader.Evidence.Program' does not depend on any axioms
'CoreReader.Evidence.Program.eval' does not depend on any axioms
'CoreReader.Evidence.Process' does not depend on any axioms
'CoreReader.Evidence.OutputContract' does not depend on any axioms
'CoreReader.Evidence.ExplanationContract' does not depend on any axioms
'CoreReader.Evidence.outputOnlyProcess' does not depend on any axioms
'CoreReader.Evidence.explainedProcess' does not depend on any axioms
'CoreReader.Evidence.outputNotExplanation' does not depend on any axioms
'CoreReader.Evidence.applicationContractsDiffer' does not depend on any axioms
'CoreReader.Evidence.ExternalCertificate' does not depend on any axioms
'CoreReader.Evidence.externalAssessment' does not depend on any axioms
'CoreReader.Evidence.arithmeticArticulation' does not depend on any axioms
'CoreReader.Evidence.nonExecutableAssessment' depends on axioms: [propext]
'CoreReader.Integration.canonicalGrounds' depends on axioms: [propext]
'CoreReader.Integration.canonicalGroundsForSingleton' depends on axioms: [propext]
'CoreReader.Integration.World' does not depend on any axioms
'CoreReader.Integration.capability' does not depend on any axioms
'CoreReader.Integration.observation' does not depend on any axioms
'CoreReader.Integration.actual' does not depend on any axioms
'CoreReader.Integration.observationIdentifies' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.capabilityActual' does not depend on any axioms
'CoreReader.Integration.observedCapability' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.capabilityFacet' does not depend on any axioms
'CoreReader.Integration.capabilityFacetChecked' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.budgetClaim' does not depend on any axioms
'CoreReader.Integration.held' does not depend on any axioms
'CoreReader.Integration.Question' does not depend on any axioms
'CoreReader.Integration.context' does not depend on any axioms
'CoreReader.Integration.actualAdmissible' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.jointConsistent' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.revisedHeld' does not depend on any axioms
'CoreReader.Integration.initialSnapshot' does not depend on any axioms
'CoreReader.Integration.revisedSnapshot' does not depend on any axioms
'CoreReader.Integration.revisionKeepsConsistency' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.work' does not depend on any axioms
'CoreReader.Integration.Charter' does not depend on any axioms
'CoreReader.Integration.charterChecked' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.OwnCapabilityDuty' does not depend on any axioms
'CoreReader.Integration.ownCapabilityGrounded' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.Commitment' does not depend on any axioms
'CoreReader.Integration.commitmentClaim' does not depend on any axioms
'CoreReader.Integration.reasonContent' does not depend on any axioms
'CoreReader.Integration.consequenceContent' does not depend on any axioms
'CoreReader.Integration.commitmentPosition' does not depend on any axioms
'CoreReader.Integration.positionProcedure' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.commitmentFacet' does not depend on any axioms
'CoreReader.Integration.reasonsBelongToCommitments' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.groundsSelfAssessment' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.existingPhilosophy' does not depend on any axioms
'CoreReader.Integration.existingPhilosophyNotPrivileged' depends on axioms: [propext]
'CoreReader.Integration.applicationRetainsDuties' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.jointWitness' depends on axioms: [propext, Quot.sound]
'CoreReader.Integration.costAllowanceRecord' does not depend on any axioms
'CoreReader.Integration.unsupportedCapabilityFacet' does not depend on any axioms
'CoreReader.Integration.costDoesNotSupportOutput' depends on axioms: [propext]
'CoreReader.Integration.charterNotGrounds' depends on axioms: [propext, Quot.sound]
'CoreReader.Logic.Claim' does not depend on any axioms
'CoreReader.Logic.Theory' does not depend on any axioms
'CoreReader.Logic.Models' does not depend on any axioms
'CoreReader.Logic.Entails' does not depend on any axioms
'CoreReader.Logic.Satisfiable' does not depend on any axioms
'CoreReader.Logic.Context' does not depend on any axioms
'CoreReader.Logic.Admissible' does not depend on any axioms
'CoreReader.Logic.Consequence' does not depend on any axioms
'CoreReader.Logic.Consistent' does not depend on any axioms
'CoreReader.Logic.consequenceConsistency' does not depend on any axioms
'CoreReader.Logic.emptyTheory' does not depend on any axioms
'CoreReader.Logic.singleton' does not depend on any axioms
'CoreReader.Logic.union' does not depend on any axioms
'CoreReader.Logic.modelsSingleton' does not depend on any axioms
'CoreReader.Logic.modelsUnion' does not depend on any axioms
'CoreReader.Logic.premiseP' does not depend on any axioms
'CoreReader.Logic.premiseRule' does not depend on any axioms
'CoreReader.Logic.premiseNotQ' does not depend on any axioms
'CoreReader.Logic.jointTheory' does not depend on any axioms
'CoreReader.Logic.jointConflict' does not depend on any axioms
'CoreReader.Logic.revisionSlice' does not depend on any axioms
'CoreReader.Logic.revisionCanReverse' does not depend on any axioms
'CoreReader.Logic.onQuestion' does not depend on any axioms
'CoreReader.Logic.assumptionContext' does not depend on any axioms
'CoreReader.Logic.meaningContext' does not depend on any axioms
'CoreReader.Logic.scopeContext' does not depend on any axioms
'CoreReader.Logic.contextDifferences' does not depend on any axioms
'CoreReader.Logic.Snapshot' does not depend on any axioms
'CoreReader.Logic.SameContent' does not depend on any axioms
'CoreReader.Logic.TruthfulReport' does not depend on any axioms
'CoreReader.Logic.semanticChangeMustBeReported' does not depend on any axioms
'CoreReader.Logic.representationOrderIrrelevant' does not depend on any axioms
'CoreReader.Logic.contextSnapshot' does not depend on any axioms
'CoreReader.Logic.hiddenContextChangeRejected' does not depend on any axioms
'CoreReader.Logic.tensionWithoutContradiction' does not depend on any axioms
'CoreReader.Logic.conflictRequiresChange' does not depend on any axioms
'CoreReader.Logic.consistentFalse' does not depend on any axioms
'CoreReader.Logic.consistentIncomplete' does not depend on any axioms
'CoreReader.Logic.compatibilityNotEntailment' does not depend on any axioms
```
