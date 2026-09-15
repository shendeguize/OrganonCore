# Philosophy and Lean: detailed reader

This reader follows 28 frozen targets. Target acceptance, Lean checking and source fidelity are separate judgments. Defining a duty does not establish its fulfillment; a finite model does not establish universal real-world correctness. The tracing appendix retains all 33 source paragraphs and two empty headings.

`accepted` records acceptance of a target within its stated scope; `limited` retains a bounded formal correspondence for a source paragraph; `incomplete` retains material without a complete source proof. Lean `passed` reports checking of registered declarations; checking a normative interface is not fulfillment of its duty.

[Other granularity](overview.md) · [Frozen targets](targets.json) · [Review and exposure record](reviews/README.md) · [Actual declaration types](evidence/declaration-types.json)

| Target | Claim | Kind | Target review |
| --- | --- | --- | --- |
| [T01](#t01) | Authority and boundaries | boundary | accepted |
| [T02](#t02) | A shared nonempty model | satisfiability | accepted |
| [T03](#t03) | Generative commitment | specification | accepted |
| [T04](#t04) | Permission does not supply valuation | nonentailment | accepted |
| [T05](#t05) | Revisability and progress | theorem | accepted |
| [T06](#t06) | Generation has limits | nonentailment | accepted |
| [T07](#t07) | Achievement needs matching grounds | theorem | accepted |
| [T08](#t08) | Whole-theory consistency | theorem | accepted |
| [T09](#t09) | Revision and context changes | nonentailment | accepted |
| [T10](#t10) | Changes must be acknowledged | theorem | accepted |
| [T11](#t11) | Tension and contradiction | nonentailment | accepted |
| [T12](#t12) | Consistency is not truth or coverage | nonentailment | accepted |
| [T13](#t13) | Reflexive work with actual inquiry and reasons | specification | accepted |
| [T14](#t14) | Self-application is not self-proof | nonentailment | accepted |
| [T15](#t15) | Support, strength and scope | theorem | accepted |
| [T16](#t16) | All applicable aspects retain duties | theorem | accepted |
| [T17](#t17) | Articulation, repetition and assertion are insufficient | nonentailment | accepted |
| [T18](#t18) | Adopted value positions and joint reasons | satisfiability | accepted |
| [T19](#t19) | Local evidence and omitted differences | nonentailment | accepted |
| [T20](#t20) | Observation, reproduction and stability | satisfiability | accepted |
| [T21](#t21) | Capability contracts and external assessment | nonentailment | accepted |
| [T22](#t22) | Relevant implementation reasons | theorem | accepted |
| [T23](#t23) | An accurate assessment does not enforce the extra choice norm | nonentailment | accepted |
| [T24](#t24) | Openness does not imply equivalence or plurality | nonentailment | accepted |
| [T25](#t25) | Mutual application in one system | theorem | accepted |
| [T26](#t26) | Distinct commitments and their combination | nonentailment | accepted |
| [T27](#t27) | Application duties and individual reasons | theorem | accepted |
| [T28](#t28) | Assessment without observation tests | satisfiability | accepted |

<a id="t01"></a>
## T01 · Authority and boundaries

The adopted English source, including its meanings, applicability and limits, remains the authority against which this formalization is compared.

**Premises and representation:** This entry records the selected source and documentary boundary; it has no required Lean declaration.

**Proof or check:** The target catalog records the source units and their boundary status. There is no mathematical derivation of the authority or adoption of the philosophy.

**Limits:** Source correspondence and acceptance of a philosophical position are separate from kernel checking. Neither the catalog nor the proofs establish universal philosophical correctness.

**State:** accepted (boundary). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.preamble#p1](#source-organon-preamble-p1), [organon.preamble#p2](#source-organon-preamble-p2), [organon.charter.overview#p1](#source-organon-charter-overview-p1), [organon.charter.overview#p2](#source-organon-charter-overview-p2), [organon.charter.overview#p3](#source-organon-charter-overview-p3)

This boundary target has no Lean declaration.


<a id="t02"></a>
## T02 · A shared nonempty model

One explicitly inhabited System and World jointly carry the charter, its own supported output capability, relevant implementation choice, and grounds for each of five represented commitments.

**Premises and representation:** The witness is actualSystem at actual = (identity, apply). The world type independently varies two implementations and two governance modes. Its context includes the system theory, observation assumptions and application scope; the contracts and assessment adapters are explicit model choices.

**Proof or check:** jointWitness supplies that same pair throughout, using actualAdmissible, charterChecked, ownCapabilityGrounded, identityJustified and reasonsBelongToCommitments. The existential conclusion also identifies the witnesses by equality.

**Limits:** This proves coexistence in the disclosed application model, not correctness of every possible system or independent validation of the adopted normative criteria.

**State:** accepted (satisfiability). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.preamble#p1](#source-organon-preamble-p1), [organon.preamble#p2](#source-organon-preamble-p2), [organon.charter.overview#p2](#source-organon-charter-overview-p2), [organon.charter.overview#p3](#source-organon-charter-overview-p3), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Integration.jointWitness`

[leanified/CoreReader/Integration.lean:595](#line-code-leanified-corereader-integration-lean-595) · case

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem jointWitness :
    ∃ s : System, ∃ w : World,
      Admissible (systemHeld s) (systemContext s) w ∧ Charter s w ∧
      OwnCapabilityDuty s w [capabilityFacet] ∧ systemCapability s w ∧
      JustifiedChoice s.requirements (s.method.realize w) objectiveReason ∧
      (∀ c : Commitment, Grounds (commitmentClaim c) canonicalArticulation
        (fun f => f = commitmentFacet c) [commitmentFacet c]) ∧
      s = actualSystem ∧ w = actual := by
```


<a id="t03"></a>
## T03 · Generative commitment

Generative is defined as valuing expanded understanding and construction, together with revisability of every form that the policy treats as current.

**Premises and representation:** The parameter is a Policy with worthPursuing, current and revisable predicates. The revisability clause applies to forms satisfying current; permitsVersion is a separate field.

**Proof or check:** The declaration is a conjunction defining an obligation. Later concrete policies instantiate it; the definition itself is not a theorem that any agent satisfies it.

**Limits:** The representation does not establish that the valued aim is ultimately good, that every permitted edit advances it, or that a current form must be changed immediately.

**State:** accepted (specification). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.overview#p2](#source-organon-charter-overview-p2), [organon.charter.overview#p3](#source-organon-charter-overview-p3), [organon.charter.self-transcendence#p1](#source-organon-charter-self-transcendence-p1), [organon.charter.self-transcendence.orientation#p1](#source-organon-charter-self-transcendence-orientation-p1), [organon.charter.self-transcendence.non-finality#p1](#source-organon-charter-self-transcendence-non-finality-p1), [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2)

### `CoreReader.Agency.Generative`

[leanified/CoreReader/Agency.lean:33](#line-code-leanified-corereader-agency-lean-33) · definition

Core dependencies: none.

```lean
def Generative (p : Policy) : Prop :=
```


<a id="t04"></a>
## T04 · Permission does not supply valuation

Permission to change a version can hold while the generative valuation is absent.

**Premises and representation:** The concrete neutral policy permits versions but assigns no worth to the expansion aim; Generative retains its valuation conjunct.

**Proof or check:** permissionNotValuation evaluates the permission and unfolds Generative to refute its missing valuation clause.

**Limits:** This is a counterexample to an implication between represented predicates; it does not justify either policy or classify all real permissions.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.self-transcendence.orientation#p1](#source-organon-charter-self-transcendence-orientation-p1)

### `CoreReader.Agency.permissionNotValuation`

[leanified/CoreReader/Agency.lean:49](#line-code-leanified-corereader-agency-lean-49) · case

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem permissionNotValuation :
    neutralPolicy.permitsVersion 0 1 ∧ (0 : Nat) ≠ 1 ∧ ¬ Generative neutralPolicy := by
```


<a id="t05"></a>
## T05 · Revisability and progress

Generative policies leave current forms revisable, while the concrete open policy can remain generative through a trace with no capability expansion.

**Premises and representation:** The general revisability result assumes Generative and that the selected form is current. The example covers organization, method, principle, appearance and artifact, and uses a constant base-state trace.

**Proof or check:** revisabilityCovers projects the revisability obligation. revisionWithoutProgress instantiates the open policy and shows that adjacent identical states contain no newly understood or constructed operation.

**Limits:** Revisability and permission are not evidence that revision occurred or improved capability. The result is not a universal claim that revision never yields progress.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.self-transcendence.non-finality#p1](#source-organon-charter-self-transcendence-non-finality-p1), [organon.relationships.terms#p1](#source-organon-relationships-terms-p1)

### `CoreReader.Agency.revisabilityCovers`

[leanified/CoreReader/Agency.lean:58](#line-code-leanified-corereader-agency-lean-58) · theorem

Core dependencies: none.

```lean
theorem revisabilityCovers (p : Policy) (h : Generative p) (k : FormKind) (v : Nat)
    (hc : p.current ⟨k, v⟩) : p.revisable ⟨k, v⟩ := h.2 _ hc
```

### `CoreReader.Agency.revisionWithoutProgress`

[leanified/CoreReader/Agency.lean:123](#line-code-leanified-corereader-agency-lean-123) · case

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem revisionWithoutProgress :
    Generative openPolicy ∧
    (∀ k : FormKind, openPolicy.revisable ⟨k, 0⟩) ∧
    (∀ t, ¬ Expanded (stableTrace t) (stableTrace (t + 1))) := by
```


<a id="t06"></a>
## T06 · Generation has limits

One generating system illustrates non-progressing inflation, dependence on three external resources, a justified stable action within its application budget, and a false expansion report about its own actual transition.

**Premises and representation:** The system combines openPolicy, baseState, assistedExecution, required copy capability and an inventory budget of 1. inflatedState duplicates artifacts, abstraction layers and vocabulary without adding understood or constructed operations. Its report names this owner, before/after states and successor at input 0 with expected output 1.

**Proof or check:** generationLimits evaluates the same system interface: available resources yield 6, deleting any of experience/knowledge/collaborator or all three yields none; the stable action preserves the current state, required capability and budget. Inflation exceeds that budget, and the system-generated report fails because its claimed new operation is absent.

**Limits:** The resource dependence and budget are declared application conditions. These content-bearing examples do not establish universal laws of learning, mandatory austerity, or the adequacy of any real expansion report.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2)

### `CoreReader.Agency.generationLimits`

[leanified/CoreReader/Agency.lean:222](#line-code-leanified-corereader-agency-lean-222) · case

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem generationLimits :
    Generative generatingSystem.policy ∧
    generatingSystem.policy.permitsVersion 0 0 ∧
    ¬ Expanded generatingSystem.current inflatedState ∧
    generatingSystem.current.inventory.length < inflatedState.inventory.length ∧
    generatingSystem.current.abstractionLayers.length < inflatedState.abstractionLayers.length ∧
    generatingSystem.current.vocabulary.length < inflatedState.vocabulary.length ∧
    generatingSystem.execute availableResources = some 6 ∧
    generatingSystem.execute { availableResources with experience := none } = none ∧
```


<a id="t07"></a>
## T07 · Achievement needs matching grounds

AchievementAccountability requires Grounds for the very achievement claim. Given support and an actual evidence-compatible world, that claim holds there; a concrete expansion case has matching grounds, while its positive self-report alone does not support it.

**Premises and representation:** The general theorem takes a world type, achievement predicate, records, actual world, Compatible records actual and Supports records achievement. Separately, the concrete alternatives share baseState and input 0: extend adds successor, whereas inflate only duplicates content.

**Proof or check:** achievementNeedsSupport applies support to the compatible actual world and includes ConcreteAchievementExample. Actual after-state performance distinguishes extend and supplies canonical matched grounds; the positive report is also compatible with inflate, where Expanded before after is false.

**Limits:** The definition expresses normative accountability without making observation universally mandatory. The theorem assumes support in its general branch and does not infer it from an arbitrary assertion or prove real achievement from record labels.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.self-transcendence.limits#p1](#source-organon-charter-self-transcendence-limits-p1), [organon.charter.self-transcendence.limits#p2](#source-organon-charter-self-transcendence-limits-p2), [organon.grounds#p1](#source-organon-grounds-p1), [organon.grounds.capabilities#p1](#source-organon-grounds-capabilities-p1), [organon.grounds.capabilities#p2](#source-organon-grounds-capabilities-p2)

### `CoreReader.Evidence.AchievementAccountability`

[leanified/CoreReader/Evidence.lean:125](#line-code-leanified-corereader-evidence-lean-125) · definition

Core dependencies: none.

```lean
def AchievementAccountability {W : Type} (achievement : Claim W) (articulations : Facet W → Articulation W)
    (actualApplicable : Facet W → Prop) (facets : List (Facet W)) : Prop :=
```

### `CoreReader.Evidence.achievementNeedsSupport`

[leanified/CoreReader/Evidence.lean:217](#line-code-leanified-corereader-evidence-lean-217) · theorem

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem achievementNeedsSupport {W : Type} (achievement : Claim W) (records : List (Record W))
    (actual : W) (reliableHere : Compatible records actual) (support : Supports records achievement) :
    achievement actual ∧ ConcreteAchievementExample :=
```


<a id="t08"></a>
## T08 · Whole-theory consistency

An inhabited common theory and context cannot semantically yield both answers to one question. Separately satisfiable assumptions may nevertheless become inconsistent when held together.

**Premises and representation:** consequenceConsistency quantifies over world and question types, a held theory and one Context, and assumes an Admissible world satisfying the entire held theory, contextual assumptions and scope simultaneously.

**Proof or check:** The general proof evaluates both consequences at the same witness to obtain a contradiction. jointConflict combines P, P implies Q, and not Q: each singleton has a model, but their union has none.

**Limits:** The nonempty witness is essential to this semantic consistency argument. Pairwise or isolated checks do not establish joint satisfiability, and no empirical truth of the assumptions is inferred.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.consistency#p1](#source-organon-charter-consistency-p1)

### `CoreReader.Logic.consequenceConsistency`

[leanified/CoreReader/Logic.lean:31](#line-code-leanified-corereader-logic-lean-31) · theorem

Core dependencies: none.

```lean
theorem consequenceConsistency {W Q : Type} (t : Theory W) (c : Context W Q)
    (inhabited : ∃ w, Admissible t c w) : Consistent t c := by
```

### `CoreReader.Logic.jointConflict`

[leanified/CoreReader/Logic.lean:59](#line-code-leanified-corereader-logic-lean-59) · case

Core dependencies: none.

```lean
theorem jointConflict :
    Satisfiable (singleton premiseP) ∧ Satisfiable (singleton premiseRule) ∧
    Satisfiable (singleton premiseNotQ) ∧ ¬ Satisfiable jointTheory := by
```


<a id="t09"></a>
## T09 · Revision and context changes

Different time-indexed theories can give opposite answers without either being unsatisfiable; changing assumptions, question meaning or scope can likewise change the answer.

**Premises and representation:** The examples fix explicit Boolean interpretations and separately inhabited contexts. The positive and negative answers belong to different theory slices or contexts, not one unchanged conjunction.

**Proof or check:** revisionCanReverse constructs the two slices and shows their simultaneous union fails. contextDifferences separately changes the assumptions, meaning and scope components while evaluating the corresponding consequences.

**Limits:** These examples distinguish revision and contextual difference from simultaneous contradiction. They do not establish that a particular revision is warranted, truthful or progressive.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.consistency.meaning#p1](#source-organon-charter-consistency-meaning-p1), [organon.charter.consistency.meaning#p2](#source-organon-charter-consistency-meaning-p2)

### `CoreReader.Logic.revisionCanReverse`

[leanified/CoreReader/Logic.lean:78](#line-code-leanified-corereader-logic-lean-78) · case

Core dependencies: none.

```lean
theorem revisionCanReverse :
    Satisfiable (revisionSlice 0) ∧ Satisfiable (revisionSlice 1) ∧
    ¬ Satisfiable (union (revisionSlice 0) (revisionSlice 1)) := by
```

### `CoreReader.Logic.contextDifferences`

[leanified/CoreReader/Logic.lean:102](#line-code-leanified-corereader-logic-lean-102) · case

Core dependencies: none.

```lean
theorem contextDifferences :
    (Consequence emptyTheory (assumptionContext true) () true ∧
      Consequence emptyTheory (assumptionContext false) () false) ∧
    (Consequence emptyTheory (meaningContext true) () true ∧
      Consequence emptyTheory (meaningContext false) () false) ∧
    (Consequence emptyTheory (scopeContext true) () true ∧
      Consequence emptyTheory (scopeContext false) () false) ∧
    (∀ b, ∃ w, Admissible emptyTheory (assumptionContext b) w) ∧
    (∀ b, ∃ w, Admissible emptyTheory (meaningContext b) w) ∧
    (∀ b, ∃ w, Admissible emptyTheory (scopeContext b) w) := by
```


<a id="t10"></a>
## T10 · Changes must be acknowledged

Under TruthfulReport, a semantic change or a different revision identity requires a positive change report. Reordering the same held content does not change that content, and honest reporting does not make revised assumptions true.

**Premises and representation:** The general result assumes two snapshots, a report flag, the TruthfulReport obligation and an actual semantic-or-identity change. SameContent compares held claims, contextual assumptions, meaning and scope extensionally.

**Proof or check:** semanticChangeMustBeReported applies the assumed reporting obligation; representationOrderIrrelevant proves union commutativity. hiddenContextChangeRejected evaluates separate hidden assumption, meaning, scope and identity changes, and an acknowledged revision false at the designated actual world.

**Limits:** The reporting rule is adopted, not derived from logic alone. The cases do not decide every possible form of revision or certify the quality of an acknowledged change.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.consistency.meaning#p1](#source-organon-charter-consistency-meaning-p1), [organon.charter.consistency.meaning#p2](#source-organon-charter-consistency-meaning-p2)

### `CoreReader.Logic.semanticChangeMustBeReported`

[leanified/CoreReader/Logic.lean:142](#line-code-leanified-corereader-logic-lean-142) · theorem

Core dependencies: none.

```lean
theorem semanticChangeMustBeReported {W Q : Type} (a b : Snapshot W Q) (reported : Bool)
    (changed : ¬ SameContent a b ∨ a.revisionIdentity ≠ b.revisionIdentity)
    (h : TruthfulReport a b reported) : reported = true := h changed
```

### `CoreReader.Logic.representationOrderIrrelevant`

[leanified/CoreReader/Logic.lean:150](#line-code-leanified-corereader-logic-lean-150) · theorem

Core dependencies: none.

```lean
theorem representationOrderIrrelevant {W : Type} (p q : Claim W) :
    ∀ r, union (singleton p) (singleton q) r ↔ union (singleton q) (singleton p) r := by
```

### `CoreReader.Logic.hiddenContextChangeRejected`

[leanified/CoreReader/Logic.lean:160](#line-code-leanified-corereader-logic-lean-160) · case

Core dependencies: none.

```lean
theorem hiddenContextChangeRejected :
    ¬ TruthfulReport (contextSnapshot (assumptionContext true)) (contextSnapshot (assumptionContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (meaningContext true)) (contextSnapshot (meaningContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (scopeContext true)) (contextSnapshot (scopeContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (scopeContext true) 0) (contextSnapshot (scopeContext true) 1) false ∧
    (TruthfulReport (contextSnapshot (assumptionContext true)) (contextSnapshot (assumptionContext false)) true ∧
      ¬ Models (assumptionContext false).assumptions true) := by
```


<a id="t11"></a>
## T11 · Tension and contradiction

Distinct resource objectives can be jointly satisfiable. In contrast, positive and negative consequences for the same question in the same theory and context violate Consistent.

**Premises and representation:** The tension example uses the predicates 4 ≤ budget and budget ≤ 6. conflictRequiresChange takes an arbitrary theory, context and question together with both opposed consequences.

**Proof or check:** tensionWithoutContradiction supplies budget 5 and proves the predicates are different. conflictRequiresChange applies the definition of Consistent to the given pair of consequences.

**Limits:** The latter theorem proves inconsistency; it neither constructs a repair nor determines which commitment should change. The resource example does not classify every practical tension.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.consistency.limits#p1](#source-organon-charter-consistency-limits-p1)

### `CoreReader.Logic.tensionWithoutContradiction`

[leanified/CoreReader/Logic.lean:186](#line-code-leanified-corereader-logic-lean-186) · case

Core dependencies: none.

```lean
theorem tensionWithoutContradiction :
    (∃ budget : Nat, 4 ≤ budget ∧ budget ≤ 6) ∧
    ¬ ((fun n : Nat => 4 ≤ n) = (fun n : Nat => n ≤ 6)) := by
```

### `CoreReader.Logic.conflictRequiresChange`

[leanified/CoreReader/Logic.lean:195](#line-code-leanified-corereader-logic-lean-195) · theorem

Core dependencies: none.

```lean
theorem conflictRequiresChange {W Q : Type} (t : Theory W) (c : Context W Q) (q : Q)
    (positive : Consequence t c q true) (negative : Consequence t c q false) :
    ¬ Consistent t c := fun h => h q ⟨positive,negative⟩
```


<a id="t12"></a>
## T12 · Consistency is not truth or coverage

Satisfiability does not establish truth at a designated actual world, and a satisfiable theory can leave an explicit question undecided.

**Premises and representation:** The examples use Boolean worlds: the singleton assumption that the world is true, and the empty theory with the question whether the world is true.

**Proof or check:** consistentFalse supplies the true model and refutes the singleton assumption at false. consistentIncomplete supplies models of the empty theory and uses opposite worlds to refute entailment of each answer.

**Limits:** These are explicit satisfiability and non-entailment results, not an empirical classification of actual beliefs or a general incompleteness theorem for formal arithmetic.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.consistency.limits#p1](#source-organon-charter-consistency-limits-p1), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Logic.consistentFalse`

[leanified/CoreReader/Logic.lean:205](#line-code-leanified-corereader-logic-lean-205) · case

Core dependencies: none.

```lean
theorem consistentFalse : Satisfiable (singleton (fun w : Bool => w = true)) ∧
    ¬ Models (singleton (fun w : Bool => w = true)) false := by
```

### `CoreReader.Logic.consistentIncomplete`

[leanified/CoreReader/Logic.lean:216](#line-code-leanified-corereader-logic-lean-216) · case

Core dependencies: none.

```lean
theorem consistentIncomplete : Satisfiable (emptyTheory : Theory Bool) ∧
    ¬ Entails emptyTheory (fun w : Bool => w = true) ∧
    ¬ Entails emptyTheory (fun w : Bool => w ≠ true) := by
```


<a id="t13"></a>
## T13 · Reflexive work with actual inquiry and reasons

Reflexive requires coherent principle registration and valid applications to every owned subject where each registered principle actually applies. A valid application carries the principle’s inquiry, reasons, limits and a result satisfying its independently specified meaning.

**Premises and representation:** The parameters are an owner, registered principles and work records. ValidApplication binds principle identity, subject, generation/assessment activity, resolved target method, exact inquiry, nonempty target-matched reasons, limits and semantic result; applicability and ownership are explicit conditions.

**Proof or check:** This declaration defines the obligation. The shared model’s completeOwnWork_reflexive supplies content-checked work for the system, two principles and their formation/application/revision processes; the evaluator uses actual samples, declared scope and counterexamples, and accepts an insufficient verdict for revision.

**Limits:** Generation is required only for generationEligible subjects; application-phase processes receive assessment in this model. Valid work, including a negative verdict, does not prove the assessed principles correct or exhaust real reflexive inquiry.

**State:** accepted (specification). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.reflexivity#p1](#source-organon-charter-reflexivity-p1), [organon.charter.reflexivity.meaning#p1](#source-organon-charter-reflexivity-meaning-p1), [organon.charter.reflexivity.limits#p1](#source-organon-charter-reflexivity-limits-p1)

### `CoreReader.Agency.Reflexive`

[leanified/CoreReader/Reflexivity.lean:151](#line-code-leanified-corereader-reflexivity-lean-151) · definition

Core dependencies: none.

```lean
def Reflexive (owner : Nat) (rules : List Principle) (records : List WorkRecord) : Prop :=
```


<a id="t14"></a>
## T14 · Self-application is not self-proof

An applicable owned subject cannot be omitted from a Reflexive work set, while inapplicable subjects need not receive work. Passing a selected self-test and generating a revision oneself do not establish universal correctness.

**Premises and representation:** noSelfExemption assumes Reflexive, principle membership, matching owner and applicability. applicabilityRetained preserves those conditions. The counterexamples use the same arithmetic principle across test and claim, and a GeneratingProcess with owner 17, a false prior, seed 0 and its actual output revision.

**Proof or check:** The general proofs extract valid work and its scope. The arithmetic principle passes at 1 but fails at 0. selfOriginDoesNotSupport includes the actual producer/prior/output relationship: its revision passes the input-0 observation but fails at 1, giving an evidence-compatible counterworld to allTrue.

**Limits:** Scope coverage is weaker than full valid Reflexive work. The examples reject self-certification implications; they do not show all self-tests or self-generated revisions are worthless.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.charter.reflexivity.limits#p1](#source-organon-charter-reflexivity-limits-p1)

### `CoreReader.Agency.noSelfExemption`

[leanified/CoreReader/Reflexivity.lean:165](#line-code-leanified-corereader-reflexivity-lean-165) · theorem

Core dependencies: none.

```lean
theorem noSelfExemption (owner : Nat) (rules : List Principle) (records : List WorkRecord)
    (h : Reflexive owner rules records) (rule : Principle) (hr : rule ∈ rules)
    (s : Subject) (hs : s.owner = owner) (ha : rule.applicable s) :
    Performed records s rule.activity := h.toScope rule hr s hs ha
```

### `CoreReader.Agency.applicabilityRetained`

[leanified/CoreReader/Reflexivity.lean:407](#line-code-leanified-corereader-reflexivity-lean-407) · theorem

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem applicabilityRetained (owner : Nat) (rules : List Principle) (records : List WorkRecord) :
    (Reflexive owner rules records → ReflexiveScope owner rules records) ∧
    (ReflexiveScope owner rules records ↔
      ∀ rule ∈ rules, ∀ s, s.owner = owner → (¬ rule.applicable s ∨ Performed records s rule.activity)) ∧
    (Reflexive 0 [applicationRule] applicationWork ∧
      ¬ Performed applicationWork (.system 0) .assessment) := by
```

### `CoreReader.Agency.selfTestDoesNotProve`

[leanified/CoreReader/Agency.lean:275](#line-code-leanified-corereader-agency-lean-275) · case

Core dependencies: none.

```lean
theorem selfTestDoesNotProve :
    selfTest [1] = true ∧ ownArithmeticPrinciple 0 = false ∧
      ¬ (∀ n, ownArithmeticPrinciple n = true) := by
```

### `CoreReader.Evidence.selfOriginDoesNotSupport`

[leanified/CoreReader/Evidence.lean:616](#line-code-leanified-corereader-evidence-lean-616) · case

Core dependencies: `propext`.

```lean
theorem selfOriginDoesNotSupport :
    localGenerator 0 0 = true ∧ localGenerator 0 1 = false ∧
    Compatible [zeroRecord] (localGenerator 0) ∧
    ¬ Supports [zeroRecord] allTrue ∧ OwnedRevisionExample := by
```


<a id="t15"></a>
## T15 · Support, strength and scope

Grounds binds the same claim to all actually applicable represented facets and their actual articulations. With evidence fixed, support is preserved when the conclusion is weakened or its quantified scope is restricted.

**Premises and representation:** Grounds takes a claim, facet-indexed articulations, an actualApplicable predicate and a nonempty list covering that predicate. Each listed facet must have that claim, be articulated, match its actual premises/reasons/limits, and pass its disclosed assessment adapter. supportWeakening assumes Supports records p and pointwise p implies q; scopeRestriction assumes a supported broad-domain conclusion and inclusion of the narrower domain.

**Proof or check:** The obligation is defined, not universally proved. Both preservation proofs apply the original support at the same compatible world and then the implication or scope inclusion. The empirical, inferential and value articulation adapters expose the corresponding real record compatibility, theory or option-indexed reasons.

**Limits:** These theorems weaken conclusions, not evidence. FacetDischarged and the canonical articulation are application-specific semantic adapters, not a complete definition or proof of all source-level empirical or value adequacy.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds#p1](#source-organon-grounds-p1), [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.Grounds`

[leanified/CoreReader/Evidence.lean:112](#line-code-leanified-corereader-evidence-lean-112) · definition

Core dependencies: none.

```lean
def Grounds {W : Type} (claim : Claim W) (articulations : Facet W → Articulation W)
    (actualApplicable : Facet W → Prop) (facets : List (Facet W)) : Prop :=
```

### `CoreReader.Evidence.supportWeakening`

[leanified/CoreReader/Evidence.lean:228](#line-code-leanified-corereader-evidence-lean-228) · theorem

Core dependencies: none.

```lean
theorem supportWeakening {W : Type} (records : List (Record W)) (p q : Claim W)
    (support : Supports records p) (weaker : ∀ w, p w → q w) : Supports records q :=
```

### `CoreReader.Evidence.scopeRestriction`

[leanified/CoreReader/Evidence.lean:245](#line-code-leanified-corereader-evidence-lean-245) · theorem

Core dependencies: none.

```lean
theorem scopeRestriction {W X : Type} (records : List (Record W)) (p : W → X → Prop)
    (wide narrow : X → Prop) (included : ∀ x, narrow x → wide x)
    (support : Supports records (fun w => ∀ x, wide x → p w x)) :
    Supports records (fun w => ∀ x, narrow x → p w x) :=
```


<a id="t16"></a>
## T16 · All applicable aspects retain duties

Duties for two sets of applicable aspects combine exactly as their union, and an added label cannot waive them. A claim with empirical and value aspects can pass the represented empirical check while failing its value procedure.

**Premises and representation:** assessmentUnion uses two actual facet predicates; labelsCannotWaive uses a label that does not alter those predicates or FacetDischarged. The mixed switch example concerns the same selected-on claim: an actual observation assesses the selection fact, while adoption also invokes the value procedure.

**Proof or check:** The general proofs distribute universal obligations over disjunction and unfold the label wrapper. mixedMissingResponsibility combines discharged switch evidence with an unsupportedPosition whose empty reason list fails ValueProcedure.

**Limits:** The empty-list failure establishes missing recorded procedural responsibility, not that no adequate value reason could exist. Which aspects actually apply remains an explicit input requiring source-faithful judgment.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.assessmentUnion`

[leanified/CoreReader/Evidence.lean:261](#line-code-leanified-corereader-evidence-lean-261) · theorem

Core dependencies: none.

```lean
theorem assessmentUnion {W : Type} (a b : Facet W → Prop) :
    Duties (fun f => a f ∨ b f) ↔ Duties a ∧ Duties b := by
```

### `CoreReader.Evidence.labelsCannotWaive`

[leanified/CoreReader/Evidence.lean:272](#line-code-leanified-corereader-evidence-lean-272) · theorem

Core dependencies: none.

```lean
theorem labelsCannotWaive {W : Type} (xs ys : List String) (a : Facet W → Prop) :
    LabeledDuties xs a ↔ LabeledDuties ys a := Iff.rfl
```

### `CoreReader.Evidence.mixedMissingResponsibility`

[leanified/CoreReader/Evidence.lean:362](#line-code-leanified-corereader-evidence-lean-362) · case

Core dependencies: `propext`.

```lean
theorem mixedMissingResponsibility :
    FacetDischarged switchEmpirical ∧
    ¬ LabeledDuties [] (fun f : Facet Bool => f = switchEmpirical ∨ f = .value unsupportedPosition) := by
```


<a id="t17"></a>
## T17 · Articulation, repetition and assertion are insufficient

Articulation, repeated irrelevant observations, compatibility with a theory and self-assertion each fail to establish the stronger claim in explicit counterexamples. A nonempty announcement can coexist with a real budget violation.

**Premises and representation:** The examples distinguish observable temperature from another output and observed selection from available budget. The budget model evaluates the same adopted option with cost 3; starting assumptions fix selection without guaranteeing budget. A true activation announcement is compatible with budget 0.

**Proof or check:** articulationNotSupport supplies a nonempty but uninformative articulation. measurementRepeatNotSupport retains counterworlds after repeating the same actual tests. compatibilityNotEntailment contrasts an existing joint model with a failed universal consequence. selfAssertionNotReason includes both missing reasons and the nonempty announcement case whose joint adoption is possible but whose actual cost exceeds its budget.

**Limits:** These are failures for specified claims and grounds, not a dismissal of articulation, repetition or compatibility. The missing-reasons branch is procedural; the budget branch additionally gives a substantive counterexample within its chosen objective/constraint adapter.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.articulationNotSupport`

[leanified/CoreReader/Evidence.lean:377](#line-code-leanified-corereader-evidence-lean-377) · case

Core dependencies: `propext`.

```lean
theorem articulationNotSupport : Articulated uninformativeArgument ∧
    ¬ Entails uninformativeArgument.assumptions (fun w : Bool => w = true) := by
```

### `CoreReader.Evidence.measurementRepeatNotSupport`

[leanified/CoreReader/Evidence.lean:451](#line-code-leanified-corereader-evidence-lean-451) · case

Core dependencies: `propext`.

```lean
theorem measurementRepeatNotSupport :
    temperatureRecord.test (true,false) = true ∧
    Compatible [temperatureRecord,temperatureRecord] (true,false) ∧
    Compatible [temperatureRecord,temperatureRecord] (true,true) ∧
    ¬ Supports [temperatureRecord] (fun w : Bool × Bool => w.2 = true) ∧
    ¬ Supports [temperatureRecord,temperatureRecord] (fun w : Bool × Bool => w.2 = true) ∧
    Compatible [actionRecord,actionRecord] (true,0) ∧
    Compatible [actionRecord,actionRecord] (true,3) ∧
    ¬ Supports [actionRecord] announcementPosition.consequence ∧
    ¬ Supports [actionRecord,actionRecord] announcementPosition.consequence ∧
    ¬ ValueProcedure announcementPosition := by
```

### `CoreReader.Logic.compatibilityNotEntailment`

[leanified/CoreReader/Logic.lean:229](#line-code-leanified-corereader-logic-lean-229) · case

Core dependencies: none.

```lean
theorem compatibilityNotEntailment :
    Satisfiable (union emptyTheory (singleton (fun w : Bool => w = true))) ∧
    ¬ Entails emptyTheory (fun w : Bool => w = true) := by
```

### `CoreReader.Evidence.selfAssertionNotReason`

[leanified/CoreReader/Evidence.lean:478](#line-code-leanified-corereader-evidence-lean-478) · case

Core dependencies: `propext`.

```lean
theorem selfAssertionNotReason :
    (unsupportedPosition.commitment true ∧ ¬ ValueProcedure unsupportedPosition) ∧
    (announcementPosition.reasons ≠ [] ∧ announcementPosition.commitment (true,0) ∧
      ¬ announcementPosition.consequence (true,0) ∧ ¬ ValueProcedure announcementPosition) ∧
    JointAdoption announcementPosition :=
```


<a id="t18"></a>
## T18 · Adopted value positions and joint reasons

A value-assessment procedure can be fulfilled from a satisfiable adopted starting position that is not entailed by the empty theory. Joint reasons can support the adopted option’s actual consequence even when neither reason alone suffices.

**Premises and representation:** ValueProcedure requires nonempty option-indexed reasons; one world satisfying starting assumptions, limits, adoption and all reasons together; joint reason support for that option’s objective and constraints within starting/limits; and a nonempty response to relevant criticism. These are the declared option–outcome assessment conditions.

**Proof or check:** valueWithoutSelfProof constructs the beneficial on option, shows its starting theory satisfiable and its commitment not entailed by emptyTheory, and rejects opposite, contradictory and impossible adoption variants. heterogeneousReasons includes actual empirical/inferential/value cases and a benefit-4/cost-at-most-3 example: the reasons together pass, but worlds (4,5) and (0,3) defeat each reason separately.

**Limits:** The procedure checks a disclosed application adapter, not ultimate value justification or a mandatory deductive form for every value reason. A response string is recorded engagement, not proof of a satisfactory reply; non-self-derived starting points are distinguished from inconsistent starts.

**State:** accepted (satisfiability). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.valueWithoutSelfProof`

[leanified/CoreReader/Evidence.lean:493](#line-code-leanified-corereader-evidence-lean-493) · case

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem valueWithoutSelfProof : ValueProcedure switchPosition ∧
    Satisfiable switchPosition.starting ∧
    ¬ Entails (emptyTheory : Theory Bool) switchPosition.commitment ∧
    (JointAdoption oppositePosition ∧ ¬ ValueProcedure oppositePosition) ∧
    (¬ ValueProcedure contradictoryStartingPosition ∧ ¬ ValueProcedure impossibleAdoptionPosition) :=
```

### `CoreReader.Evidence.heterogeneousReasons`

[leanified/CoreReader/Evidence.lean:564](#line-code-leanified-corereader-evidence-lean-564) · case

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem heterogeneousReasons :
    FacetDischarged switchEmpirical ∧
    FacetDischarged (Facet.inferential (singleton (fun w : Bool => w = true)) (fun w => w = true)) ∧
    FacetDischarged (Facet.value switchPosition) ∧ JointReasonsExample := by
```


<a id="t19"></a>
## T19 · Local evidence and omitted differences

Agreement on the observed input can conceal disagreement elsewhere, so input-specific evidence does not support a universal claim.

**Premises and representation:** Worlds are Boolean-valued functions on natural-number inputs. zeroRecord observes only that input 0 returns true; the compared functions are constant true and localGenerator 0.

**Proof or check:** localNotUniversal retains localGenerator 0 as a record-compatible counterworld to allTrue. hiddenDifference proves agreement wherever n = 0 and evaluates the differing outputs at n = 1.

**Limits:** The conclusion concerns the stated observation scope. It does not rule out justified generalization from additional premises or establish a general statistical inference rule.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.scope#p1](#source-organon-grounds-scope-p1), [organon.grounds.scope#p2](#source-organon-grounds-scope-p2), [organon.grounds.scope#p3](#source-organon-grounds-scope-p3)

### `CoreReader.Evidence.localNotUniversal`

[leanified/CoreReader/Evidence.lean:630](#line-code-leanified-corereader-evidence-lean-630) · case

Core dependencies: `propext`.

```lean
theorem localNotUniversal :
    (∃ outside : Nat, outside ≠ 0) ∧
    Compatible [zeroRecord] (fun _ => true) ∧
    Compatible [zeroRecord] (localGenerator 0) ∧
    allTrue (fun _ => true) ∧ ¬ allTrue (localGenerator 0) ∧
    ¬ Supports [zeroRecord] allTrue := by
```

### `CoreReader.Evidence.hiddenDifference`

[leanified/CoreReader/Evidence.lean:645](#line-code-leanified-corereader-evidence-lean-645) · case

Core dependencies: none.

```lean
theorem hiddenDifference :
    (∀ n : Nat, n = 0 → (fun _ : Nat => true) n = localGenerator 0 n) ∧
    (fun _ : Nat => true) 1 ≠ localGenerator 0 1 := by
```


<a id="t20"></a>
## T20 · Observation, reproduction and stability

One observation can support a bounded claim without repetition; a valid inferential assessment need not use observation at all. Record accuracy, reproduced conditions and stability of a conclusion are distinct, and different outcomes can preserve the same bound.

**Premises and representation:** The observation concerns input 0 only. The non-observational facet assumes n = 2 and concludes n + 1 = 3. Trial explicitly separates setting, actualOutcome and recordedOutcome; Verified compares actual and recorded values, Reproduced compares settings, and Bounded means actualOutcome ≤ 2.

**Proof or check:** singleObservation proves local support and refutes allTrue. noUniversalChain supplies a discharged arithmetic facet without observation. variableOutcomesStableBound uses actual outcomes 1 and 2 under setting 0; verificationReproductionStability supplies separate cases with changed settings, inaccurate records and an outcome above the bound.

**Limits:** This is a finite possible-trial model, not a probability theorem, empirical reproducibility study or guarantee about future runs. It refutes a universally mandatory observation chain only within the represented assessment interfaces.

**State:** accepted (satisfiability). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.scope#p1](#source-organon-grounds-scope-p1), [organon.grounds.scope#p2](#source-organon-grounds-scope-p2), [organon.grounds.scope#p3](#source-organon-grounds-scope-p3)

### `CoreReader.Evidence.singleObservation`

[leanified/CoreReader/Evidence.lean:656](#line-code-leanified-corereader-evidence-lean-656) · case

Core dependencies: `propext`.

```lean
theorem singleObservation : [zeroRecord].length = 1 ∧
    (∃ f, Compatible [zeroRecord] f) ∧
    Supports [zeroRecord] (fun f => f 0 = true) ∧
    ¬ Supports [zeroRecord] allTrue :=
```

### `CoreReader.Evidence.noUniversalChain`

[leanified/CoreReader/Evidence.lean:673](#line-code-leanified-corereader-evidence-lean-673) · case

Core dependencies: `propext`.

```lean
theorem noUniversalChain : FacetDischarged arithmeticFacet ∧ usesObservation arithmeticFacet = false := by
```

### `CoreReader.Evidence.variableOutcomesStableBound`

[leanified/CoreReader/Evidence.lean:694](#line-code-leanified-corereader-evidence-lean-694) · case

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem variableOutcomesStableBound :
    let a : Trial := ⟨0,1,1⟩
```

### `CoreReader.Evidence.verificationReproductionStability`

[leanified/CoreReader/Evidence.lean:705](#line-code-leanified-corereader-evidence-lean-705) · case

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem verificationReproductionStability :
    (Verified ⟨0,1,1⟩ ∧ Verified ⟨1,1,1⟩ ∧ ¬ Reproduced ⟨0,1,1⟩ ⟨1,1,1⟩) ∧
    (Reproduced ⟨0,1,1⟩ ⟨0,3,2⟩ ∧ ¬ Verified ⟨0,3,2⟩ ∧ ¬ Bounded ⟨0,3,2⟩) ∧
    (Bounded ⟨0,1,1⟩ ∧ Bounded ⟨0,2,0⟩ ∧ ¬ Verified ⟨0,2,0⟩) := by
```


<a id="t21"></a>
## T21 · Capability contracts and external assessment

Correct outputs and an explanation contract are distinct for the same Process. Output-only and explanation-requiring applications have actual, scoped grounds; an external assessor can certify the former without the process providing an internal explanation. Duplicating inventory does not add represented operations.

**Premises and representation:** OutputContract requires n + n for every natural input. ExplanationContract requires a provided Program whose evaluation equals that very process’s output at every input. processScope fixes the assessed process by equality; its canonical articulation and facet use that same scope and contract. ExternalCertificate is indexed by the actual process and distinguishes assessor 42 from assessed participant 7.

**Proof or check:** Concrete evaluation proves both processes double their inputs; outputOnlyProcess has none, while explainedProcess supplies doubleInput. The same output-only process refutes the stronger full contract under its inhabited object scope. externalAssessment constructs the full output proof rather than assuming its truth; inventoryNotCapability proves available-operation membership unchanged by duplication.

**Limits:** These arithmetic contracts are application choices, not a universal definition of capability or understanding. The explanation contract concerns an explicit certificate, not unobserved mental understanding; external participant identifiers do not establish real-world provenance.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.capabilities#p1](#source-organon-grounds-capabilities-p1), [organon.grounds.capabilities#p2](#source-organon-grounds-capabilities-p2)

### `CoreReader.Evidence.outputNotExplanation`

[leanified/CoreReader/Evidence.lean:793](#line-code-leanified-corereader-evidence-lean-793) · case

Core dependencies: `propext`.

```lean
theorem outputNotExplanation : OutputContract outputOnlyProcess ∧
    ¬ ExplanationContract outputOnlyProcess ∧ OutputContractEvidence :=
```

### `CoreReader.Evidence.applicationContractsDiffer`

[leanified/CoreReader/Evidence.lean:801](#line-code-leanified-corereader-evidence-lean-801) · case

Core dependencies: `propext`.

```lean
theorem applicationContractsDiffer :
    (OutputContract outputOnlyProcess ∧ ¬ (OutputContract outputOnlyProcess ∧ ExplanationContract outputOnlyProcess)) ∧
    (OutputContract explainedProcess ∧ ExplanationContract explainedProcess) ∧
    ScopedApplicationEvidence :=
```

### `CoreReader.Evidence.externalAssessment`

[leanified/CoreReader/Evidence.lean:821](#line-code-leanified-corereader-evidence-lean-821) · case

Core dependencies: `propext`.

```lean
theorem externalAssessment :
    (∃ certificate : ExternalCertificate outputOnlyProcess,
      certificate.assessorId = 42 ∧ certificate.assessedId = 7 ∧
      certificate.assessorId ≠ certificate.assessedId ∧ OutputContract outputOnlyProcess) ∧
    ProcessGrounds outputOnlyProcess OutputContract ∧
    ¬ ExplanationContract outputOnlyProcess :=
```

### `CoreReader.Agency.inventoryNotCapability`

[leanified/CoreReader/Agency.lean:85](#line-code-leanified-corereader-agency-lean-85) · theorem

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem inventoryNotCapability (kind : InventoryKind) (ops : List Operation) (op : Operation) :
    Available ((ops.map fun x => Item.mk kind x) ++ (ops.map fun x => Item.mk kind x)) op ↔
      Available (ops.map fun x => Item.mk kind x) op := by
```


<a id="t22"></a>
## T22 · Relevant implementation reasons

Status alone cannot satisfy the represented implementation-choice norm. An existing conventional implementation can satisfy it when its actual behavior supplies a relevant reason and it meets the requirements.

**Premises and representation:** JustifiedChoice requires feasibility plus a listed Relevant reason. The adopted Relevant definition excludes status reasons and checks actual method content against requirements. The concrete identity application requires identity outputs, budget 1 and admits the output reason.

**Proof or check:** statusOnlyFails unfolds the status branch for any requirements, implementation and status reason. conventionWithReason evaluates the conventional/established identity implementation and constructs its output-based justification.

**Limits:** The exclusion is an explicitly adopted choice norm, not a value-neutral theorem. This case neither rejects all existing implementations nor proves the chosen requirements universally adequate.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.implementations#p1](#source-organon-grounds-implementations-p1), [organon.grounds.implementations#p2](#source-organon-grounds-implementations-p2)

### `CoreReader.Choice.statusOnlyFails`

[leanified/CoreReader/Choice.lean:58](#line-code-leanified-corereader-choice-lean-58) · theorem

Core dependencies: `propext`.

```lean
theorem statusOnlyFails (req : Requirements) (i : Implementation) (k : StatusKind) :
    ¬ JustifiedChoice req i [.status k] := by
```

### `CoreReader.Choice.conventionWithReason`

[leanified/CoreReader/Choice.lean:116](#line-code-leanified-corereader-choice-lean-116) · case

Core dependencies: `propext`.

```lean
theorem conventionWithReason :
    identityImpl.conventional = true ∧ identityImpl.established = true ∧
    JustifiedChoice identityRequirements identityImpl [.status .convention, .method .output] := by
```


<a id="t23"></a>
## T23 · An accurate assessment does not enforce the extra choice norm

Two independently specified choice policies complete the same accurate negative status-priority audit yet differ on the additional choice norm: the status-only policy fails and the output-reason policy passes.

**Premises and representation:** Both policies select identity and share the true conventional/established facts, the exact question whether those facts entail identity priority, and report false. Only priorityReasons changes. GeneralAssessmentFulfilled records articulation and accurate completion of this audit; AdditionalChoiceNorm separately checks JustifiedChoice.

**Proof or check:** generalGroundsNotChoice retains the status non-entailment countermodel and includes PolicyIndependenceExample. The successor interpretation satisfies the same status facts but refutes priority; statusOnlyFails and identityJustified then establish the opposed policy results without changing that audit.

**Limits:** The result concerns fulfillment of the specified assessment procedure, not full philosophical Grounds. Continuing to prioritize unsupported status can also violate general support proportionality; this theorem does not claim otherwise or prove the choice norm independent of every core obligation.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.implementations#p1](#source-organon-grounds-implementations-p1), [organon.grounds.implementations#p2](#source-organon-grounds-implementations-p2), [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Choice.generalGroundsNotChoice`

[leanified/CoreReader/Choice.lean:284](#line-code-leanified-corereader-choice-lean-284) · case

Core dependencies: `propext`.

```lean
theorem generalGroundsNotChoice :
    (Articulated priorityArticulation ∧ AssessmentAccurate false ∧
      (∀ selected, Models statusFacts selected) ∧
      priorityClaim .identity ∧ ¬ priorityClaim .successor ∧
      ¬ Entails statusFacts priorityClaim ∧
      ¬ JustifiedChoice identityRequirements identityImpl [.status .standing]) ∧
    PolicyIndependenceExample :=
```


<a id="t24"></a>
## T24 · Openness does not imply equivalence or plurality

An open choice setting may have only one feasible represented candidate. Local agreement does not make implementations equivalent, and eligible internal-method reasons need not suffice for selection when a required output is wrong.

**Premises and representation:** The candidate type contains identity and successor, evaluated against identity outputs and budget 1. Relevant internal reasons are selected by Requirements.values and checked for faithful explanation, applicability, cost or procedure. A separate cheap successor costs 1 but still returns n + 1.

**Proof or check:** singleFeasible identifies the unique feasible candidate. localNotGlobal contrasts agreement at 0 with disagreement at 1. internalReasons validates four real reasons for identity and includes a cheap-but-wrong counterexample. openNotEquivalent retains justified identity choice while proving its output differs from successor.

**Limits:** Uniqueness is relative to these two candidates and stated requirements. Relevance is not sufficient feasibility, and openness does not entail equal merit, mandatory plurality or rejection of the existing option.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.grounds.implementations.limits#p1](#source-organon-grounds-implementations-limits-p1)

### `CoreReader.Choice.singleFeasible`

[leanified/CoreReader/Choice.lean:132](#line-code-leanified-corereader-choice-lean-132) · case

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem singleFeasible :
    (∀ candidate, Feasible identityRequirements (implementation candidate) ↔ candidate = .identity) ∧
    JustifiedChoice identityRequirements identityImpl objectiveReason := by
```

### `CoreReader.Choice.localNotGlobal`

[leanified/CoreReader/Choice.lean:146](#line-code-leanified-corereader-choice-lean-146) · case

Core dependencies: none.

```lean
theorem localNotGlobal :
    (∀ x, x = 0 → identityImpl.run x = changedOutsideZero.run x) ∧
    identityImpl.run 1 ≠ changedOutsideZero.run 1 := by
```

### `CoreReader.Choice.internalReasons`

[leanified/CoreReader/Choice.lean:168](#line-code-leanified-corereader-choice-lean-168) · case

Core dependencies: none.

```lean
theorem internalReasons :
    Relevant identityRequirements identityImpl (.method .explanation) ∧
    Relevant identityRequirements identityImpl (.method .applicability) ∧
    Relevant identityRequirements identityImpl (.method .simplicity) ∧
    Relevant identityRequirements identityImpl (.method .procedure) ∧
    (Relevant identityRequirements cheapSuccessor (.method .simplicity) ∧
      ¬ JustifiedChoice identityRequirements cheapSuccessor [.method .simplicity]) := by
```

### `CoreReader.Choice.openNotEquivalent`

[leanified/CoreReader/Choice.lean:182](#line-code-leanified-corereader-choice-lean-182) · case

Core dependencies: `propext`.

```lean
theorem openNotEquivalent :
    JustifiedChoice identityRequirements identityImpl objectiveReason ∧
    identityImpl.run 0 ≠ successorImpl.run 0 := by
```


<a id="t25"></a>
## T25 · Mutual application in one system

The shared system maintains consistency through an acknowledged revision, carries owned assessment work and grounds for its own capability, assesses its general grounds provision, and evaluates its current philosophical method using relevant proposal decisions rather than status.

**Premises and representation:** The examples use actualSystem and actual. The revised theory adds the same method’s input-0 fact and changes revision identity. GroundsProvision quantifies over arbitrary represented claims and facet packages under apply/waive permissions. The current philosophy method shares the system’s principle form and governance mode and is assessed on two specified proposal inputs.

**Proof or check:** revisionKeepsConsistency reuses the same admissible witness and rejects a false change report. ownCapabilityGrounded combines owned assessment work with matching output grounds. groundsSelfAssessment evaluates the general provision through the grounds commitment’s actual acceptance/rejection consequences and relevant criticism. existingPhilosophyNotPrivileged proves acceptance of the valid proposal, rejection of the cheap wrong one, status-only failure and output-based justification for this actual method.

**Limits:** These are constructed results for one system. Owned assessment work and capability grounds are separately checked components, not a claim that one work record contains the entire capability proof. Classical decision definitions are mathematical devices; the value adapter does not establish ultimate justification of the philosophy.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Integration.revisionKeepsConsistency`

[leanified/CoreReader/Integration.lean:144](#line-code-leanified-corereader-integration-lean-144) · theorem

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem revisionKeepsConsistency :
    Charter actualSystem actual ∧ Consistent revisedHeld context ∧
    TruthfulReport initialSnapshot revisedSnapshot true ∧
    ¬ TruthfulReport initialSnapshot revisedSnapshot false := by
```

### `CoreReader.Integration.ownCapabilityGrounded`

[leanified/CoreReader/Integration.lean:165](#line-code-leanified-corereader-integration-lean-165) · theorem

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem ownCapabilityGrounded :
    OwnCapabilityDuty actualSystem actual [capabilityFacet] ∧ capability actual := by
```

### `CoreReader.Integration.groundsSelfAssessment`

[leanified/CoreReader/Integration.lean:443](#line-code-leanified-corereader-integration-lean-443) · theorem

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem groundsSelfAssessment :
    Grounds (fun w => GroundsProvision w.2) canonicalArticulation
      (fun f => f = commitmentFacet .grounds) [commitmentFacet .grounds] ∧
    (commitmentPosition .grounds).limits actual ∧
    (commitmentPosition .grounds).relevantCriticism actual ∧
    ¬ ValueProcedure (commitmentPositionFor .grounds .waive) := by
```

### `CoreReader.Integration.existingPhilosophyNotPrivileged`

[leanified/CoreReader/Integration.lean:497](#line-code-leanified-corereader-integration-lean-497) · theorem

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem existingPhilosophyNotPrivileged :
    (currentPhilosophy actualSystem actual).form = actualSystem.principleForm ∧
    (currentPhilosophy actualSystem actual).mode = actualSystem.governance actual ∧
    ¬ JustifiedChoice proposalRequirements
      (currentPhilosophy actualSystem actual).implementation [.status .standing] ∧
    JustifiedChoice proposalRequirements
      (currentPhilosophy actualSystem actual).implementation [.method .output] ∧
    (currentPhilosophy actualSystem actual).review 0 = 1 ∧
    (currentPhilosophy actualSystem actual).review 1 = 0 := by
```


<a id="t26"></a>
## T26 · Distinct commitments and their combination

Generative orientation alone does not ensure Reflexive work, and a charter-satisfying system can still present inadequate evidence for its own capability. A shared witness also shows the represented commitments can all be met together.

**Premises and representation:** The first counterexample combines openPolicy with an empty work list despite an applicable system assessment. The second retains actualSystem, actual and its charter, but substitutes true cost-allowance evidence for the output-capability claim. jointWitness uses the matching capability evidence and complete owned work instead.

**Proof or check:** generationNotReflexivity derives the missing applicable work from a supposed Reflexive proof. charterNotGrounds keeps a wrong-output world compatible with the cost record. jointWitness supplies one actual pair with admissibility, charter, capability duty, justified choice and each commitment’s grounds.

**Limits:** These results establish the stated separations and coexistence, not complete pairwise logical independence of all commitments, a priority hierarchy, or automatic grounds for every charter-compliant claim.

**State:** accepted (nonentailment). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Agency.generationNotReflexivity`

[leanified/CoreReader/Agency.lean:257](#line-code-leanified-corereader-agency-lean-257) · case

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem generationNotReflexivity :
    Generative openPolicy ∧ ¬ Reflexive 0 (ownRules 0) [] := by
```

### `CoreReader.Integration.charterNotGrounds`

[leanified/CoreReader/Integration.lean:577](#line-code-leanified-corereader-integration-lean-577) · case

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem charterNotGrounds :
    Charter actualSystem actual ∧
    Compatible [costAllowanceRecord] actual ∧
    ¬ Grounds capability canonicalArticulation
      (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet] := by
```

### `CoreReader.Integration.jointWitness`

[leanified/CoreReader/Integration.lean:595](#line-code-leanified-corereader-integration-lean-595) · case

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem jointWitness :
    ∃ s : System, ∃ w : World,
      Admissible (systemHeld s) (systemContext s) w ∧ Charter s w ∧
      OwnCapabilityDuty s w [capabilityFacet] ∧ systemCapability s w ∧
      JustifiedChoice s.requirements (s.method.realize w) objectiveReason ∧
      (∀ c : Commitment, Grounds (commitmentClaim c) canonicalArticulation
        (fun f => f = commitmentFacet c) [commitmentFacet c]) ∧
      s = actualSystem ∧ w = actual := by
```


<a id="t27"></a>
## T27 · Application duties and individual reasons

An application that satisfies the adopted ApplicationDuties retains Reflexive work and all actually applicable, correctly articulated grounds for its own contract claim. Each of the five shared commitments separately has matched value grounds, joint adoption and relevant criticism, while its waive variant fails the chosen procedure. In the registered variation, the same evidence still supports the identity contract but does not support the changed successor contract.

**Premises and representation:** applicationRetainsDuties takes a System, World, Requirements, arbitrary contract, facet-indexed articulations, applicability predicate and facet list, and assumes ApplicationDuties for those exact parameters. reasonsBelongToCommitments takes one of generation, consistency, reflexivity, grounds or choice; each position shares the governance choice but has its own actual consequence, reasons, constraints and criticism.

**Proof or check:** The application theorem projects the assumed obligation, including same-claim equality and FacetArticulated for every listed facet. The commitment theorem constructs canonical grounds and joint witnesses, checks nonvacuous criticism, and contrasts apply with waive using actual operation expansion, contradiction handling, self-test coverage, evidence acceptance and implementation decisions. The supplementary applicationVariation case holds the system and observation fixed: the identity contract has matching grounds, whereas the successor contract fails at actual input 0 and its attempted empirical facet is rejected.

**Limits:** The general application result does not prove arbitrary applications comply. The five reasons belong to distinct commitment positions in one selected option/outcome adapter; their checks do not derive normative authority from facts or prove all possible value reasons deductively sufficient.

**State:** accepted (theorem). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.relationships.roles#p1](#source-organon-relationships-roles-p1), [organon.relationships.roles#p2](#source-organon-relationships-roles-p2), [organon.relationships.roles#p3](#source-organon-relationships-roles-p3)

### `CoreReader.Integration.applicationRetainsDuties`

[leanified/CoreReader/Integration.lean:529](#line-code-leanified-corereader-integration-lean-529) · theorem

Core dependencies: `propext`.

```lean
theorem applicationRetainsDuties (s : System) (w : World) (req : Requirements)
    (contract : Requirements → Implementation → Prop)
    (articulations : Facet World → Articulation World)
    (applicable : Facet World → Prop) (facets : List (Facet World))
    (h : ApplicationDuties s w req contract articulations applicable facets) :
    Reflexive s.owner (s.rules w) (s.work w) ∧
    (∀ f, applicable f → f ∈ facets) ∧
    (∀ f ∈ facets, f.claim = applicationClaim s req contract ∧
      Articulated (articulations f) ∧ FacetArticulated (articulations f) f ∧ FacetDischarged f) :=
```

### `CoreReader.Integration.reasonsBelongToCommitments`

[leanified/CoreReader/Integration.lean:423](#line-code-leanified-corereader-integration-lean-423) · theorem

Core dependencies: `propext`, `Classical.choice`, `Quot.sound`.

```lean
theorem reasonsBelongToCommitments (c : Commitment) :
    Grounds (commitmentClaim c) canonicalArticulation
      (fun f => f = commitmentFacet c) [commitmentFacet c] ∧
    JointAdoption (commitmentPosition c) ∧
    (commitmentPosition c).relevantCriticism actual ∧
    ¬ ValueProcedure (commitmentPositionFor c .waive) := by
```

### `CoreReader.Integration.applicationVariation`

[leanified/CoreReader/Integration.lean:556](#line-code-leanified-corereader-integration-lean-556) · supplementary case

Core dependencies: `propext`, `Quot.sound`.

```lean
theorem applicationVariation :
    ApplicationDuties actualSystem actual identityRequirements outputContract
      canonicalArticulation (fun f => f = capabilityFacet) [capabilityFacet] ∧
    ¬ applicationClaim actualSystem successorRequirements outputContract actual ∧
    ¬ Grounds (applicationClaim actualSystem successorRequirements outputContract)
      canonicalArticulation (fun f => f = changedObjectiveFacet) [changedObjectiveFacet] := by
```


<a id="t28"></a>
## T28 · Assessment without observation tests

A matched inferential assessment can have Grounds without an observation test, while a separately applicable empirical facet still uses observations.

**Premises and representation:** The inferential facet explicitly assumes n = 2 and concludes n + 1 = 3, with canonical articulation and a nonempty model. The empirical comparison is the actual switch observation facet; usesObservation classifies the facet form.

**Proof or check:** nonExecutableAssessment builds Grounds for the arithmetic claim from its satisfiable premise and semantic entailment, proves usesObservation is false there, and includes the discharged empirical switch facet with usesObservation true.

**Limits:** The theorem separates assessment from observational testing; it does not prove this arithmetic reasoning uncomputable, classify every non-executable method or waive applicable empirical responsibilities.

**State:** accepted (satisfiability). This is the review of this frozen target, not an upgrade to a complete proof of its source paragraphs.

**Sources:** [organon.relationships.terms#p1](#source-organon-relationships-terms-p1), [organon.grounds.assessment#p1](#source-organon-grounds-assessment-p1), [organon.grounds.assessment#p2](#source-organon-grounds-assessment-p2), [organon.grounds.assessment#p3](#source-organon-grounds-assessment-p3)

### `CoreReader.Evidence.nonExecutableAssessment`

[leanified/CoreReader/Evidence.lean:840](#line-code-leanified-corereader-evidence-lean-840) · case

Core dependencies: `propext`.

```lean
theorem nonExecutableAssessment :
    Grounds (fun n : Nat => n + 1 = 3) canonicalArticulation (fun f => f = arithmeticFacet) [arithmeticFacet] ∧
    usesObservation arithmeticFacet = false ∧
    FacetDischarged switchEmpirical ∧ usesObservation switchEmpirical = true := by
```


## Source tracing appendix

<a id="source-organon-preamble-p1"></a>
<!-- lean-entry organon.preamble.p1 -->
<!-- lean-status not_applicable; kernel passed; fidelity not_applicable -->
### `organon.preamble#p1`

```text
This is the authoritative statement of Organon’s philosophy. It expresses adopted commitments, not factual assertions about every system or a proof of universal correctness.
```

State: **not_applicable**; Lean: passed; fidelity: not_applicable.

<!-- lean-context-only -->

This paragraph is cited as authority and interpretive context. The linked declarations do not prove the meta-level statement; its conditions remain in force.

This declares textual authority and adopted-commitment scope, not a mathematical proposition about all systems. The review retains this boundary without manufacturing a Lean theorem of authority.

Related targets: [T01](#t01), [T02](#t02).

<!-- /lean-entry organon.preamble.p1 -->

<a id="source-organon-preamble-p2"></a>
<!-- lean-entry organon.preamble.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.preamble#p2`

```text
The quoted provisions, their meanings, and their conditions of application form the core. The charter and Grounds constrain one another; their grouping establishes neither a deductive hierarchy nor an order of priority. [Rationale](rationale/README.md) supplies arguments and cases without adding obligations to this core. Skills are revisable applications under the repository’s stated objectives and constraints, not part of the philosophical commitments themselves.
```

State: **limited**; Lean: passed; fidelity: partial.

The shared model exhibits compatible constraints without a chapter-priority inference. Authority of meanings and limits, the role of Rationale and revisability of actual skills remain textual commitments outside this finite witness.

Related targets: [T01](#t01), [T02](#t02).

<!-- /lean-entry organon.preamble.p2 -->

<a id="source-organon-charter"></a>
<!-- lean-entry organon.charter -->
<!-- lean-status not_applicable; kernel not_checked; fidelity not_applicable -->
### `organon.charter`

```text


```

State: **not_applicable**; Lean: not_checked; fidelity: not_applicable.

Structural heading without substantive direct-body content; no theorem is assigned.

<!-- /lean-entry organon.charter -->

<a id="source-organon-charter-overview-p1"></a>
<!-- lean-entry organon.charter.overview.p1 -->
<!-- lean-status not_applicable; kernel not_checked; fidelity not_applicable -->
### `organon.charter.overview#p1`

```text
**Self-Transcendence · Internal Consistency · Reflexivity**
```

State: **not_applicable**; Lean: not_checked; fidelity: not_applicable.

This is a structural list of three headings. It organizes substantive provisions and requires no fabricated theorem.

Related targets: [T01](#t01).

<!-- /lean-entry organon.charter.overview.p1 -->

<a id="source-organon-charter-overview-p2"></a>
<!-- lean-entry organon.charter.overview.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.overview#p2`

```text
> A system is intrinsically oriented toward expanding what it can understand and construct. It brings itself and its principles within the scope of generation and assessment, with internal consistency constraining this process.
```

State: **limited**; Lean: passed; fidelity: partial.

jointWitness combines valued expansion, revisability, contextual consistency and contentful owned principle work in one inhabited system. It proves model satisfiability, not actual compliance by arbitrary systems.

Related targets: [T01](#t01), [T02](#t02), [T03](#t03).

<!-- /lean-entry organon.charter.overview.p2 -->

<a id="source-organon-charter-overview-p3"></a>
<!-- lean-entry organon.charter.overview.p3 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.overview#p3`

```text
The overview connects three distinct requirements: self-transcendence establishes a generative orientation and refuses to treat existing forms as final, internal consistency constrains judgments held simultaneously, and reflexivity brings the system and its principles within the scope of their own generation and assessment. The provisions below specify the conditions for each.
```

State: **limited**; Lean: passed; fidelity: partial.

The three requirements remain distinct predicates with a shared example and specific nonentailments. Their interpretation as philosophical obligations and their full conditions in arbitrary applications are not derived from the example.

Related targets: [T01](#t01), [T02](#t02), [T03](#t03).

<!-- /lean-entry organon.charter.overview.p3 -->

<a id="source-organon-charter-self-transcendence-p1"></a>
<!-- lean-entry organon.charter.self-transcendence.p1 -->
<!-- lean-status incomplete; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence#p1`

```text
> A system is intrinsically oriented toward expanding what it can understand and construct. It does not regard any existing form as the endpoint of generation.
```

State: **incomplete**; Lean: passed; fidelity: partial.

Generative specifies valuation and revisability of current forms. The finite tags and state examples do not characterize every form of understanding, construction or intrinsic orientation.

Related targets: [T03](#t03).

<!-- /lean-entry organon.charter.self-transcendence.p1 -->

<a id="source-organon-charter-self-transcendence-orientation-p1"></a>
<!-- lean-entry organon.charter.self-transcendence.orientation.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence.orientation#p1`

```text
A commitment to keeping generative possibilities open is distinct from valuing their expansion. A system has an intrinsic orientation when it regards that expansion as worth pursuing. Merely permitting change does not fully express this orientation.
```

State: **limited**; Lean: passed; fidelity: partial.

The neutral-policy counterexample separates permission for distinct versions from the adopted valuation predicate. It does not establish what every real system values or justify the adopted value universally.

Related targets: [T03](#t03), [T04](#t04).

<!-- /lean-entry organon.charter.self-transcendence.orientation.p1 -->

<a id="source-organon-charter-self-transcendence-non-finality-p1"></a>
<!-- lean-entry organon.charter.self-transcendence.non-finality.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence.non-finality#p1`

```text
Refusing to regard an existing form as an endpoint keeps it open to being surpassed. “Existing form” includes a system’s current organization, methods, and principles, not only its appearance or artifacts. These remain within the scope of possible change; their revisability does not guarantee actual progress.
```

State: **limited**; Lean: passed; fidelity: partial.

All five represented form kinds, including organization, method and principle, fall under conditional revisability; a constant trace shows no progress guarantee. The chosen representation is not an exhaustive ontology or an executed revision.

Related targets: [T03](#t03), [T05](#t05).

<!-- /lean-entry organon.charter.self-transcendence.non-finality.p1 -->

<a id="source-organon-charter-self-transcendence-limits-p1"></a>
<!-- lean-entry organon.charter.self-transcendence.limits.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence.limits#p1`

```text
Whether progress has actually occurred remains a separate judgment. Having the orientation does not guarantee progress. Progress cannot be established merely by an increase in the number of artifacts, levels of abstraction, or terms.
```

State: **limited**; Lean: passed; fidelity: partial.

The same before/after states increase inventory, abstraction and vocabulary without adding represented capabilities. Actual performance records can distinguish a genuine extension in a two-case world; empirical reliability beyond that world is not proved.

Related targets: [T03](#t03), [T06](#t06), [T07](#t07).

<!-- /lean-entry organon.charter.self-transcendence.limits.p1 -->

<a id="source-organon-charter-self-transcendence-limits-p2"></a>
<!-- lean-entry organon.charter.self-transcendence.limits.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.self-transcendence.limits#p2`

```text
- “Intrinsic orientation” expresses Organon’s philosophical commitment; it does not assert that all systems in fact develop autonomously.
- Self-transcendence does not imply independence from external experience, knowledge, or collaboration, nor does it guarantee autonomous execution or self-improvement.
- Refusing to regard an existing form as an endpoint does not require every action to produce change. Justified stability can coexist with a generative orientation.
- Whether transcendence expands what can be understood and constructed requires discernible grounds; a system’s own claim of generation does not establish actual achievement.
```

State: **limited**; Lean: passed; fidelity: partial.

Bound execution exhibits separate external dependencies, grounded stability, a nonimproving trace and a refuted owned announcement. These are finite compatibility and failure examples; philosophical adoption and real autonomous development remain outside their conclusions.

Related targets: [T03](#t03), [T06](#t06), [T07](#t07).

<!-- /lean-entry organon.charter.self-transcendence.limits.p2 -->

<a id="source-organon-charter-consistency-p1"></a>
<!-- lean-entry organon.charter.consistency.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.consistency#p1`

```text
> The principles and judgments a system holds simultaneously, together with their implications, must not yield contradictory judgments on the same question under the same assumptions, meanings of terms, and scope of application.
```

State: **limited**; Lean: passed; fidelity: partial.

The general semantic theorem prevents opposite consequences under one theory/context when an admissible world exists. Existence of such a world, choice of questions and interpretation of held judgments are explicit modeling conditions, not guaranteed for reality.

Related targets: [T08](#t08).

<!-- /lean-entry organon.charter.consistency.p1 -->

<a id="source-organon-charter-consistency-meaning-p1"></a>
<!-- lean-entry organon.charter.consistency.meaning.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.consistency.meaning#p1`

```text
“Held simultaneously” specifies which principles, judgments, and implications must hold together. Revision may withdraw an earlier judgment; old and new principles need not remain compatible forever. When a change has occurred, that change cannot be represented as though it had not occurred.
```

State: **limited**; Lean: passed; fidelity: partial.

Concrete retraction slices can reverse judgments, and a conditional reporting specification disallows concealing recognized change. No automatic detector, adequate report generator or real revision history is established.

Related targets: [T09](#t09), [T10](#t10).

<!-- /lean-entry organon.charter.consistency.meaning.p1 -->

<a id="source-organon-charter-consistency-meaning-p2"></a>
<!-- lean-entry organon.charter.consistency.meaning.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.consistency.meaning#p2`

```text
“The same assumptions, meanings of terms, and scope of application” specifies the basis for comparing judgments. Divergent judgments under different conditions do not automatically constitute contradictions. Nor can unacknowledged changes in assumptions, meanings, or scope be used to conceal an existing contradiction.
```

State: **limited**; Lean: passed; fidelity: partial.

Separate assumption, meaning and scope changes admit different judgments; hidden changes fail the adopted report condition. This covers explicit semantic models, not every practical ambiguity or method of concealment.

Related targets: [T09](#t09), [T10](#t10).

<!-- /lean-entry organon.charter.consistency.meaning.p2 -->

<a id="source-organon-charter-consistency-limits-p1"></a>
<!-- lean-entry organon.charter.consistency.limits.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.consistency.limits#p1`

```text
- Tension between different assessments or values does not directly constitute a contradiction. Revision or qualification is needed when they require incompatible conclusions under the same conditions.
- Internal consistency is not correctness or sufficiency. A set of principles may be internally consistent while relying on false assumptions or neglecting important questions.
```

State: **limited**; Lean: passed; fidelity: partial.

Finite witnesses distinguish tension from contradiction and consistency from truth or completeness. Refusing to retain a demonstrated conflict is a conditional consequence of an adopted consistency requirement, not an implemented revision strategy.

Related targets: [T11](#t11), [T12](#t12).

<!-- /lean-entry organon.charter.consistency.limits.p1 -->

<a id="source-organon-charter-reflexivity-p1"></a>
<!-- lean-entry organon.charter.reflexivity.p1 -->
<!-- lean-status incomplete; kernel passed; fidelity partial -->
### `organon.charter.reflexivity#p1`

```text
> A system’s principles of generation and assessment also apply to the system itself and to the formation, application, and revision of those principles.
```

State: **incomplete**; Lean: passed; fidelity: partial.

Reflexive quantifies applicable owned rules and subjects, with coherent keys and meaningful application records. The concrete rule set has generation and assessment work but does not cover every possible real principle.

Related targets: [T13](#t13).

<!-- /lean-entry organon.charter.reflexivity.p1 -->

<a id="source-organon-charter-reflexivity-meaning-p1"></a>
<!-- lean-entry organon.charter.reflexivity.meaning.p1 -->
<!-- lean-status incomplete; kernel passed; fidelity partial -->
### `organon.charter.reflexivity.meaning#p1`

```text
Reflexivity encompasses both the system itself and its principles. Assessment concerns not only whether the system conforms to its principles, but also how those principles are formed, where they apply, and why they may need revision. The formation and revision of principles thus also become objects of generation and assessment.
```

State: **incomplete**; Lean: passed; fidelity: partial.

The revised module models formation purposes, requested applicability scopes and revision counterexamples with actual evaluation and generation outcomes. These finite inquiry contracts do not establish the correctness or completeness of every assessment methodology.

Related targets: [T13](#t13).

<!-- /lean-entry organon.charter.reflexivity.meaning.p1 -->

<a id="source-organon-charter-reflexivity-limits-p1"></a>
<!-- lean-entry organon.charter.reflexivity.limits.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.charter.reflexivity.limits#p1`

```text
- Applying principles equally retains their conditions of application. When the relevant conditions hold, being the system itself is not a basis for exemption. Nor does the requirement of reflexivity establish that every principle can be applied to itself without examining its applicability.
- Self-application does not constitute self-proof. Subjecting a principle to its own assessment does not thereby establish its correctness.
- That a revision is produced by the system itself does not give it sufficient grounds.
```

State: **limited**; Lean: passed; fidelity: partial.

Applicability is retained, self-exemption fails where conditions hold, and finite self-tests plus a produced revision fail to establish universal support. The owned records and source identities are mathematical objects, not authenticated execution histories.

Related targets: [T13](#t13), [T14](#t14).

<!-- /lean-entry organon.charter.reflexivity.limits.p1 -->

<a id="source-organon-grounds-p1"></a>
<!-- lean-entry organon.grounds.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds#p1`

```text
> The grounds of principles and judgments must be articulable and subject to assessment appropriate to the nature of the claim. The strength and scope of a claim must be proportionate to the support provided by its grounds.
```

State: **limited**; Lean: passed; fidelity: partial.

Grounds checks identified applicable facets of the same claim; support, entailment and an option-indexed value procedure carry distinct responsibilities. This is a chosen formal interface and finite fulfillment examples, not a universal sufficient criterion for all philosophical grounds.

Related targets: [T07](#t07), [T15](#t15).

<!-- /lean-entry organon.grounds.p1 -->

<a id="source-organon-grounds-assessment-p1"></a>
<!-- lean-entry organon.grounds.assessment.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.assessment#p1`

```text
Articulation and assessment have distinct responsibilities. Articulability requires that concepts, assumptions, reasons, and limits can be identified. Assessment requires examining whether those grounds support the corresponding claim. Clearly expressed grounds are not thereby sufficiently established. When a claim has more than one applicable aspect, the corresponding assessment responsibilities apply to each aspect. Omitting a classification does not waive an applicable responsibility.
```

State: **limited**; Lean: passed; fidelity: partial.

Articulation content is linked to each facet and separated from its discharge; union and missing-aspect examples prevent labels from waiving represented duties. Identifying every actually relevant aspect remains an application responsibility not solved by the datatype.

Related targets: [T15](#t15), [T16](#t16), [T17](#t17), [T18](#t18), [T28](#t28).

<!-- /lean-entry organon.grounds.assessment.p1 -->

<a id="source-organon-grounds-assessment-p2"></a>
<!-- lean-entry organon.grounds.assessment.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.assessment#p2`

```text
| Type of claim | Responsibility of assessment | What cannot substitute for that responsibility |
| --- | --- | --- |
| Empirical claim | Examine observations, evidence, and performance, together with the conditions, scope, and uncertainty of their support for the claim. | Treating measurability or repeatability itself as proof of relevance, correctness, or value. |
| Inferential claim | Examine whether the conclusion is supported by the stated assumptions and inferential relations. | Treating the absence of conflict between a conclusion and its assumptions as sufficient to establish that the conclusion follows from them. |
| Value commitment | State the position taken, its reasons, limits of application, and consequences, and remain open to relevant criticism. | Presenting a commitment as an empirical fact or a necessary inference, or substituting self-assertion for reasons. |
```

State: **limited**; Lean: passed; fidelity: partial.

The three modeled adapters check observational compatibility/support, semantic entailment, and value reasons with limits/consequences/criticism. Actual relevance, empirical uncertainty and the adequacy of value criticism beyond the chosen cases are not exhaustively formalized.

Related targets: [T15](#t15), [T16](#t16), [T17](#t17), [T18](#t18), [T28](#t28).

<!-- /lean-entry organon.grounds.assessment.p2 -->

<a id="source-organon-grounds-assessment-p3"></a>
<!-- lean-entry organon.grounds.assessment.p3 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.assessment#p3`

```text
Initial value commitments may be stated explicitly as commitments; they need not prove all their own starting assumptions. The strength and scope of a claim do not require conversion to a common numerical scale. Different types of claims specify their support and limits in accordance with their nature.
```

State: **limited**; Lean: passed; fidelity: partial.

JointAdoption requires consistent instantiated starting commitments without proving all starting assumptions. A two-reason example and heterogeneous facets avoid a universal numerical scale. They demonstrate procedural consistency, not ultimate value justification.

Related targets: [T15](#t15), [T16](#t16), [T17](#t17), [T18](#t18), [T28](#t28).

<!-- /lean-entry organon.grounds.assessment.p3 -->

<a id="source-organon-grounds-scope-p1"></a>
<!-- lean-entry organon.grounds.scope.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.scope#p1`

```text
Performance is discerned within particular relations, conditions, and scopes of observation. A boundary helps specify what a comparison concerns, but local examples do not automatically support unconditional universal conclusions. A judgment cannot establish that relevant differences do not exist merely because its chosen scope omits them.
```

State: **limited**; Lean: passed; fidelity: partial.

A proper local observation scope supports a local function claim while admitting a counterexample outside it. This establishes the specified nonentailment; it neither identifies all relevant real differences nor rules out justified wider evidence.

Related targets: [T19](#t19), [T20](#t20).

<!-- /lean-entry organon.grounds.scope.p1 -->

<a id="source-organon-grounds-scope-p2"></a>
<!-- lean-entry organon.grounds.scope.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.scope#p2`

```text
Measurement can make some differences comparable. Repeated assessment can help examine the stability of corresponding conclusions. Their roles, and the role of any assessment framework, must be explained relative to the claim and its context. Measurement, repeatability, and an assessment framework do not form a universally necessary chain on which all judgments must depend.
```

State: **limited**; Lean: passed; fidelity: partial.

Repeated irrelevant measurements fail support, while a valid inferential assessment needs no empirical chain. This refutes a universal mandatory chain within the represented responsibilities but does not characterize every framework or measurement practice.

Related targets: [T19](#t19), [T20](#t20).

<!-- /lean-entry organon.grounds.scope.p2 -->

<a id="source-organon-grounds-scope-p3"></a>
<!-- lean-entry organon.grounds.scope.p3 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.scope#p3`

```text
An observation that has not been reproduced may still offer limited support, and random outcomes need not be identical on every occasion. The verifiability of observations, reproducibility of conditions, and stability of conclusions must be distinguished.
```

State: **limited**; Lean: passed; fidelity: partial.

A single observation has limited support and distinct trial outcomes preserve a fixed bound. Verification, reproducible conditions and conclusion stability use separate predicates; no probability distribution or general reproducibility law is proved.

Related targets: [T19](#t19), [T20](#t20).

<!-- /lean-entry organon.grounds.scope.p3 -->

<a id="source-organon-grounds-capabilities-p1"></a>
<!-- lean-entry organon.grounds.capabilities.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.capabilities#p1`

```text
Capability claims are subject to Grounds: the capability claimed, its conditions, and the support for it must be identifiable. The core does not prescribe uniform definitions of method mastery, method generation, or capability levels. Applications specify the capabilities they assess and may require understanding, explanation, or performance under relevant variations.
```

State: **limited**; Lean: passed; fidelity: partial.

Output-only and explanation-bearing contracts concern the same process and each has its own checked Grounds; applicationVariation changes the actual objective and invalidates old evidence. No uniform real mastery or capability-level definition is derived.

Related targets: [T07](#t07), [T21](#t21).

<!-- /lean-entry organon.grounds.capabilities.p1 -->

<a id="source-organon-grounds-capabilities-p2"></a>
<!-- lean-entry organon.grounds.capabilities.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.capabilities#p2`

```text
Grounds for a capability claim may be supplied by an external assessor. Their articulability does not by itself require the assessed system to understand or explain its internal generation process. Evidence of reliable output must be assessed against the capability actually claimed; it does not automatically establish understanding of that process. Nor can the number of method documents, terms, tools, or artifacts alone establish a capability beyond what that evidence supports.
```

State: **limited**; Lean: passed; fidelity: partial.

A distinct assessor role supplies a proof about the exact output process while no explanation certificate is attached; duplicating four inventory kinds leaves represented capability unchanged. Role numbers and certificates do not prove external provenance or human-like understanding.

Related targets: [T07](#t07), [T21](#t21).

<!-- /lean-entry organon.grounds.capabilities.p2 -->

<a id="source-organon-grounds-implementations-p1"></a>
<!-- lean-entry organon.grounds.implementations.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.implementations#p1`

```text
> The choice of an implementation must be supported by reasons connected to the objectives and values pursued and to the relevant constraints. Its name, conventional use, or established status alone does not provide sufficient grounds for giving it priority.
```

State: **limited**; Lean: passed; fidelity: partial.

The adopted choice interface requires feasibility and an objective/value/constraint-linked reason and rejects status-only reasons. Its finite reason vocabulary and concrete feasibility checks do not supply a general theory of warranted real implementation choice.

Related targets: [T22](#t22), [T23](#t23).

<!-- /lean-entry organon.grounds.implementations.p1 -->

<a id="source-organon-grounds-implementations-p2"></a>
<!-- lean-entry organon.grounds.implementations.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.implementations#p2`

```text
This choice provision adds an additional evaluative commitment: name, conventional use, or established status alone is insufficient to establish priority. Grouping it under Grounds does not mean that it follows from the general requirement to assess reasons, or merely from the discernibility of performance. Conventions and existing arrangements may have practical significance, but that significance must be connected to the objectives and values pursued and to the relevant constraints.
```

State: **limited**; Lean: passed; fidelity: partial.

Two independent policies share a correct negative audit but differ on the added choice norm, establishing independence from the represented assessment procedure. This does not show an unsupported priority claim fully satisfies general Grounds, or derive a value commitment from neutral facts.

Related targets: [T22](#t22), [T23](#t23).

<!-- /lean-entry organon.grounds.implementations.p2 -->

<a id="source-organon-grounds-implementations-limits-p1"></a>
<!-- lean-entry organon.grounds.implementations.limits.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.grounds.implementations.limits#p1`

```text
- Openness does not make all implementations equivalent, nor does it guarantee multiple feasible implementations for the same objective.
- A method’s explanatory power, limits of application, simplicity, and explicit process requirements may all provide grounded reasons for assessment. They cannot be excluded merely because they concern methods internal to the implementation.
- Identical local performance does not establish overall equivalence. Relations, conditions, and the scope of comparison are constrained by the provisions of Grounds.
- Openness does not reject an implementation merely because it already exists or is conventionally used. Relevant reasons may still give it priority.
```

State: **limited**; Lean: passed; fidelity: partial.

Concrete cases have one feasible candidate, unequal implementations, local agreement with wider difference and four eligible internal reasons. A cheap wrong-output method shows eligibility alone is insufficient. These results concern selected candidates and contracts, not all methods.

Related targets: [T24](#t24).

<!-- /lean-entry organon.grounds.implementations.limits.p1 -->

<a id="source-organon-relationships"></a>
<!-- lean-entry organon.relationships -->
<!-- lean-status not_applicable; kernel not_checked; fidelity not_applicable -->
### `organon.relationships`

```text


```

State: **not_applicable**; Lean: not_checked; fidelity: not_applicable.

Structural heading without substantive direct-body content; no theorem is assigned.

<!-- /lean-entry organon.relationships -->

<a id="source-organon-relationships-roles-p1"></a>
<!-- lean-entry organon.relationships.roles.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.relationships.roles#p1`

```text
The charter states the generative orientation, the consistency constraint, and reflexive application. Grounds specifies support requirements for judgments and includes an additional commitment concerning implementation choices. Both parts belong to the core and constrain one another. Their placement neither makes Grounds a deduction from the charter nor gives the charter priority over it. Each commitment needs its own reasons.
```

State: **limited**; Lean: passed; fidelity: partial.

One shared model combines the charter and Grounds and assigns five commitments distinct operational reasons, limits and live criticism. Specified nonentailments prevent chapter order from doing logical work; neither the universal adoption nor ultimate justification of all commitments follows.

Related targets: [T02](#t02), [T12](#t12), [T23](#t23), [T25](#t25), [T26](#t26), [T27](#t27).

<!-- /lean-entry organon.relationships.roles.p1 -->

<a id="source-organon-relationships-roles-p2"></a>
<!-- lean-entry organon.relationships.roles.p2 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.relationships.roles#p2`

```text
Internal Consistency concerns whether simultaneously held judgments can hold together; Grounds concerns whether and how far a claim is supported. A conclusion may fail to conflict with its assumptions without being supported by them. Self-Transcendence specifies a generative orientation and non-finality; neither establishes actual capability. Applications may supply objectives, values, and capability definitions; claims made under those objectives, values, and definitions remain subject to the relevant core provisions.
```

State: **limited**; Lean: passed; fidelity: partial.

Consistency/support and orientation/capability remain separate; changing an application objective changes its actual claim and can defeat retained evidence. Universal application compliance is only an assumed conditional interface, not an achieved fact.

Related targets: [T02](#t02), [T12](#t12), [T23](#t23), [T25](#t25), [T26](#t26), [T27](#t27).

<!-- /lean-entry organon.relationships.roles.p2 -->

<a id="source-organon-relationships-roles-p3"></a>
<!-- lean-entry organon.relationships.roles.p3 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.relationships.roles#p3`

```text
Self-Transcendence does not substitute for Reflexivity: keeping existing forms open to being surpassed differs from applying relevant principles to the system and to their own formation, application, and revision. Reflexivity extends these requirements to the system and to the formation, application, and revision of its principles. The grounds and limits of the Grounds provisions must themselves be articulable. The system’s own capability claims remain subject to assessment, and this philosophy’s existing form cannot gain priority merely from its established status. Such mutual application provides no self-proof and does not remove conditions of application.
```

State: **limited**; Lean: passed; fidelity: partial.

Contentful self-application, exact own-capability assessment, the general Grounds provision and the same current philosophy method are linked in the model. Their checked coexistence supplies no self-proof, real execution guarantee or unconditional applicability.

Related targets: [T02](#t02), [T12](#t12), [T23](#t23), [T25](#t25), [T26](#t26), [T27](#t27).

<!-- /lean-entry organon.relationships.roles.p3 -->

<a id="source-organon-relationships-terms-p1"></a>
<!-- lean-entry organon.relationships.terms.p1 -->
<!-- lean-status limited; kernel passed; fidelity partial -->
### `organon.relationships.terms#p1`

```text
| Term | Meaning in this philosophy |
| --- | --- |
| Existing form | The system’s current organization, methods, and principles, not only its appearance or artifacts. |
| Assessment | Examination of reasons, applicability, and observed performance; not limited to executable tests. |
```

State: **limited**; Lean: passed; fidelity: partial.

FormKind includes organization, methods and principles, and an inferential assessment has no executable-test requirement. These representations illustrate the terms without exhaustively defining every existing form or every non-test assessment.

Related targets: [T05](#t05), [T28](#t28).

<!-- /lean-entry organon.relationships.terms.p1 -->

## Complete code and line explanations

Each file retains its exact checked contents. These line explanations are informed translations of the revised object; the initial blind account and rejected earlier judgments are retained separately.

<a id="code-leanified-corereader-agency-lean"></a>
### `leanified/CoreReader/Agency.lean`

<!-- lean-code leanified/CoreReader/Agency.lean -->
```lean
import CoreReader.Reflexivity

namespace CoreReader.Agency

inductive FormKind | organization | method | principle | appearance | artifact
  deriving DecidableEq, Repr

structure Form where
  kind : FormKind
  version : Nat
  deriving DecidableEq, Repr

inductive Aim | expandUnderstandingAndConstruction | preserveSafeOperation
  deriving DecidableEq, Repr

/- A policy records an adopted valuation, current forms, and permission. It does not assert that valuation is correct or enacted. -/
structure Policy where
  worthPursuing : Aim → Prop
  current : Form → Prop
  revisable : Form → Prop
  permitsVersion : Nat → Nat → Prop

/- The normative specification keeps valuation and revisability separate from realized transitions. -/
/-- organon-map CoreReader.Agency.Generative
organon.charter.overview#p2 sha256 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c
organon.charter.overview#p3 sha256 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c
organon.charter.self-transcendence#p1 sha256 f4ca590e2ae15e3882f70c7b2bc46a8911c97cee547c8b137b5493fbf862c8c0
organon.charter.self-transcendence.orientation#p1 sha256 7f9b85c0816b3d69e417cf3cbe17b7b59931388f84d799ce6730c998037358bf
organon.charter.self-transcendence.non-finality#p1 sha256 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8
organon.charter.self-transcendence.limits#p1 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.charter.self-transcendence.limits#p2 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
-/
def Generative (p : Policy) : Prop :=
  p.worthPursuing .expandUnderstandingAndConstruction ∧
    ∀ f, p.current f → p.revisable f

def openPolicy : Policy where
  worthPursuing a := a = .expandUnderstandingAndConstruction ∨ a = .preserveSafeOperation
  current f := f.version = 0
  revisable _ := True
  permitsVersion _ _ := True

def neutralPolicy : Policy := { openPolicy with worthPursuing := fun _ => False }

/- Permitting a real version change does not supply an adopted value position. -/
/-- organon-map CoreReader.Agency.permissionNotValuation
organon.charter.self-transcendence.orientation#p1 sha256 7f9b85c0816b3d69e417cf3cbe17b7b59931388f84d799ce6730c998037358bf
-/
theorem permissionNotValuation :
    neutralPolicy.permitsVersion 0 1 ∧ (0 : Nat) ≠ 1 ∧ ¬ Generative neutralPolicy := by
  simp [neutralPolicy, openPolicy, Generative]

/- This is an explicit consequence of the adopted specification, not evidence of actual revision. -/
/-- organon-map CoreReader.Agency.revisabilityCovers
organon.charter.self-transcendence.non-finality#p1 sha256 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8
organon.relationships.terms#p1 sha256 0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1
-/
theorem revisabilityCovers (p : Policy) (h : Generative p) (k : FormKind) (v : Nat)
    (hc : p.current ⟨k, v⟩) : p.revisable ⟨k, v⟩ := h.2 _ hc

inductive Operation | copy | successor
  deriving DecidableEq, Repr

def Operation.run : Operation → Nat → Nat
  | .copy, n => n
  | .successor, n => n + 1

inductive InventoryKind | document | term | tool | artifact
  deriving DecidableEq, Repr

structure Item where
  kind : InventoryKind
  content : Operation
  deriving DecidableEq, Repr

/- Available represented operations are the contents present, not their number of occurrences. -/
def Available (xs : List Item) (op : Operation) : Prop :=
  ∃ item ∈ xs, item.content = op

/- Duplicating any inventory category preserves exactly the represented operation content. -/
/-- organon-map CoreReader.Agency.inventoryNotCapability
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem inventoryNotCapability (kind : InventoryKind) (ops : List Operation) (op : Operation) :
    Available ((ops.map fun x => Item.mk kind x) ++ (ops.map fun x => Item.mk kind x)) op ↔
      Available (ops.map fun x => Item.mk kind x) op := by
  simp only [Available, List.mem_append]
  constructor
  · rintro ⟨x, hx | hx, hop⟩ <;> exact ⟨x, hx, hop⟩
  · rintro ⟨x, hx, hop⟩
    exact ⟨x, Or.inl hx, hop⟩

structure State where
  understood : List Operation
  constructed : List Operation
  inventory : List Item
  abstractionLayers : List Operation
  vocabulary : List Operation
  deriving DecidableEq, Repr

/- A gain must identify an operation newly understood or constructed; this is a disclosed finite capability representation. -/
def Expanded (before after : State) : Prop :=
  (∃ op, op ∈ after.understood ∧ op ∉ before.understood) ∨
  (∃ op, op ∈ after.constructed ∧ op ∉ before.constructed)

def baseState : State :=
  ⟨[.copy], [.copy], [⟨.artifact, .copy⟩], [.copy], [.copy]⟩

def inflatedState : State :=
  { baseState with
    inventory := baseState.inventory ++ baseState.inventory
    abstractionLayers := [.copy, .copy]
    vocabulary := [.copy, .copy] }

def stableTrace (_time : Nat) : State := baseState

/- A revisable policy can govern an unchanged trace; no improvement is hidden in revisability. -/
/-- organon-map CoreReader.Agency.revisionWithoutProgress
organon.charter.self-transcendence.non-finality#p1 sha256 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8
organon.relationships.terms#p1 sha256 0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1
-/
theorem revisionWithoutProgress :
    Generative openPolicy ∧
    (∀ k : FormKind, openPolicy.revisable ⟨k, 0⟩) ∧
    (∀ t, ¬ Expanded (stableTrace t) (stableTrace (t + 1))) := by
  simp [Generative, openPolicy, stableTrace, Expanded]

structure ExternalResources where
  experience : Option Nat
  knowledge : Option Nat
  collaborator : Option Nat
  deriving DecidableEq, Repr

/- This interpreter actually needs all three external inputs to produce the modeled result. -/
def assistedExecution (r : ExternalResources) : Option Nat := do
  let e ← r.experience
  let k ← r.knowledge
  let c ← r.collaborator
  pure (Operation.copy.run (e + k + c))

def availableResources : ExternalResources := ⟨some 1, some 2, some 3⟩

/- Stability has a concrete stated reason in this workload: preserve its operation while staying within the one-item budget. -/
def StableReason (before proposed : State) : Prop :=
  before.constructed = proposed.constructed ∧
  before.inventory.length ≤ 1 ∧ ¬ proposed.inventory.length ≤ 1

/- The policy, current capabilities, execution interface and workload constraints belong to one generating system. -/
structure GeneratingSystem where
  owner : Nat
  policy : Policy
  current : State
  execute : ExternalResources → Option Nat
  applicationBudget : Nat
  requiredOperations : List Operation
/- The modeled system uses the assisted interpreter under a one-item budget and a copy-operation requirement. -/
def generatingSystem : GeneratingSystem where
  owner := 0
  policy := openPolicy
  current := baseState
  execute := assistedExecution
  applicationBudget := 1
  requiredOperations := [.copy]
/- A stable action retains this system's own current state. -/
def GeneratingSystem.stableAction (system : GeneratingSystem) : State := system.current
def GeneratingSystem.requirementsMet (system : GeneratingSystem) (state : State) : Prop :=
  ∀ operation, operation ∈ system.requiredOperations → operation ∈ state.constructed
def GeneratingSystem.withinBudget (system : GeneratingSystem) (state : State) : Prop :=
  state.inventory.length ≤ system.applicationBudget
/- An expansion report identifies the actual before/after states and the operation/performance it asserts was added. -/
structure Announcement where
  owner : Nat
  before : State
  after : State
  reportedNewOperation : Operation
  input : Nat
  expectedOutput : Nat
  deriving DecidableEq, Repr
/- Reports are generated by this system and identify its actual current state as their baseline. -/
def GeneratingSystem.report (system : GeneratingSystem) (after : State)
    (operation : Operation) (input expectedOutput : Nat) : Announcement :=
  ⟨system.owner, system.current, after, operation, input, expectedOutput⟩
/- Report content is interpreted against those very states and the named operation's actual behavior. -/
def Announcement.claim (report : Announcement) : Prop :=
  report.reportedNewOperation ∈ report.after.constructed ∧
  report.reportedNewOperation ∉ report.before.constructed ∧
  report.reportedNewOperation.run report.input = report.expectedOutput
/- A true report of this form entails a represented construction expansion. -/
theorem announcementClaimImpliesExpansion (report : Announcement) (h : report.claim) :
    Expanded report.before report.after := Or.inr ⟨report.reportedNewOperation, h.1, h.2.1⟩
/- This concrete self-report asserts a successor operation for the actual inventory-only inflation. -/
def inflatedAnnouncement : Announcement := generatingSystem.report inflatedState .successor 0 1
/- The report asserts a real successor result but its named operation is absent from its own after-state. -/
theorem inflatedAnnouncementRefuted :
    inflatedAnnouncement.before = baseState ∧ inflatedAnnouncement.after = inflatedState ∧
    inflatedAnnouncement.reportedNewOperation = .successor ∧
    inflatedAnnouncement.input = 0 ∧ inflatedAnnouncement.expectedOutput = 1 ∧
    ¬ inflatedAnnouncement.claim ∧ ¬ Expanded inflatedAnnouncement.before inflatedAnnouncement.after := by
  simp [inflatedAnnouncement, GeneratingSystem.report, generatingSystem, Announcement.claim, Expanded, baseState, inflatedState]

/- These transitions share one initial state; only extension adds an actual new operation. -/
inductive TransitionCase | inflate | extend
  deriving DecidableEq, Repr

def extendedState : State :=
  { baseState with understood := [.copy, .successor], constructed := [.copy, .successor] }
def transitionBefore (_transition : TransitionCase) : State := baseState
def transitionAfter : TransitionCase → State
  | .inflate => inflatedState
  | .extend => extendedState
/- Both alternatives are assessed under the same concrete input condition. -/
def transitionInput (_transition : TransitionCase) : Nat := 0
def transitionAnnouncement (transition : TransitionCase) : Announcement :=
  generatingSystem.report (transitionAfter transition) .successor (transitionInput transition) 1

/- Eleven boundary branches share a content-bearing trace and executable dependency model. They do not assert a universal law of human capability. -/
/-- organon-map CoreReader.Agency.generationLimits
organon.charter.self-transcendence.limits#p1 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.charter.self-transcendence.limits#p2 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
-/
theorem generationLimits :
    Generative generatingSystem.policy ∧
    generatingSystem.policy.permitsVersion 0 0 ∧
    ¬ Expanded generatingSystem.current inflatedState ∧
    generatingSystem.current.inventory.length < inflatedState.inventory.length ∧
    generatingSystem.current.abstractionLayers.length < inflatedState.abstractionLayers.length ∧
    generatingSystem.current.vocabulary.length < inflatedState.vocabulary.length ∧
    generatingSystem.execute availableResources = some 6 ∧
    generatingSystem.execute { availableResources with experience := none } = none ∧
    generatingSystem.execute { availableResources with knowledge := none } = none ∧
    generatingSystem.execute { availableResources with collaborator := none } = none ∧
    generatingSystem.execute ⟨none, none, none⟩ = none ∧
    ¬ Expanded generatingSystem.current generatingSystem.stableAction ∧
    generatingSystem.stableAction = generatingSystem.current ∧
    generatingSystem.requirementsMet generatingSystem.stableAction ∧
    generatingSystem.withinBudget generatingSystem.stableAction ∧
    ¬ generatingSystem.withinBudget inflatedState ∧
    StableReason generatingSystem.current inflatedState ∧
    (inflatedAnnouncement = generatingSystem.report inflatedState .successor 0 1 ∧
      inflatedAnnouncement.owner = generatingSystem.owner ∧
      inflatedAnnouncement.before = generatingSystem.current ∧ inflatedAnnouncement.after = inflatedState ∧
      inflatedAnnouncement.reportedNewOperation = .successor ∧
      inflatedAnnouncement.input = 0 ∧ inflatedAnnouncement.expectedOutput = 1 ∧
      ¬ inflatedAnnouncement.claim ∧ ¬ Expanded inflatedAnnouncement.before inflatedAnnouncement.after) := by
  simp [generatingSystem, GeneratingSystem.stableAction, GeneratingSystem.requirementsMet,
    GeneratingSystem.withinBudget, GeneratingSystem.report, Generative, openPolicy, Expanded,
    baseState, inflatedState, assistedExecution, availableResources, Operation.run,
    StableReason, inflatedAnnouncement, Announcement.claim]

/- The empty work log omits an actually applicable system assessment despite an open generative policy. -/
/-- organon-map CoreReader.Agency.generationNotReflexivity
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem generationNotReflexivity :
    Generative openPolicy ∧ ¬ Reflexive 0 (ownRules 0) [] := by
  constructor
  · simp [Generative, openPolicy]
  · intro h
    have bad := noSelfExemption 0 (ownRules 0) [] h (assessingRule 0) (by simp [ownRules])
      (.system 0) rfl (by simp [assessingRule, ownSubjects])
    simp [Performed] at bad

/- The same proposed arithmetic principle is used in the self-test and in the universal correctness claim. -/
def ownArithmeticPrinciple (n : Nat) : Bool := decide (n + 1 = 2 * n)

def selfTest (samples : List Nat) : Bool := samples.all ownArithmeticPrinciple

/- A genuine evaluation on the selected sample succeeds, while the same principle fails at zero. -/
/-- organon-map CoreReader.Agency.selfTestDoesNotProve
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem selfTestDoesNotProve :
    selfTest [1] = true ∧ ownArithmeticPrinciple 0 = false ∧
      ¬ (∀ n, ownArithmeticPrinciple n = true) := by
  constructor
  · decide
  constructor
  · decide
  · intro h
    have bad := h 0
    contradiction

end CoreReader.Agency
```
<!-- /lean-code leanified/CoreReader/Agency.lean -->

<a id="line-code-leanified-corereader-agency-lean-1"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:1 --> **L1** Imports CoreReader.Reflexivity and its dependencies into this module.

<a id="line-code-leanified-corereader-agency-lean-3"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:3 --> **L3** Opens namespace CoreReader.Agency; file boundaries do not change declaration identity.

<a id="line-code-leanified-corereader-agency-lean-5"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:5 --> **L5** Defines exactly five form tags; their names carry no additional semantics.

<a id="line-code-leanified-corereader-agency-lean-6"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:6 --> **L6** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-8"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:8 --> **L8** A form is a kind tag and a natural-number version.

<a id="line-code-leanified-corereader-agency-lean-9"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:9 --> **L9** Stores whether this form is an organization, method, principle, appearance or artifact.

<a id="line-code-leanified-corereader-agency-lean-10"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:10 --> **L10** Stores a natural-number form version; it does not prove any change occurred.

<a id="line-code-leanified-corereader-agency-lean-11"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:11 --> **L11** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-13"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:13 --> **L13** Defines two aim tags: expanding understanding/construction and preserving safe operation; the datatype alone does not value either aim.

<a id="line-code-leanified-corereader-agency-lean-14"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:14 --> **L14** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-16"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:16 --> **L16** Documents the following definition or result: A policy supplies four unrelated predicate fields; no law ties version permission to valuation or revisability.

<a id="line-code-leanified-corereader-agency-lean-17"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:17 --> **L17** A policy supplies four unrelated predicate fields; no law ties version permission to valuation or revisability.

<a id="line-code-leanified-corereader-agency-lean-18"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:18 --> **L18** Specifies which of the two represented aims this policy regards as worth pursuing.

<a id="line-code-leanified-corereader-agency-lean-19"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:19 --> **L19** Specifies the form kind/version pairs currently held by this policy.

<a id="line-code-leanified-corereader-agency-lean-20"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:20 --> **L20** Specifies which form kind/version pairs this policy leaves revisable.

<a id="line-code-leanified-corereader-agency-lean-21"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:21 --> **L21** Specifies permission between version numbers independently of actual execution.

<a id="line-code-leanified-corereader-agency-lean-23"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:23 --> **L23** Documents the following definition or result: A policy satisfies this predicate when it values the designated expansion aim and declares every current form revisable. This states no actual progress condition.

<a id="line-code-leanified-corereader-agency-lean-24"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:24 --> **L24** Opens provenance metadata binding CoreReader.Agency.Generative to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-agency-lean-25"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:25 --> **L25** Records source reference organon.charter.overview#p2 with content digest 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-26"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:26 --> **L26** Records source reference organon.charter.overview#p3 with content digest 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-27"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:27 --> **L27** Records source reference organon.charter.self-transcendence#p1 with content digest f4ca590e2ae15e3882f70c7b2bc46a8911c97cee547c8b137b5493fbf862c8c0; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-28"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:28 --> **L28** Records source reference organon.charter.self-transcendence.orientation#p1 with content digest 7f9b85c0816b3d69e417cf3cbe17b7b59931388f84d799ce6730c998037358bf; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-29"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:29 --> **L29** Records source reference organon.charter.self-transcendence.non-finality#p1 with content digest 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-30"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:30 --> **L30** Records source reference organon.charter.self-transcendence.limits#p1 with content digest 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-31"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:31 --> **L31** Records source reference organon.charter.self-transcendence.limits#p2 with content digest 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-32"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:32 --> **L32** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-agency-lean-33"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:33 --> **L33** A policy satisfies this predicate when it values the designated expansion aim and declares every current form revisable. This states no actual progress condition.

<a id="line-code-leanified-corereader-agency-lean-34"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:34 --> **L34** Requires this policy to value expanding understanding and construction.

<a id="line-code-leanified-corereader-agency-lean-35"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:35 --> **L35** Requires every form currently held by this policy to remain revisable.

<a id="line-code-leanified-corereader-agency-lean-37"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:37 --> **L37** Constructs a policy valuing both aims, selecting version zero, and permitting every revision and version pair.

<a id="line-code-leanified-corereader-agency-lean-38"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:38 --> **L38** Values both expansion and preserving safe operation in openPolicy.

<a id="line-code-leanified-corereader-agency-lean-39"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:39 --> **L39** Treats precisely version-zero forms as current, regardless of kind.

<a id="line-code-leanified-corereader-agency-lean-40"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:40 --> **L40** Allows revision of every form, including forms not currently held.

<a id="line-code-leanified-corereader-agency-lean-41"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:41 --> **L41** Permits every pair of version numbers; this does not execute a change.

<a id="line-code-leanified-corereader-agency-lean-43"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:43 --> **L43** Copies the open policy but makes every aim unworthy of pursuit; the permission fields are unchanged.

<a id="line-code-leanified-corereader-agency-lean-45"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:45 --> **L45** Documents the following definition or result: Shows permission for version 0 to 1 and distinct versions coexist with failure of the generation predicate.

<a id="line-code-leanified-corereader-agency-lean-46"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:46 --> **L46** Opens provenance metadata binding CoreReader.Agency.permissionNotValuation to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-agency-lean-47"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:47 --> **L47** Records source reference organon.charter.self-transcendence.orientation#p1 with content digest 7f9b85c0816b3d69e417cf3cbe17b7b59931388f84d799ce6730c998037358bf; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-48"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:48 --> **L48** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-agency-lean-49"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:49 --> **L49** Shows permission for version 0 to 1 and distinct versions coexist with failure of the generation predicate.

<a id="line-code-leanified-corereader-agency-lean-50"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:50 --> **L50** States that neutralPolicy permits 0→1, the versions differ, and its missing valuation defeats Generative.

<a id="line-code-leanified-corereader-agency-lean-51"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:51 --> **L51** Unfolds the two policies: permission is true, 0≠1 computes true, and the required valuation is false.

<a id="line-code-leanified-corereader-agency-lean-53"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:53 --> **L53** Documents the following definition or result: Extracts revisability of a specified current kind/version from an assumed generation predicate; it does not revise that form.

<a id="line-code-leanified-corereader-agency-lean-54"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:54 --> **L54** Opens provenance metadata binding CoreReader.Agency.revisabilityCovers to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-agency-lean-55"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:55 --> **L55** Records source reference organon.charter.self-transcendence.non-finality#p1 with content digest 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-56"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:56 --> **L56** Records source reference organon.relationships.terms#p1 with content digest 0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-57"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:57 --> **L57** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-agency-lean-58"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:58 --> **L58** Extracts revisability of a specified current kind/version from an assumed generation predicate; it does not revise that form.

<a id="line-code-leanified-corereader-agency-lean-59"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:59 --> **L59** Uses h's revisability clause on the same kind/version form that hc identifies as current.

<a id="line-code-leanified-corereader-agency-lean-61"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:61 --> **L61** Defines the only two encoded operations: identity and successor on natural numbers.

<a id="line-code-leanified-corereader-agency-lean-62"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:62 --> **L62** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-64"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:64 --> **L64** Interprets an operation as a function on natural numbers.

<a id="line-code-leanified-corereader-agency-lean-65"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:65 --> **L65** Executing copy returns its input unchanged.

<a id="line-code-leanified-corereader-agency-lean-66"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:66 --> **L66** Executing successor returns the input plus one.

<a id="line-code-leanified-corereader-agency-lean-68"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:68 --> **L68** Defines four inventory tags whose operational content is stored separately.

<a id="line-code-leanified-corereader-agency-lean-69"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:69 --> **L69** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-71"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:71 --> **L71** An inventory item consists of a tag and one of the two operations.

<a id="line-code-leanified-corereader-agency-lean-72"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:72 --> **L72** Classifies this inventory item as a document, term, tool or artifact.

<a id="line-code-leanified-corereader-agency-lean-73"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:73 --> **L73** Records the operation represented by this item, independently of its category.

<a id="line-code-leanified-corereader-agency-lean-74"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:74 --> **L74** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-76"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:76 --> **L76** Documents the following definition or result: Availability means that some item in the supplied list has exactly the requested operation as its content.

<a id="line-code-leanified-corereader-agency-lean-77"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:77 --> **L77** Availability means that some item in the supplied list has exactly the requested operation as its content.

<a id="line-code-leanified-corereader-agency-lean-78"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:78 --> **L78** An operation is available exactly when some listed item contains that operation.

<a id="line-code-leanified-corereader-agency-lean-80"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:80 --> **L80** Documents the following definition or result: Proves that duplicating a uniformly tagged list of operations does not change which operations are available.

<a id="line-code-leanified-corereader-agency-lean-81"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:81 --> **L81** Opens provenance metadata binding CoreReader.Agency.inventoryNotCapability to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-agency-lean-82"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:82 --> **L82** Records source reference organon.grounds.capabilities#p1 with content digest 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-83"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:83 --> **L83** Records source reference organon.grounds.capabilities#p2 with content digest 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-84"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:84 --> **L84** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-agency-lean-85"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:85 --> **L85** Proves that duplicating a uniformly tagged list of operations does not change which operations are available.

<a id="line-code-leanified-corereader-agency-lean-86"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:86 --> **L86** Tests availability after duplicating the list of items built from ops and the fixed category.

<a id="line-code-leanified-corereader-agency-lean-87"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:87 --> **L87** Compares it with availability in the original single copy of that same list.

<a id="line-code-leanified-corereader-agency-lean-88"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:88 --> **L88** Expands availability and turns membership in the duplicated list into membership in either copy.

<a id="line-code-leanified-corereader-agency-lean-89"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:89 --> **L89** Proves both directions: duplication neither adds nor removes represented operations.

<a id="line-code-leanified-corereader-agency-lean-90"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:90 --> **L90** An item found in either copy is already an original-list witness for the same operation.

<a id="line-code-leanified-corereader-agency-lean-91"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:91 --> **L91** For the reverse direction, take an original item x with membership hx and matching content hop.

<a id="line-code-leanified-corereader-agency-lean-92"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:92 --> **L92** Places that same item in the first copy, preserving its matching operation.

<a id="line-code-leanified-corereader-agency-lean-94"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:94 --> **L94** A state is five lists; understanding and construction are represented only by membership in the two-operation datatype.

<a id="line-code-leanified-corereader-agency-lean-95"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:95 --> **L95** Lists operations represented as understood in this state.

<a id="line-code-leanified-corereader-agency-lean-96"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:96 --> **L96** Lists operations represented as constructed in this state.

<a id="line-code-leanified-corereader-agency-lean-97"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:97 --> **L97** Stores inventory items; their multiplicity is distinct from capability membership.

<a id="line-code-leanified-corereader-agency-lean-98"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:98 --> **L98** Stores abstraction-layer entries without identifying their count with understanding.

<a id="line-code-leanified-corereader-agency-lean-99"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:99 --> **L99** Stores vocabulary entries without identifying their count with constructed capability.

<a id="line-code-leanified-corereader-agency-lean-100"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:100 --> **L100** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-102"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:102 --> **L102** Documents the following definition or result: Expansion is the appearance of at least one previously absent operation in either understanding or construction. It allows losing other operations.

<a id="line-code-leanified-corereader-agency-lean-103"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:103 --> **L103** Expansion is the appearance of at least one previously absent operation in either understanding or construction. It allows losing other operations.

<a id="line-code-leanified-corereader-agency-lean-104"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:104 --> **L104** Expansion may be witnessed by an operation understood after the change but not before.

<a id="line-code-leanified-corereader-agency-lean-105"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:105 --> **L105** Alternatively, a newly constructed operation witnesses expansion.

<a id="line-code-leanified-corereader-agency-lean-107"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:107 --> **L107** Constructs a state with only copy in every operation list and one copy artifact.

<a id="line-code-leanified-corereader-agency-lean-108"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:108 --> **L108** The baseline understands and constructs copy, with one copy artifact, layer and vocabulary entry.

<a id="line-code-leanified-corereader-agency-lean-110"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:110 --> **L110** Constructs a larger inventory/layer/vocabulary state with unchanged understanding and construction.

<a id="line-code-leanified-corereader-agency-lean-111"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:111 --> **L111** Starts from baseState, retaining fields unless explicitly overwritten below.

<a id="line-code-leanified-corereader-agency-lean-112"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:112 --> **L112** Duplicates the one-item inventory while leaving understood and constructed operations unchanged.

<a id="line-code-leanified-corereader-agency-lean-113"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:113 --> **L113** Replaces one abstraction-layer entry with two copies of copy.

<a id="line-code-leanified-corereader-agency-lean-114"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:114 --> **L114** Similarly doubles the vocabulary list; no new operation is introduced.

<a id="line-code-leanified-corereader-agency-lean-116"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:116 --> **L116** Returns the same base state at every natural-number time.

<a id="line-code-leanified-corereader-agency-lean-118"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:118 --> **L118** Documents the following definition or result: Exhibits a policy meeting the generation interface and universal revisability while its independently chosen constant trace never expands.

<a id="line-code-leanified-corereader-agency-lean-119"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:119 --> **L119** Opens provenance metadata binding CoreReader.Agency.revisionWithoutProgress to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-agency-lean-120"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:120 --> **L120** Records source reference organon.charter.self-transcendence.non-finality#p1 with content digest 4ae4497523e79e0606ab3849c47b6ea16f8888a952e063e6966eb36b750f3df8; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-121"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:121 --> **L121** Records source reference organon.relationships.terms#p1 with content digest 0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-122"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:122 --> **L122** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-agency-lean-123"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:123 --> **L123** Exhibits a policy meeting the generation interface and universal revisability while its independently chosen constant trace never expands.

<a id="line-code-leanified-corereader-agency-lean-124"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:124 --> **L124** Asserts openPolicy meets the adopted valuation-and-revisability specification.

<a id="line-code-leanified-corereader-agency-lean-125"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:125 --> **L125** Additionally exposes revision permission for version zero of every form category.

<a id="line-code-leanified-corereader-agency-lean-126"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:126 --> **L126** Every adjacent pair in the constant trace lacks a newly understood or constructed operation.

<a id="line-code-leanified-corereader-agency-lean-127"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:127 --> **L127** Reduces the policy clauses to true and every expansion claim to impossible new membership in an unchanged list.

<a id="line-code-leanified-corereader-agency-lean-129"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:129 --> **L129** Stores three optional natural numbers representing external-resource slots.

<a id="line-code-leanified-corereader-agency-lean-130"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:130 --> **L130** An optional external experience value; none makes assistedExecution fail at its first read.

<a id="line-code-leanified-corereader-agency-lean-131"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:131 --> **L131** An optional knowledge value required after the experience input.

<a id="line-code-leanified-corereader-agency-lean-132"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:132 --> **L132** An optional collaborator value required before producing the result.

<a id="line-code-leanified-corereader-agency-lean-133"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:133 --> **L133** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-135"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:135 --> **L135** Documents the following definition or result: An Option computation succeeds only when all three slots are present, then returns their sum through identity. This dependency is programmed into the example.

<a id="line-code-leanified-corereader-agency-lean-136"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:136 --> **L136** An Option computation succeeds only when all three slots are present, then returns their sum through identity. This dependency is programmed into the example.

<a id="line-code-leanified-corereader-agency-lean-137"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:137 --> **L137** Reads experience into e, immediately returning none when that resource is absent.

<a id="line-code-leanified-corereader-agency-lean-138"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:138 --> **L138** Reads knowledge into k; absence aborts the same Option computation.

<a id="line-code-leanified-corereader-agency-lean-139"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:139 --> **L139** Reads the collaborator's value into c, also propagating absence.

<a id="line-code-leanified-corereader-agency-lean-140"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:140 --> **L140** Returns the sum e+k+c through the copy operation inside some.

<a id="line-code-leanified-corereader-agency-lean-142"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:142 --> **L142** Provides resource values 1, 2 and 3 for the concrete success case.

<a id="line-code-leanified-corereader-agency-lean-144"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:144 --> **L144** Documents the following definition or result: Defines a particular non-growth reason: construction lists match, the old inventory has length at most one, and the proposed one exceeds one.

<a id="line-code-leanified-corereader-agency-lean-145"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:145 --> **L145** Defines a particular non-growth reason: construction lists match, the old inventory has length at most one, and the proposed one exceeds one.

<a id="line-code-leanified-corereader-agency-lean-146"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:146 --> **L146** A reason to retain the old state requires both states to have exactly the same constructed operations.

<a id="line-code-leanified-corereader-agency-lean-147"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:147 --> **L147** The old inventory must fit the one-item limit while the proposed inventory exceeds it.

<a id="line-code-leanified-corereader-agency-lean-149"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:149 --> **L149** Documents the following definition or result: Binds one owner's policy, current state, resource-dependent executor, budget and required operations.

<a id="line-code-leanified-corereader-agency-lean-150"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:150 --> **L150** Binds one owner's policy, current state, resource-dependent executor, budget and required operations.

<a id="line-code-leanified-corereader-agency-lean-151"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:151 --> **L151** Identifies the owner of this generating system.

<a id="line-code-leanified-corereader-agency-lean-152"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:152 --> **L152** Attaches the valuation and revisability policy to this same system.

<a id="line-code-leanified-corereader-agency-lean-153"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:153 --> **L153** Stores the system's current represented capability and inventory state.

<a id="line-code-leanified-corereader-agency-lean-154"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:154 --> **L154** Stores this system's actual resource-consuming execution function.

<a id="line-code-leanified-corereader-agency-lean-155"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:155 --> **L155** Specifies the inventory-size budget used to evaluate stable and proposed states.

<a id="line-code-leanified-corereader-agency-lean-156"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:156 --> **L156** Specifies operations that the workload requires to remain constructed.

<a id="line-code-leanified-corereader-agency-lean-157"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:157 --> **L157** Documents the following definition or result: Instantiates owner zero with the open policy, base state, three-slot executor, budget one and required copy operation.

<a id="line-code-leanified-corereader-agency-lean-158"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:158 --> **L158** Instantiates owner zero with the open policy, base state, three-slot executor, budget one and required copy operation.

<a id="line-code-leanified-corereader-agency-lean-159"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:159 --> **L159** Assigns owner identifier zero to the concrete generating system.

<a id="line-code-leanified-corereader-agency-lean-160"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:160 --> **L160** Installs openPolicy in that same concrete system.

<a id="line-code-leanified-corereader-agency-lean-161"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:161 --> **L161** Sets its current capabilities and inventory to baseState.

<a id="line-code-leanified-corereader-agency-lean-162"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:162 --> **L162** Uses the three-resource assisted interpreter as this system's execution interface.

<a id="line-code-leanified-corereader-agency-lean-163"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:163 --> **L163** Sets this workload's inventory budget to exactly one item.

<a id="line-code-leanified-corereader-agency-lean-164"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:164 --> **L164** Requires the concrete workload to preserve the copy operation.

<a id="line-code-leanified-corereader-agency-lean-165"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:165 --> **L165** Documents the following definition or result: Returns this system's current state as its stability-preserving action.

<a id="line-code-leanified-corereader-agency-lean-166"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:166 --> **L166** Returns this system's current state as its stability-preserving action.

<a id="line-code-leanified-corereader-agency-lean-167"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:167 --> **L167** Checks every operation required by this same system is constructed in the assessed state.

<a id="line-code-leanified-corereader-agency-lean-168"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:168 --> **L168** For this system and proposed state, every required operation must occur in the state's constructed list.

<a id="line-code-leanified-corereader-agency-lean-169"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:169 --> **L169** Compares the assessed state's inventory length against this system's declared budget.

<a id="line-code-leanified-corereader-agency-lean-170"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:170 --> **L170** Checks the state's inventory count against this same system's declared application budget.

<a id="line-code-leanified-corereader-agency-lean-171"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:171 --> **L171** Documents the following definition or result: Stores reporting owner, exact before/after states, claimed new operation, tested input and expected output.

<a id="line-code-leanified-corereader-agency-lean-172"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:172 --> **L172** Stores reporting owner, exact before/after states, claimed new operation, tested input and expected output.

<a id="line-code-leanified-corereader-agency-lean-173"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:173 --> **L173** Records whose expansion announcement this is.

<a id="line-code-leanified-corereader-agency-lean-174"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:174 --> **L174** Stores the exact baseline state named by the announcement.

<a id="line-code-leanified-corereader-agency-lean-175"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:175 --> **L175** Stores the exact resulting state named by the announcement.

<a id="line-code-leanified-corereader-agency-lean-176"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:176 --> **L176** Names the operation alleged to be newly constructed.

<a id="line-code-leanified-corereader-agency-lean-177"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:177 --> **L177** Fixes the input at which the announced operation's behavior is claimed.

<a id="line-code-leanified-corereader-agency-lean-178"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:178 --> **L178** Stores the claimed output of that operation at the stated input.

<a id="line-code-leanified-corereader-agency-lean-179"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:179 --> **L179** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-180"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:180 --> **L180** Documents the following definition or result: Builds a report from this system's owner/current state and the supplied proposal and operation contract.

<a id="line-code-leanified-corereader-agency-lean-181"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:181 --> **L181** Builds a report from this system's owner/current state and the supplied proposal and operation contract.

<a id="line-code-leanified-corereader-agency-lean-182"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:182 --> **L182** Receives the allegedly new operation and the concrete input/output pair for this report.

<a id="line-code-leanified-corereader-agency-lean-183"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:183 --> **L183** Builds a report tied to the system's owner and current baseline, using the supplied after-state and claim data.

<a id="line-code-leanified-corereader-agency-lean-184"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:184 --> **L184** Documents the following definition or result: Requires the reported operation to be newly constructed and to produce the stated output at the stated input.

<a id="line-code-leanified-corereader-agency-lean-185"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:185 --> **L185** Requires the reported operation to be newly constructed and to produce the stated output at the stated input.

<a id="line-code-leanified-corereader-agency-lean-186"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:186 --> **L186** The reported new operation must actually occur in the announcement's after-state.

<a id="line-code-leanified-corereader-agency-lean-187"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:187 --> **L187** The same operation must be absent from the announcement's baseline constructed list.

<a id="line-code-leanified-corereader-agency-lean-188"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:188 --> **L188** Its actual run at the reported input must equal the announced expected output.

<a id="line-code-leanified-corereader-agency-lean-189"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:189 --> **L189** Documents the following definition or result: Uses the genuinely new constructed operation from an assumed report claim as the expansion witness.

<a id="line-code-leanified-corereader-agency-lean-190"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:190 --> **L190** Uses the genuinely new constructed operation from an assumed report claim as the expansion witness.

<a id="line-code-leanified-corereader-agency-lean-191"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:191 --> **L191** Uses the claim's after-membership and before-absence to construct Expanded's construction branch.

<a id="line-code-leanified-corereader-agency-lean-192"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:192 --> **L192** Documents the following definition or result: This system reports successor at input zero for an inventory-only inflation proposal.

<a id="line-code-leanified-corereader-agency-lean-193"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:193 --> **L193** This system reports successor at input zero for an inventory-only inflation proposal.

<a id="line-code-leanified-corereader-agency-lean-194"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:194 --> **L194** Documents the following definition or result: Computes the exact report objects and shows its claimed new operation and actual expansion both fail.

<a id="line-code-leanified-corereader-agency-lean-195"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:195 --> **L195** Computes the exact report objects and shows its claimed new operation and actual expansion both fail.

<a id="line-code-leanified-corereader-agency-lean-196"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:196 --> **L196** Confirms the concrete announcement refers to baseState and inflatedState themselves.

<a id="line-code-leanified-corereader-agency-lean-197"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:197 --> **L197** Confirms the alleged new operation is successor.

<a id="line-code-leanified-corereader-agency-lean-198"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:198 --> **L198** Confirms the announced test is input zero with expected output one.

<a id="line-code-leanified-corereader-agency-lean-199"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:199 --> **L199** States both that the announcement's substantive claim fails and that its own state pair has no expansion.

<a id="line-code-leanified-corereader-agency-lean-200"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:200 --> **L200** Computes the report fields and unchanged capability lists; successor is absent from the after-state despite its correct 0→1 behavior.

<a id="line-code-leanified-corereader-agency-lean-202"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:202 --> **L202** Documents the following definition or result: Restricts the achievement model to inventory inflation and genuine operation extension.

<a id="line-code-leanified-corereader-agency-lean-203"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:203 --> **L203** Restricts the achievement model to inventory inflation and genuine operation extension.

<a id="line-code-leanified-corereader-agency-lean-204"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:204 --> **L204** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-agency-lean-206"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:206 --> **L206** Adds successor to the base state's understanding and construction lists.

<a id="line-code-leanified-corereader-agency-lean-207"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:207 --> **L207** Adds successor to both understood and constructed lists while retaining the baseline's other fields.

<a id="line-code-leanified-corereader-agency-lean-208"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:208 --> **L208** Both modeled transitions share the same base-state baseline.

<a id="line-code-leanified-corereader-agency-lean-209"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:209 --> **L209** Chooses inflatedState or extendedState according to the transition constructor.

<a id="line-code-leanified-corereader-agency-lean-210"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:210 --> **L210** The inflate transition ends at the inventory-only inflated state.

<a id="line-code-leanified-corereader-agency-lean-211"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:211 --> **L211** The extend transition ends at the state with newly understood and constructed successor.

<a id="line-code-leanified-corereader-agency-lean-212"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:212 --> **L212** Documents the following definition or result: Uses zero as the explicit tested input for both transition cases.

<a id="line-code-leanified-corereader-agency-lean-213"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:213 --> **L213** Uses zero as the explicit tested input for both transition cases.

<a id="line-code-leanified-corereader-agency-lean-214"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:214 --> **L214** Reports successor output one at input zero for this same system and selected after-state.

<a id="line-code-leanified-corereader-agency-lean-215"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:215 --> **L215** Both alternatives announce successor at the shared input zero, but name their own actual after-state.

<a id="line-code-leanified-corereader-agency-lean-217"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:217 --> **L217** Documents the following definition or result: Checks all concrete branches on the bound system: unchanged capability despite list inflation, resource dependence, justified stable action and an untrue same-object achievement report.

<a id="line-code-leanified-corereader-agency-lean-218"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:218 --> **L218** Opens provenance metadata binding CoreReader.Agency.generationLimits to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-agency-lean-219"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:219 --> **L219** Records source reference organon.charter.self-transcendence.limits#p1 with content digest 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-220"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:220 --> **L220** Records source reference organon.charter.self-transcendence.limits#p2 with content digest 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-221"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:221 --> **L221** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-agency-lean-222"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:222 --> **L222** Checks all concrete branches on the bound system: unchanged capability despite list inflation, resource dependence, justified stable action and an untrue same-object achievement report.

<a id="line-code-leanified-corereader-agency-lean-223"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:223 --> **L223** The concrete system retains the adopted generative policy.

<a id="line-code-leanified-corereader-agency-lean-224"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:224 --> **L224** Its policy allows keeping version zero, so generativity does not require every action to change versions.

<a id="line-code-leanified-corereader-agency-lean-225"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:225 --> **L225** Inflating this system's inventory does not expand its represented capabilities.

<a id="line-code-leanified-corereader-agency-lean-226"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:226 --> **L226** The inflated state has strictly more inventory entries than this system's current state.

<a id="line-code-leanified-corereader-agency-lean-227"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:227 --> **L227** Its abstraction-layer count also strictly increases without capability expansion.

<a id="line-code-leanified-corereader-agency-lean-228"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:228 --> **L228** Its vocabulary count strictly increases under the same unchanged capability content.

<a id="line-code-leanified-corereader-agency-lean-229"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:229 --> **L229** With resources 1,2,3, this system's execution actually returns some 6.

<a id="line-code-leanified-corereader-agency-lean-230"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:230 --> **L230** Removing experience from that same resource bundle makes the system's execution fail.

<a id="line-code-leanified-corereader-agency-lean-231"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:231 --> **L231** Removing knowledge alone likewise makes its execution return none.

<a id="line-code-leanified-corereader-agency-lean-232"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:232 --> **L232** Removing the collaborator input alone also makes execution fail.

<a id="line-code-leanified-corereader-agency-lean-233"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:233 --> **L233** With all three external inputs absent, this same execution interface returns none.

<a id="line-code-leanified-corereader-agency-lean-234"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:234 --> **L234** The system's stable action yields no represented capability expansion.

<a id="line-code-leanified-corereader-agency-lean-235"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:235 --> **L235** That stable action is exactly retention of the system's current state.

<a id="line-code-leanified-corereader-agency-lean-236"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:236 --> **L236** Retention preserves the workload's required copy operation.

<a id="line-code-leanified-corereader-agency-lean-237"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:237 --> **L237** The retained one-item state fits this system's one-item application budget.

<a id="line-code-leanified-corereader-agency-lean-238"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:238 --> **L238** The duplicated inventory has two entries and exceeds this same system's one-item budget.

<a id="line-code-leanified-corereader-agency-lean-239"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:239 --> **L239** Stability has the stated reason: construction is unchanged, but only the current state fits the budget.

<a id="line-code-leanified-corereader-agency-lean-240"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:240 --> **L240** Identifies the report as this system's announcement about inflatedState, successor, input zero and output one.

<a id="line-code-leanified-corereader-agency-lean-241"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:241 --> **L241** The report's owner equals this generating system's owner.

<a id="line-code-leanified-corereader-agency-lean-242"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:242 --> **L242** The report uses this system's current state as baseline and inflatedState as result.

<a id="line-code-leanified-corereader-agency-lean-243"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:243 --> **L243** The operation this actual report calls new is successor.

<a id="line-code-leanified-corereader-agency-lean-244"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:244 --> **L244** The report's claimed performance remains the concrete pair 0→1.

<a id="line-code-leanified-corereader-agency-lean-245"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:245 --> **L245** Despite that report, its claim is false and its own before/after pair has no capability expansion.

<a id="line-code-leanified-corereader-agency-lean-246"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:246 --> **L246** Begins computing all generationLimits clauses by exposing the concrete system, retention action and required-operation check.

<a id="line-code-leanified-corereader-agency-lean-247"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:247 --> **L247** Also exposes the one-item budget, report constructor and policy/expansion predicates so their claims reduce to concrete data.

<a id="line-code-leanified-corereader-agency-lean-248"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:248 --> **L248** Uses the actual baseline/inflated lists and three-resource interpreter to decide the size, membership and execution results.

<a id="line-code-leanified-corereader-agency-lean-249"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:249 --> **L249** Finally unfolds the stability reason and owned announcement claim, completing all conjunction branches by computation.

<a id="line-code-leanified-corereader-agency-lean-251"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:251 --> **L251** Documents the following definition or result: Exhibits a policy meeting generation while empty records fail the nonempty concrete reflexivity requirements.

<a id="line-code-leanified-corereader-agency-lean-252"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:252 --> **L252** Opens provenance metadata binding CoreReader.Agency.generationNotReflexivity to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-agency-lean-253"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:253 --> **L253** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-254"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:254 --> **L254** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-255"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:255 --> **L255** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-256"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:256 --> **L256** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-agency-lean-257"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:257 --> **L257** Exhibits a policy meeting generation while empty records fail the nonempty concrete reflexivity requirements.

<a id="line-code-leanified-corereader-agency-lean-258"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:258 --> **L258** Combines a generative openPolicy with failure of owned reflexivity when the work log is empty.

<a id="line-code-leanified-corereader-agency-lean-259"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:259 --> **L259** Separates establishing Generative from refuting the empty-log Reflexive claim.

<a id="line-code-leanified-corereader-agency-lean-260"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:260 --> **L260** Computes openPolicy's expansion valuation and unconditional revisability.

<a id="line-code-leanified-corereader-agency-lean-261"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:261 --> **L261** Assumes, for contradiction, that the empty log satisfies the owned reflexivity contract.

<a id="line-code-leanified-corereader-agency-lean-262"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:262 --> **L262** Applies noSelfExemption to the registered assessingRule, forcing a performed assessment from the assumed empty-log compliance.

<a id="line-code-leanified-corereader-agency-lean-263"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:263 --> **L263** Chooses the very system subject with matching owner and proves that assessment is applicable to it.

<a id="line-code-leanified-corereader-agency-lean-264"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:264 --> **L264** Unfolding Performed reveals an impossible member of the empty work list.

<a id="line-code-leanified-corereader-agency-lean-266"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:266 --> **L266** Documents the following definition or result: Decides the arithmetic equation n+1=2*n for each natural number.

<a id="line-code-leanified-corereader-agency-lean-267"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:267 --> **L267** Decides the arithmetic equation n+1=2*n for each natural number.

<a id="line-code-leanified-corereader-agency-lean-269"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:269 --> **L269** Returns true precisely when the equation holds at every listed sample; no unlisted input is tested.

<a id="line-code-leanified-corereader-agency-lean-271"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:271 --> **L271** Documents the following definition or result: Computes success on sample 1 and failure at 0, refuting universal success. This concerns the particular arithmetic predicate, not a universal impossibility theorem about all self-tests.

<a id="line-code-leanified-corereader-agency-lean-272"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:272 --> **L272** Opens provenance metadata binding CoreReader.Agency.selfTestDoesNotProve to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-agency-lean-273"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:273 --> **L273** Records source reference organon.charter.reflexivity.limits#p1 with content digest ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-agency-lean-274"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:274 --> **L274** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-agency-lean-275"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:275 --> **L275** Computes success on sample 1 and failure at 0, refuting universal success. This concerns the particular arithmetic predicate, not a universal impossibility theorem about all self-tests.

<a id="line-code-leanified-corereader-agency-lean-276"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:276 --> **L276** The same arithmetic principle passes sample 1 but evaluates false at 0.

<a id="line-code-leanified-corereader-agency-lean-277"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:277 --> **L277** Therefore that principle does not return true for every natural-number input.

<a id="line-code-leanified-corereader-agency-lean-278"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:278 --> **L278** Separates the passing sample computation from the two failure claims.

<a id="line-code-leanified-corereader-agency-lean-279"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:279 --> **L279** Evaluates the singleton sample: 1+1 equals 2×1, so selfTest [1] is true.

<a id="line-code-leanified-corereader-agency-lean-280"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:280 --> **L280** Separates the concrete failure at zero from refuting universal success.

<a id="line-code-leanified-corereader-agency-lean-281"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:281 --> **L281** Computes 0+1≠2×0, making ownArithmeticPrinciple 0 false.

<a id="line-code-leanified-corereader-agency-lean-282"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:282 --> **L282** Assumes the same principle succeeds for every input.

<a id="line-code-leanified-corereader-agency-lean-283"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:283 --> **L283** Specializes that universal assumption to input zero.

<a id="line-code-leanified-corereader-agency-lean-284"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:284 --> **L284** Contradicts the computed false result at zero, refuting universal correctness.

<a id="line-code-leanified-corereader-agency-lean-286"></a>
<!-- lean-line leanified/CoreReader/Agency.lean:286 --> **L286** Closes the current namespace.

<a id="code-leanified-corereader-choice-lean"></a>
### `leanified/CoreReader/Choice.lean`

<!-- lean-code leanified/CoreReader/Choice.lean -->
```lean
import CoreReader.Evidence

namespace CoreReader.Choice
open CoreReader.Logic CoreReader.Evidence

inductive StatusKind | name | convention | standing
  deriving DecidableEq, Repr

inductive MethodReason | output | explanation | applicability | simplicity | procedure
  deriving DecidableEq, Repr

inductive Reason | status (kind : StatusKind) | method (kind : MethodReason)
  deriving DecidableEq, Repr

/- An implementation has observable behavior, a stated domain, an explanation formula and an execution trace. -/
structure Implementation where
  name : String
  conventional : Bool
  established : Bool
  run : Nat → Nat
  cost : Nat
  domain : Nat → Prop
  explanation : Nat → Nat
  trace : Nat → List Nat

/- An application selects relevant objectives and constraints; no universal ranking or score is prescribed. -/
structure Requirements where
  inputs : Nat → Prop
  expected : Nat → Nat
  budget : Nat
  values : MethodReason → Prop

/- These are explicit, content-based interpretations of possible method reasons in this application. -/
def MethodContent (req : Requirements) (i : Implementation) : MethodReason → Prop
  | .output => ∀ x, req.inputs x → i.run x = req.expected x
  | .explanation => ∀ x, req.inputs x → i.explanation x = i.run x
  | .applicability => ∀ x, req.inputs x → i.domain x
  | .simplicity => i.cost ≤ req.budget
  | .procedure => ∀ x, req.inputs x → (i.trace x).getLast? = some (i.run x)

/- The extra choice commitment requires both selected relevance and actual reason content; pure status supplies neither. -/
def Relevant (req : Requirements) (i : Implementation) : Reason → Prop
  | .status _ => False
  | .method kind => req.values kind ∧ MethodContent req i kind

def Feasible (req : Requirements) (i : Implementation) : Prop :=
  (∀ x, req.inputs x → i.run x = req.expected x) ∧ i.cost ≤ req.budget

/- In this application, a relevant reason is eligible only after its stated output and budget requirements hold. -/
def JustifiedChoice (req : Requirements) (i : Implementation) (reasons : List Reason) : Prop :=
  Feasible req i ∧ ∃ reason ∈ reasons, Relevant req i reason

/- This proves the structural effect of the adopted choice commitment for each of its three status-only cases. -/
/-- organon-map CoreReader.Choice.statusOnlyFails
organon.grounds.implementations#p1 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
organon.grounds.implementations#p2 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
-/
theorem statusOnlyFails (req : Requirements) (i : Implementation) (k : StatusKind) :
    ¬ JustifiedChoice req i [.status k] := by
  rintro ⟨_, reason, hr, hv⟩
  simp only [List.mem_singleton] at hr
  subst reason
  exact hv

def identityImpl : Implementation where
  name := "Existing identity implementation"
  conventional := true
  established := true
  run n := n
  cost := 1
  domain _ := True
  explanation n := n
  trace n := [n]

def successorImpl : Implementation where
  name := "Successor implementation"
  conventional := false
  established := false
  run n := n + 1
  cost := 2
  domain _ := True
  explanation n := n + 1
  trace n := [n, n + 1]

def changedOutsideZero : Implementation :=
  { identityImpl with
    name := "Changed outside zero"
    conventional := false
    established := false
    run := fun n => if n = 0 then 0 else n + 1
    explanation := fun n => if n = 0 then 0 else n + 1
    trace := fun n => [if n = 0 then 0 else n + 1] }

def identityRequirements : Requirements where
  inputs _ := True
  expected n := n
  budget := 1
  values _ := True

def objectiveReason : List Reason := [.method .output]

theorem identityOutputReason : Relevant identityRequirements identityImpl (.method .output) := by
  exact ⟨trivial, fun _ _ => rfl⟩

theorem identityFeasible : Feasible identityRequirements identityImpl :=
  ⟨fun _ _ => rfl, by decide⟩

theorem identityJustified : JustifiedChoice identityRequirements identityImpl objectiveReason :=
  ⟨identityFeasible, .method .output, by simp [objectiveReason], identityOutputReason⟩

/- A conventional existing implementation can be selected for an actual requirement, not for status alone. -/
/-- organon-map CoreReader.Choice.conventionWithReason
organon.grounds.implementations#p1 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
organon.grounds.implementations#p2 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
-/
theorem conventionWithReason :
    identityImpl.conventional = true ∧ identityImpl.established = true ∧
    JustifiedChoice identityRequirements identityImpl [.status .convention, .method .output] := by
  exact ⟨rfl, rfl, identityFeasible, .method .output, by simp, identityOutputReason⟩

inductive Candidate | identity | successor
  deriving DecidableEq, Repr

def implementation : Candidate → Implementation
  | .identity => identityImpl
  | .successor => successorImpl

/- Feasibility is decided by the same stated behavior and resource requirement for either candidate. -/
/-- organon-map CoreReader.Choice.singleFeasible
organon.grounds.implementations.limits#p1 sha256 db9b5f1803baab0e1b05a3a9e068948667412afa7d692e1da3869ca54be4b870
-/
theorem singleFeasible :
    (∀ candidate, Feasible identityRequirements (implementation candidate) ↔ candidate = .identity) ∧
    JustifiedChoice identityRequirements identityImpl objectiveReason := by
  constructor
  · intro candidate
    cases candidate
    · simp [Feasible, identityRequirements, implementation, identityImpl]
    · simp [Feasible, identityRequirements, implementation, successorImpl]
  · exact identityJustified

/- The same observed input can conceal a relevant difference at another input. -/
/-- organon-map CoreReader.Choice.localNotGlobal
organon.grounds.implementations.limits#p1 sha256 db9b5f1803baab0e1b05a3a9e068948667412afa7d692e1da3869ca54be4b870
-/
theorem localNotGlobal :
    (∀ x, x = 0 → identityImpl.run x = changedOutsideZero.run x) ∧
    identityImpl.run 1 ≠ changedOutsideZero.run 1 := by
  constructor
  · intro x hx; subst x; rfl
  · decide

/- This candidate is cheap enough but misses the required identity output. -/
def cheapSuccessor : Implementation := { successorImpl with cost := 1 }

theorem eligibleInternalReasonNotSufficient :
    Relevant identityRequirements cheapSuccessor (.method .simplicity) ∧
    ¬ JustifiedChoice identityRequirements cheapSuccessor [.method .simplicity] := by
  refine ⟨⟨trivial, by change 1 ≤ 1; decide⟩, ?_⟩
  intro h
  have bad := h.1.1 0 trivial
  cases bad

/- Each of the four internal-method reasons is eligible because of its actual selected requirement and content. -/
/-- organon-map CoreReader.Choice.internalReasons
organon.grounds.implementations.limits#p1 sha256 db9b5f1803baab0e1b05a3a9e068948667412afa7d692e1da3869ca54be4b870
-/
theorem internalReasons :
    Relevant identityRequirements identityImpl (.method .explanation) ∧
    Relevant identityRequirements identityImpl (.method .applicability) ∧
    Relevant identityRequirements identityImpl (.method .simplicity) ∧
    Relevant identityRequirements identityImpl (.method .procedure) ∧
    (Relevant identityRequirements cheapSuccessor (.method .simplicity) ∧
      ¬ JustifiedChoice identityRequirements cheapSuccessor [.method .simplicity]) := by
  exact ⟨⟨trivial, fun _ _ => rfl⟩, ⟨trivial, fun _ _ => trivial⟩,
    ⟨trivial, by change 1 ≤ 1; decide⟩, ⟨trivial, fun _ _ => rfl⟩, eligibleInternalReasonNotSufficient⟩

/- Openness about reasons does not make two actual behaviors identical or reject the existing implementation. -/
/-- organon-map CoreReader.Choice.openNotEquivalent
organon.grounds.implementations.limits#p1 sha256 db9b5f1803baab0e1b05a3a9e068948667412afa7d692e1da3869ca54be4b870
-/
theorem openNotEquivalent :
    JustifiedChoice identityRequirements identityImpl objectiveReason ∧
    identityImpl.run 0 ≠ successorImpl.run 0 := by
  exact ⟨identityJustified, by decide⟩

/- A priority interpretation chooses one of the same two actual implementations. -/
def priorityClaim : Claim Candidate := fun selected => selected = .identity

def statusFacts : Theory Candidate := union
  (singleton (fun _ => identityImpl.conventional = true))
  (singleton (fun _ => identityImpl.established = true))

/- Both interpretations have exactly the same true conventional and established status facts. -/
theorem statusFactsModel (selected : Candidate) : Models statusFacts selected := by
  exact (modelsUnion _ _ _).2 ⟨(modelsSingleton _ _).2 rfl, (modelsSingleton _ _).2 rfl⟩

def priorityArticulation : Articulation Candidate :=
  ⟨["priority", "conventional use", "established status"], statusFacts,
    [fun _ => identityImpl.conventional = true, fun _ => identityImpl.established = true],
    fun _ => True⟩

/- This procedure reports whether the actual status premises entail that very priority claim over its stated two-candidate scope. -/
def AssessmentAccurate (report : Bool) : Prop :=
  report = true ↔ Entails statusFacts priorityClaim

theorem statusDoesNotEntailPriority : ¬ Entails statusFacts priorityClaim := by
  intro h
  have bad := h .successor (statusFactsModel .successor)
  cases bad

theorem statusAssessmentNonEntailment :
    Articulated priorityArticulation ∧ AssessmentAccurate false ∧
    (∀ selected, Models statusFacts selected) ∧
    priorityClaim .identity ∧ ¬ priorityClaim .successor ∧
    ¬ Entails statusFacts priorityClaim ∧
    ¬ JustifiedChoice identityRequirements identityImpl [.status .standing] := by
  refine ⟨⟨by simp [priorityArticulation], by simp [priorityArticulation]⟩,
    ⟨(by intro h; cases h), (fun h => False.elim (statusDoesNotEntailPriority h))⟩,
    statusFactsModel, rfl, (by intro h; cases h), statusDoesNotEntailPriority,
    statusOnlyFails _ _ _⟩

/- An assessment identifies the exact premises and priority question whose entailment it reports. -/
structure PriorityAssessment where
  premises : Theory Candidate
  question : Claim Candidate
  report : Bool
/- Accuracy concerns the actual reported entailment question, independently of a later choice policy. -/
def PriorityAssessment.accurate (assessment : PriorityAssessment) : Prop :=
  assessment.report = true ↔ Entails assessment.premises assessment.question
/- Both policies receive this same correctly negative status-only priority audit. -/
def statusPriorityAudit : PriorityAssessment := ⟨statusFacts, priorityClaim, false⟩
/- Priority reasons are a policy component independent of the assessment's report and objects. -/
structure ChoicePolicy where
  selected : Candidate
  priorityReasons : List Reason
  assessment : PriorityAssessment
/- This is completion of the specified assessment procedure only, not full compliance with philosophical Grounds. -/
def GeneralAssessmentFulfilled (policy : ChoicePolicy) : Prop :=
  Articulated priorityArticulation ∧ policy.assessment = statusPriorityAudit ∧ policy.assessment.accurate
/- The additional choice norm separately tests the reasons actually used to prioritize the selected implementation. -/
def AdditionalChoiceNorm (policy : ChoicePolicy) : Prop :=
  JustifiedChoice identityRequirements (implementation policy.selected) policy.priorityReasons
/- This policy retains status alone as its priority reason despite receiving the correctly negative status audit. -/
def statusPriorityPolicy : ChoicePolicy := ⟨.identity, [.status .standing], statusPriorityAudit⟩
/- This policy selects the same implementation using its actual relevant output reason after the same audit. -/
def outputPriorityPolicy : ChoicePolicy := ⟨.identity, objectiveReason, statusPriorityAudit⟩
/- The shared negative result is mathematically accurate for its actual status premises and question. -/
theorem statusPriorityAuditAccurate : statusPriorityAudit.accurate := by
  constructor
  · intro h; cases h
  · intro h; exact False.elim (statusDoesNotEntailPriority h)
/- These independently variable policies share facts, selected implementation and completed audit, but differ on the extra choice norm. -/
def PolicyIndependenceExample : Prop :=
  statusPriorityPolicy.selected = outputPriorityPolicy.selected ∧
  statusPriorityPolicy.assessment = outputPriorityPolicy.assessment ∧
  statusPriorityPolicy.assessment.premises = statusFacts ∧
  statusPriorityPolicy.assessment.question = priorityClaim ∧
  statusPriorityPolicy.assessment.report = false ∧
  (∀ selected, Models statusPriorityPolicy.assessment.premises selected) ∧
  statusPriorityPolicy.priorityReasons ≠ outputPriorityPolicy.priorityReasons ∧
  GeneralAssessmentFulfilled statusPriorityPolicy ∧ GeneralAssessmentFulfilled outputPriorityPolicy ∧
  ¬ AdditionalChoiceNorm statusPriorityPolicy ∧ AdditionalChoiceNorm outputPriorityPolicy
/- Changing the actual priority reasons changes choice compliance while the accurate audit remains identical. -/
theorem policyIndependenceExample : PolicyIndependenceExample := by
  have articulated : Articulated priorityArticulation :=
    ⟨by simp [priorityArticulation], by simp [priorityArticulation]⟩
  refine ⟨rfl,rfl,rfl,rfl,rfl,statusFactsModel,?_,
    ⟨articulated,rfl,statusPriorityAuditAccurate⟩,
    ⟨articulated,rfl,statusPriorityAuditAccurate⟩,?_,?_⟩
  · decide
  · exact statusOnlyFails identityRequirements identityImpl .standing
  · exact identityJustified

/- A correctly articulated, completed negative assessment does not enforce the additional selection rule.
This is only independence from represented assessment procedures: keeping this unsupported priority would fail general support proportionality too. -/
/-- organon-map CoreReader.Choice.generalGroundsNotChoice
organon.grounds.implementations#p1 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
organon.grounds.implementations#p2 sha256 bb2a822a304d4a20f513218f356ddbeeca8ee139e3ed802213591e9ff6c5095c
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem generalGroundsNotChoice :
    (Articulated priorityArticulation ∧ AssessmentAccurate false ∧
      (∀ selected, Models statusFacts selected) ∧
      priorityClaim .identity ∧ ¬ priorityClaim .successor ∧
      ¬ Entails statusFacts priorityClaim ∧
      ¬ JustifiedChoice identityRequirements identityImpl [.status .standing]) ∧
    PolicyIndependenceExample :=
  ⟨statusAssessmentNonEntailment, policyIndependenceExample⟩

end CoreReader.Choice
```
<!-- /lean-code leanified/CoreReader/Choice.lean -->

<a id="line-code-leanified-corereader-choice-lean-1"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:1 --> **L1** Import CoreReader.Evidence, making its checked declarations available to this module; this line states no new philosophical result.

<a id="line-code-leanified-corereader-choice-lean-3"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:3 --> **L3** Open namespace CoreReader.Choice so subsequent declarations receive this module-qualified name.

<a id="line-code-leanified-corereader-choice-lean-4"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:4 --> **L4** Make names from CoreReader.Logic CoreReader.Evidence available without qualification; this changes name resolution, not assumptions.

<a id="line-code-leanified-corereader-choice-lean-6"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:6 --> **L6** Declare the alternatives StatusKind. Defines three status tags; no ranking or evidential meaning is attached by the datatype alone.

<a id="line-code-leanified-corereader-choice-lean-7"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:7 --> **L7** Derive decidable equality and printable representations for these finite constructors; these are computational conveniences, not choice criteria.

<a id="line-code-leanified-corereader-choice-lean-9"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:9 --> **L9** Declare the alternatives MethodReason. Defines five method-reason tags whose actual content is supplied by MethodContent.

<a id="line-code-leanified-corereader-choice-lean-10"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:10 --> **L10** Derive decidable equality and printable representations for these finite constructors; these are computational conveniences, not choice criteria.

<a id="line-code-leanified-corereader-choice-lean-12"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:12 --> **L12** Declare the alternatives Reason. Separates tagged status reasons from tagged method reasons.

<a id="line-code-leanified-corereader-choice-lean-13"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:13 --> **L13** Derive decidable equality and printable representations for these finite constructors; these are computational conveniences, not choice criteria.

<a id="line-code-leanified-corereader-choice-lean-15"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:15 --> **L15** Document the intended scope of Implementation. The corresponding declaration concerns: Packages an implementation's metadata, behavior, cost, domain, explanation function and trace function as independently supplied fields. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-16"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:16 --> **L16** Declare the data interface Implementation. Packages an implementation's metadata, behavior, cost, domain, explanation function and trace function as independently supplied fields.

<a id="line-code-leanified-corereader-choice-lean-17"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:17 --> **L17** Store the implementation’s descriptive name; it does not confer priority.

<a id="line-code-leanified-corereader-choice-lean-18"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:18 --> **L18** Record whether the implementation is conventional as a Boolean status fact.

<a id="line-code-leanified-corereader-choice-lean-19"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:19 --> **L19** Record whether the implementation is established, independently of its actual behavior.

<a id="line-code-leanified-corereader-choice-lean-20"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:20 --> **L20** Store the actual natural-number input/output function.

<a id="line-code-leanified-corereader-choice-lean-21"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:21 --> **L21** Store the cost checked against an application’s budget.

<a id="line-code-leanified-corereader-choice-lean-22"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:22 --> **L22** Store the implementation’s claimed domain as a predicate on inputs.

<a id="line-code-leanified-corereader-choice-lean-23"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:23 --> **L23** Store explanatory output content to be compared with actual run results.

<a id="line-code-leanified-corereader-choice-lean-24"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:24 --> **L24** Store an input-indexed execution trace whose last element can be compared with actual output.

<a id="line-code-leanified-corereader-choice-lean-26"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:26 --> **L26** Document the intended scope of Requirements. The corresponding declaration concerns: Packages the input scope, expected output, fixed budget and valued reason kinds. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-27"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:27 --> **L27** Declare the data interface Requirements. Packages the input scope, expected output, fixed budget and valued reason kinds.

<a id="line-code-leanified-corereader-choice-lean-28"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:28 --> **L28** Specify which inputs the application actually requires.

<a id="line-code-leanified-corereader-choice-lean-29"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:29 --> **L29** Specify the expected output at each input.

<a id="line-code-leanified-corereader-choice-lean-30"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:30 --> **L30** Specify the application’s budget constraint.

<a id="line-code-leanified-corereader-choice-lean-31"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:31 --> **L31** Specify which method-reason categories this application values; this choice is an adopted input.

<a id="line-code-leanified-corereader-choice-lean-33"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:33 --> **L33** Document the intended scope of MethodContent. The corresponding declaration concerns: Assigns a proposition to each method tag, using these particular behavioral and cost proxies. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-34"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:34 --> **L34** Define MethodContent. Assigns a proposition to each method tag, using these particular behavioral and cost proxies.

<a id="line-code-leanified-corereader-choice-lean-35"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:35 --> **L35** An output reason requires this implementation’s actual output to equal the application’s expected output at every required input.

<a id="line-code-leanified-corereader-choice-lean-36"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:36 --> **L36** An explanation reason requires explanatory output to match this very implementation’s actual run at every required input.

<a id="line-code-leanified-corereader-choice-lean-37"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:37 --> **L37** An applicability reason requires every application-required input to belong to this implementation’s domain.

<a id="line-code-leanified-corereader-choice-lean-38"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:38 --> **L38** The simplicity reason is the selected application’s actual cost-within-budget condition.

<a id="line-code-leanified-corereader-choice-lean-39"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:39 --> **L39** A procedure reason requires the actual trace’s last element to equal this implementation’s real output at every required input.

<a id="line-code-leanified-corereader-choice-lean-41"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:41 --> **L41** Document the intended scope of Relevant. The corresponding declaration concerns: A reason is relevant when it is an allowed method kind whose content holds; status kinds are excluded outright. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-42"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:42 --> **L42** Define Relevant. A reason is relevant when it is an allowed method kind whose content holds; status kinds are excluded outright.

<a id="line-code-leanified-corereader-choice-lean-43"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:43 --> **L43** Status reasons are defined as irrelevant under this adopted choice norm, regardless of their status subtype.

<a id="line-code-leanified-corereader-choice-lean-44"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:44 --> **L44** A method reason must both belong to a category valued by these requirements and satisfy that category’s actual MethodContent.

<a id="line-code-leanified-corereader-choice-lean-46"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:46 --> **L46** Define Feasible. Feasibility requires universal requested-input output correctness and fixed cost within budget; it does not include explanation, domain or trace checks.

<a id="line-code-leanified-corereader-choice-lean-47"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:47 --> **L47** Feasibility requires correct actual output at every required input and actual cost within this application’s budget.

<a id="line-code-leanified-corereader-choice-lean-49"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:49 --> **L49** Document the intended scope of JustifiedChoice. The corresponding declaration concerns: Requires both output/budget feasibility and at least one listed valued method reason with its concrete content satisfied. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-50"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:50 --> **L50** Define JustifiedChoice. Requires both output/budget feasibility and at least one listed valued method reason with its concrete content satisfied.

<a id="line-code-leanified-corereader-choice-lean-51"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:51 --> **L51** Require feasibility and at least one actually listed relevant reason; a relevant reason alone does not establish feasibility.

<a id="line-code-leanified-corereader-choice-lean-53"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:53 --> **L53** Document the intended scope of statusOnlyFails. The corresponding declaration concerns: For any requirements and implementation, a singleton status reason cannot justify choice because its relevance is defined as false. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-54"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:54 --> **L54** Begin provenance metadata for CoreReader.Choice.statusOnlyFails; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-choice-lean-55"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:55 --> **L55** Register source unit organon.grounds.implementations#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-56"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:56 --> **L56** Register source unit organon.grounds.implementations#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-57"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:57 --> **L57** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-choice-lean-58"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:58 --> **L58** State the checked result statusOnlyFails. For any requirements and implementation, a singleton status reason cannot justify choice because its relevance is defined as false.

<a id="line-code-leanified-corereader-choice-lean-59"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:59 --> **L59** Deny justified selection when the only listed reason is status, for the supplied arbitrary requirements and implementation.

<a id="line-code-leanified-corereader-choice-lean-60"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:60 --> **L60** Unpack an alleged status-only justified choice, extracting its listed reason and proof of relevance; feasibility alone cannot supply the missing relevance.

<a id="line-code-leanified-corereader-choice-lean-61"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:61 --> **L61** Simplify singleton membership to show that the extracted reason is exactly the given status reason.

<a id="line-code-leanified-corereader-choice-lean-62"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:62 --> **L62** Substitute the identified status reason into its alleged relevance proof.

<a id="line-code-leanified-corereader-choice-lean-63"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:63 --> **L63** Relevance of a status reason is defined as False, so the extracted hv is already a contradiction.

<a id="line-code-leanified-corereader-choice-lean-65"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:65 --> **L65** Define identityImpl. Builds an identity implementation with both status flags true, cost one, unrestricted domain, matching explanation and singleton output trace.

<a id="line-code-leanified-corereader-choice-lean-66"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:66 --> **L66** Name the concrete existing identity implementation without using its name as a proof of quality.

<a id="line-code-leanified-corereader-choice-lean-67"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:67 --> **L67** Mark the identity implementation’s conventional and established status as true; these facts remain distinct from its actual method reasons.

<a id="line-code-leanified-corereader-choice-lean-68"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:68 --> **L68** Mark the identity implementation’s conventional and established status as true; these facts remain distinct from its actual method reasons.

<a id="line-code-leanified-corereader-choice-lean-69"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:69 --> **L69** Define actual identity output as the unchanged input n.

<a id="line-code-leanified-corereader-choice-lean-70"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:70 --> **L70** Set identity’s actual cost to 1.

<a id="line-code-leanified-corereader-choice-lean-71"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:71 --> **L71** Let identity’s applicability domain contain all natural inputs.

<a id="line-code-leanified-corereader-choice-lean-72"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:72 --> **L72** Provide an explanatory result equal to the input, matching identity’s actual output.

<a id="line-code-leanified-corereader-choice-lean-73"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:73 --> **L73** Use the singleton input as the actual trace, whose last element equals identity’s output.

<a id="line-code-leanified-corereader-choice-lean-75"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:75 --> **L75** Define successorImpl. Builds a successor implementation with false status flags, cost two, unrestricted domain, matching explanation and a two-entry trace.

<a id="line-code-leanified-corereader-choice-lean-76"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:76 --> **L76** Name the alternative successor implementation.

<a id="line-code-leanified-corereader-choice-lean-77"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:77 --> **L77** Mark successor as neither conventional nor established in this example; this status alone does not determine feasibility.

<a id="line-code-leanified-corereader-choice-lean-78"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:78 --> **L78** Mark successor as neither conventional nor established in this example; this status alone does not determine feasibility.

<a id="line-code-leanified-corereader-choice-lean-79"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:79 --> **L79** Define successor’s actual output as n+1.

<a id="line-code-leanified-corereader-choice-lean-80"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:80 --> **L80** Set its original cost to 2, above the identity application’s budget 1.

<a id="line-code-leanified-corereader-choice-lean-81"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:81 --> **L81** Let successor’s applicability domain also include every natural input.

<a id="line-code-leanified-corereader-choice-lean-82"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:82 --> **L82** Provide its explanatory result n+1, faithful to its own actual output.

<a id="line-code-leanified-corereader-choice-lean-83"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:83 --> **L83** Record input and then actual successor output in its trace.

<a id="line-code-leanified-corereader-choice-lean-85"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:85 --> **L85** Define changedOutsideZero. Copies identity metadata/fields except the explicitly replaced ones, producing an implementation equal at zero but different elsewhere.

<a id="line-code-leanified-corereader-choice-lean-86"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:86 --> **L86** Start from identityImpl’s fields and explicitly override the following components.

<a id="line-code-leanified-corereader-choice-lean-87"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:87 --> **L87** Name the modified implementation by its change outside input zero.

<a id="line-code-leanified-corereader-choice-lean-88"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:88 --> **L88** Change this modified implementation’s conventional/established flags to false.

<a id="line-code-leanified-corereader-choice-lean-89"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:89 --> **L89** Change this modified implementation’s conventional/established flags to false.

<a id="line-code-leanified-corereader-choice-lean-90"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:90 --> **L90** Keep output 0 at input 0 but return n+1 at every other input.

<a id="line-code-leanified-corereader-choice-lean-91"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:91 --> **L91** Make its explanation follow the same actual piecewise output function.

<a id="line-code-leanified-corereader-choice-lean-92"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:92 --> **L92** Use that same piecewise result as its singleton trace; finish the implementation override.

<a id="line-code-leanified-corereader-choice-lean-94"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:94 --> **L94** Define identityRequirements. Requires identity behavior at all natural inputs, budget one, and values every method-reason kind.

<a id="line-code-leanified-corereader-choice-lean-95"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:95 --> **L95** Require every natural-number input in the identity application.

<a id="line-code-leanified-corereader-choice-lean-96"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:96 --> **L96** Set the desired output to the unchanged input.

<a id="line-code-leanified-corereader-choice-lean-97"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:97 --> **L97** Adopt budget 1 for the application.

<a id="line-code-leanified-corereader-choice-lean-98"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:98 --> **L98** Admit all represented method-reason categories; their actual content must still be checked.

<a id="line-code-leanified-corereader-choice-lean-100"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:100 --> **L100** Define objectiveReason. Defines a reason list containing only the output-correctness method tag.

<a id="line-code-leanified-corereader-choice-lean-102"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:102 --> **L102** State the checked result identityOutputReason. Proves the identity implementation has a relevant output reason under universal identity requirements by definitional output equality. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-choice-lean-103"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:103 --> **L103** The output reason is admitted by these requirements, and identityImpl’s actual output equals the expected output at every allowed input by reflexivity.

<a id="line-code-leanified-corereader-choice-lean-105"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:105 --> **L105** State the checked result identityFeasible. Proves universal identity output and cost one within budget one. The supplied proof term uses the displayed constructed witnesses or earlier lemmas, rather than adding an axiom.

<a id="line-code-leanified-corereader-choice-lean-106"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:106 --> **L106** For identity, every required output is correct by reflexivity; compute cost 1 within budget 1.

<a id="line-code-leanified-corereader-choice-lean-108"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:108 --> **L108** State the checked result identityJustified. Uses the output reason as the existential witness justifying identity under the given requirements. The supplied proof term uses the displayed constructed witnesses or earlier lemmas, rather than adding an axiom.

<a id="line-code-leanified-corereader-choice-lean-109"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:109 --> **L109** Combine identity’s feasibility with the actual output reason, prove it belongs to objectiveReason and supply its content-based relevance.

<a id="line-code-leanified-corereader-choice-lean-111"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:111 --> **L111** Document the intended scope of conventionWithReason. The corresponding declaration concerns: Shows conventional and established metadata can coexist with justified choice when the list also contains a valid output reason; status does not provide the witness. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-112"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:112 --> **L112** Begin provenance metadata for CoreReader.Choice.conventionWithReason; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-choice-lean-113"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:113 --> **L113** Register source unit organon.grounds.implementations#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-114"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:114 --> **L114** Register source unit organon.grounds.implementations#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-115"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:115 --> **L115** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-choice-lean-116"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:116 --> **L116** State the checked result conventionWithReason. Shows conventional and established metadata can coexist with justified choice when the list also contains a valid output reason; status does not provide the witness.

<a id="line-code-leanified-corereader-choice-lean-117"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:117 --> **L117** Keep both actual status facts true for identity.

<a id="line-code-leanified-corereader-choice-lean-118"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:118 --> **L118** Claim justified selection using a list containing convention and an actual output reason; the output reason supplies relevance.

<a id="line-code-leanified-corereader-choice-lean-119"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:119 --> **L119** Compute the conventional/established status facts, retain actual feasibility, and select the listed output reason with its separately proved relevance.

<a id="line-code-leanified-corereader-choice-lean-121"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:121 --> **L121** Declare the alternatives Candidate. Closes the candidate universe to exactly identity and successor.

<a id="line-code-leanified-corereader-choice-lean-122"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:122 --> **L122** Derive decidable equality and printable representations for these finite constructors; these are computational conveniences, not choice criteria.

<a id="line-code-leanified-corereader-choice-lean-124"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:124 --> **L124** Define implementation. Maps each of the two candidate constructors to its concrete implementation.

<a id="line-code-leanified-corereader-choice-lean-125"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:125 --> **L125** Interpret the identity candidate as the actual identityImpl object.

<a id="line-code-leanified-corereader-choice-lean-126"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:126 --> **L126** Interpret the successor candidate as the actual successorImpl object.

<a id="line-code-leanified-corereader-choice-lean-128"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:128 --> **L128** Document the intended scope of singleFeasible. The corresponding declaration concerns: Proves identity is the sole feasible member of the two-constructor candidate type under identity requirements, and separately supplies its output justification. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-129"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:129 --> **L129** Begin provenance metadata for CoreReader.Choice.singleFeasible; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-choice-lean-130"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:130 --> **L130** Register source unit organon.grounds.implementations.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-131"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:131 --> **L131** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-choice-lean-132"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:132 --> **L132** State the checked result singleFeasible. Proves identity is the sole feasible member of the two-constructor candidate type under identity requirements, and separately supplies its output justification.

<a id="line-code-leanified-corereader-choice-lean-133"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:133 --> **L133** Over the explicitly two-valued candidate type, require feasibility exactly for identity.

<a id="line-code-leanified-corereader-choice-lean-134"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:134 --> **L134** Also retain identity’s actual output-reason justification.

<a id="line-code-leanified-corereader-choice-lean-135"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:135 --> **L135** Separate the exact feasible-candidate characterization from the existing proof of identity’s justified selection.

<a id="line-code-leanified-corereader-choice-lean-136"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:136 --> **L136** Fix any candidate in the explicit identity/successor type before checking its feasibility equivalence.

<a id="line-code-leanified-corereader-choice-lean-137"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:137 --> **L137** Exhaust the actual two-candidate type: identity or successor; no unlisted implementation is considered.

<a id="line-code-leanified-corereader-choice-lean-138"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:138 --> **L138** For identity, unfold actual outputs and cost; the identity-output and budget conditions are satisfied.

<a id="line-code-leanified-corereader-choice-lean-139"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:139 --> **L139** For successor, unfold the same requirements; the candidate cannot meet identity outputs and its original cost also exceeds the budget.

<a id="line-code-leanified-corereader-choice-lean-140"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:140 --> **L140** Reuse identityJustified to finish the concrete selected-candidate obligation.

<a id="line-code-leanified-corereader-choice-lean-142"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:142 --> **L142** Document the intended scope of localNotGlobal. The corresponding declaration concerns: Shows identity and the piecewise implementation agree when input is zero but disagree at input one; this refutes inference from local agreement to global equality. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-143"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:143 --> **L143** Begin provenance metadata for CoreReader.Choice.localNotGlobal; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-choice-lean-144"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:144 --> **L144** Register source unit organon.grounds.implementations.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-145"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:145 --> **L145** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-choice-lean-146"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:146 --> **L146** State the checked result localNotGlobal. Shows identity and the piecewise implementation agree when input is zero but disagree at input one; this refutes inference from local agreement to global equality.

<a id="line-code-leanified-corereader-choice-lean-147"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:147 --> **L147** Compare actual outputs only under the input-0 scope.

<a id="line-code-leanified-corereader-choice-lean-148"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:148 --> **L148** Separately require a real output difference at input 1.

<a id="line-code-leanified-corereader-choice-lean-149"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:149 --> **L149** Separate equality under the input-0 scope from actual inequality at input 1.

<a id="line-code-leanified-corereader-choice-lean-150"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:150 --> **L150** Substitute the local-scope assumption x=0; the two implementations then have definitionally equal outputs.

<a id="line-code-leanified-corereader-choice-lean-151"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:151 --> **L151** Compute their actual outputs at input 1 to verify the claimed inequality.

<a id="line-code-leanified-corereader-choice-lean-153"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:153 --> **L153** Document the intended scope of cheapSuccessor. The corresponding declaration concerns: Lowers successor's fixed cost to one without fixing its identity-output failure. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-154"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:154 --> **L154** Define cheapSuccessor. Lowers successor's fixed cost to one without fixing its identity-output failure.

<a id="line-code-leanified-corereader-choice-lean-156"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:156 --> **L156** State the checked result eligibleInternalReasonNotSufficient. Shows cost simplicity is relevant for cheap successor, yet output infeasibility prevents justified choice.

<a id="line-code-leanified-corereader-choice-lean-157"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:157 --> **L157** Require that cheapSuccessor’s cost reason is actually relevant under the chosen requirements.

<a id="line-code-leanified-corereader-choice-lean-158"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:158 --> **L158** Nevertheless reject its justified choice with that reason alone because feasibility includes correct outputs.

<a id="line-code-leanified-corereader-choice-lean-159"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:159 --> **L159** Show the cheap successor has an admitted cost reason with cost 1 ≤ budget 1, then separately refute justified choice.

<a id="line-code-leanified-corereader-choice-lean-160"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:160 --> **L160** Assume cheapSuccessor is justified using its cost reason, in order to extract and refute its required output feasibility.

<a id="line-code-leanified-corereader-choice-lean-161"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:161 --> **L161** An alleged justified choice includes feasible outputs; apply that requirement at input 0, where successor returns 1 instead of expected 0.

<a id="line-code-leanified-corereader-choice-lean-162"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:162 --> **L162** Eliminate the resulting impossible output equality; a relevant cost reason did not repair the wrong output.

<a id="line-code-leanified-corereader-choice-lean-164"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:164 --> **L164** Document the intended scope of internalReasons. The corresponding declaration concerns: Provides four valid internal reasons for identity and a cost-relevant successor counterexample to automatic sufficiency. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-165"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:165 --> **L165** Begin provenance metadata for CoreReader.Choice.internalReasons; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-choice-lean-166"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:166 --> **L166** Register source unit organon.grounds.implementations.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-167"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:167 --> **L167** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-choice-lean-168"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:168 --> **L168** State the checked result internalReasons. Provides four valid internal reasons for identity and a cost-relevant successor counterexample to automatic sufficiency.

<a id="line-code-leanified-corereader-choice-lean-169"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:169 --> **L169** Require a faithful explanation reason for the same actual identity implementation.

<a id="line-code-leanified-corereader-choice-lean-170"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:170 --> **L170** Require its actual applicability to cover the required inputs.

<a id="line-code-leanified-corereader-choice-lean-171"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:171 --> **L171** Require its actual cost to meet the valued simplicity/budget condition.

<a id="line-code-leanified-corereader-choice-lean-172"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:172 --> **L172** Require its actual trace content to meet the valued procedure condition.

<a id="line-code-leanified-corereader-choice-lean-173"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:173 --> **L173** Include a separate cheap-successor case where its cost reason is eligible.

<a id="line-code-leanified-corereader-choice-lean-174"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:174 --> **L174** That cheap candidate still fails justified selection; the combined theorem begins its proof here.

<a id="line-code-leanified-corereader-choice-lean-175"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:175 --> **L175** Provide admitted, actually faithful explanation and applicability reasons for identity, checking their content at every required input.

<a id="line-code-leanified-corereader-choice-lean-176"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:176 --> **L176** Provide the actual budget and trace reasons, then include the cheap-but-wrong example showing relevance alone is insufficient.

<a id="line-code-leanified-corereader-choice-lean-178"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:178 --> **L178** Document the intended scope of openNotEquivalent. The corresponding declaration concerns: Combines identity's justification with differing identity/successor outputs at zero. It proves behavioral distinction between these examples, not a general openness property. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-179"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:179 --> **L179** Begin provenance metadata for CoreReader.Choice.openNotEquivalent; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-choice-lean-180"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:180 --> **L180** Register source unit organon.grounds.implementations.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-181"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:181 --> **L181** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-choice-lean-182"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:182 --> **L182** State the checked result openNotEquivalent. Combines identity's justification with differing identity/successor outputs at zero. It proves behavioral distinction between these examples, not a general openness property.

<a id="line-code-leanified-corereader-choice-lean-183"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:183 --> **L183** Retain justified selection of the existing identity implementation based on its actual output reason.

<a id="line-code-leanified-corereader-choice-lean-184"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:184 --> **L184** Also require that identity and successor actually produce different outputs at input 0.

<a id="line-code-leanified-corereader-choice-lean-185"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:185 --> **L185** Retain the existing identity justification and compute the distinct actual outputs of identity and successor at 0.

<a id="line-code-leanified-corereader-choice-lean-187"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:187 --> **L187** Document the intended scope of priorityClaim. The corresponding declaration concerns: Defines the priority claim as selection of the identity constructor. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-188"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:188 --> **L188** Define priorityClaim. Defines the priority claim as selection of the identity constructor.

<a id="line-code-leanified-corereader-choice-lean-190"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:190 --> **L190** Define statusFacts. Forms a theory containing two status facts about identity that are constant across candidate worlds.

<a id="line-code-leanified-corereader-choice-lean-191"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:191 --> **L191** The first status premise records actual conventional status of identity, regardless of the candidate interpretation.

<a id="line-code-leanified-corereader-choice-lean-192"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:192 --> **L192** The second status premise records actual established status of that same implementation.

<a id="line-code-leanified-corereader-choice-lean-194"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:194 --> **L194** Document the intended scope of statusFactsModel. The corresponding declaration concerns: Proves every candidate world models these status facts because both concern fixed metadata, independent of selection. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-195"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:195 --> **L195** State the checked result statusFactsModel. Proves every candidate world models these status facts because both concern fixed metadata, independent of selection. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-choice-lean-196"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:196 --> **L196** Both status predicates concern the same actual identity implementation and are true independently of which candidate interpretation is selected; combine their singleton models.

<a id="line-code-leanified-corereader-choice-lean-198"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:198 --> **L198** Define priorityArticulation. Constructs a nonempty articulation of the constant status theory, with the same two status predicates as reasons and unrestricted limits.

<a id="line-code-leanified-corereader-choice-lean-199"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:199 --> **L199** Articulate priority and actual status concepts using statusFacts as the premise theory.

<a id="line-code-leanified-corereader-choice-lean-200"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:200 --> **L200** List the same actual conventional and established facts as articulated reasons.

<a id="line-code-leanified-corereader-choice-lean-201"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:201 --> **L201** Use unrestricted candidate scope for this status-priority articulation.

<a id="line-code-leanified-corereader-choice-lean-203"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:203 --> **L203** Document the intended scope of AssessmentAccurate. The corresponding declaration concerns: Defines report accuracy as equivalence between report=true and semantic entailment of the priority claim by status facts. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-204"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:204 --> **L204** Define AssessmentAccurate. Defines report accuracy as equivalence between report=true and semantic entailment of the priority claim by status facts.

<a id="line-code-leanified-corereader-choice-lean-205"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:205 --> **L205** Define report accuracy by equivalence between report=true and semantic entailment of this exact priority question from these status facts.

<a id="line-code-leanified-corereader-choice-lean-207"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:207 --> **L207** State the checked result statusDoesNotEntailPriority. Refutes priority entailment using successor, which models all fixed identity-status facts but is not identity. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-choice-lean-208"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:208 --> **L208** Assume the actual status facts entail identity priority across all candidate interpretations.

<a id="line-code-leanified-corereader-choice-lean-209"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:209 --> **L209** Apply alleged status-to-priority entailment to successor, which satisfies all the same true status facts but is not identity.

<a id="line-code-leanified-corereader-choice-lean-210"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:210 --> **L210** Distinct candidate constructors refute the priority equality derived at successor.

<a id="line-code-leanified-corereader-choice-lean-212"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:212 --> **L212** State the checked result statusAssessmentNonEntailment. Retains the original factual countermodel: status facts are articulated and accurately assessed but do not entail identity priority.

<a id="line-code-leanified-corereader-choice-lean-213"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:213 --> **L213** Require procedural articulation and a correctly negative report for the same status-priority assessment.

<a id="line-code-leanified-corereader-choice-lean-214"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:214 --> **L214** Keep all candidate interpretations as models of the same actual status facts.

<a id="line-code-leanified-corereader-choice-lean-215"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:215 --> **L215** The priority predicate holds at identity and fails at successor.

<a id="line-code-leanified-corereader-choice-lean-216"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:216 --> **L216** Deny entailment of that priority predicate from status facts alone.

<a id="line-code-leanified-corereader-choice-lean-217"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:217 --> **L217** Also reject selecting identity with standing as the only actual reason.

<a id="line-code-leanified-corereader-choice-lean-218"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:218 --> **L218** Check that priorityArticulation has nonempty concepts and actual status reasons.

<a id="line-code-leanified-corereader-choice-lean-219"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:219 --> **L219** Prove report=false is accurate: it cannot equal true, and any entailment assumption contradicts the actual successor countermodel.

<a id="line-code-leanified-corereader-choice-lean-220"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:220 --> **L220** Retain models of the same facts for both candidates, priority at identity but not successor, and the established failed entailment.

<a id="line-code-leanified-corereader-choice-lean-221"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:221 --> **L221** Reuse the general status-only failure theorem for the explicit identity choice with standing as its sole reason.

<a id="line-code-leanified-corereader-choice-lean-223"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:223 --> **L223** Document the intended scope of PriorityAssessment. The corresponding declaration concerns: Stores the actual premise theory, question and Boolean assessment report independently of a choice policy. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-224"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:224 --> **L224** Declare the data interface PriorityAssessment. Stores the actual premise theory, question and Boolean assessment report independently of a choice policy.

<a id="line-code-leanified-corereader-choice-lean-225"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:225 --> **L225** Store the actual premise theory audited by this assessment.

<a id="line-code-leanified-corereader-choice-lean-226"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:226 --> **L226** Store the exact priority claim whose entailment is assessed.

<a id="line-code-leanified-corereader-choice-lean-227"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:227 --> **L227** Store the reported Boolean answer separately from facts and question.

<a id="line-code-leanified-corereader-choice-lean-228"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:228 --> **L228** Document the intended scope of PriorityAssessment.accurate. The corresponding declaration concerns: Matches the report to semantic entailment for this exact premise/question pair. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-229"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:229 --> **L229** Define PriorityAssessment.accurate. Matches the report to semantic entailment for this exact premise/question pair.

<a id="line-code-leanified-corereader-choice-lean-230"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:230 --> **L230** Require this assessment’s actual report to agree exactly with entailment from its own premises to its own question.

<a id="line-code-leanified-corereader-choice-lean-231"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:231 --> **L231** Document the intended scope of statusPriorityAudit. The corresponding declaration concerns: Records a false entailment report for the actual fixed status facts and priority question. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-232"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:232 --> **L232** Define statusPriorityAudit. Records a false entailment report for the actual fixed status facts and priority question.

<a id="line-code-leanified-corereader-choice-lean-233"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:233 --> **L233** Document the intended scope of ChoicePolicy. The corresponding declaration concerns: Separates chosen candidate, priority reasons and the independently stored assessment. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-234"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:234 --> **L234** Declare the data interface ChoicePolicy. Separates chosen candidate, priority reasons and the independently stored assessment.

<a id="line-code-leanified-corereader-choice-lean-235"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:235 --> **L235** Store the candidate this policy actually selects.

<a id="line-code-leanified-corereader-choice-lean-236"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:236 --> **L236** Store the policy’s actual priority reasons independently of its assessment record.

<a id="line-code-leanified-corereader-choice-lean-237"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:237 --> **L237** Store the actual assessment whose procedure the policy completed.

<a id="line-code-leanified-corereader-choice-lean-238"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:238 --> **L238** Document the intended scope of GeneralAssessmentFulfilled. The corresponding declaration concerns: Requires nonempty actual articulation and the exact accurate status audit, without imposing the additional choice criterion. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-239"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:239 --> **L239** Define GeneralAssessmentFulfilled. Requires nonempty actual articulation and the exact accurate status audit, without imposing the additional choice criterion.

<a id="line-code-leanified-corereader-choice-lean-240"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:240 --> **L240** Require nonempty articulation, exactly the shared statusPriorityAudit, and its accuracy; this is specified procedure fulfillment, not full philosophical Grounds.

<a id="line-code-leanified-corereader-choice-lean-241"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:241 --> **L241** Document the intended scope of AdditionalChoiceNorm. The corresponding declaration concerns: Applies the separate feasibility-and-relevance choice norm to this policy's selected implementation and reasons. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-242"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:242 --> **L242** Define AdditionalChoiceNorm. Applies the separate feasibility-and-relevance choice norm to this policy's selected implementation and reasons.

<a id="line-code-leanified-corereader-choice-lean-243"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:243 --> **L243** Separately apply JustifiedChoice to the policy’s actual selected implementation and its actual reason list.

<a id="line-code-leanified-corereader-choice-lean-244"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:244 --> **L244** Document the intended scope of statusPriorityPolicy. The corresponding declaration concerns: Selects identity solely on standing while retaining the accurate non-entailment audit. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-245"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:245 --> **L245** Define statusPriorityPolicy. Selects identity solely on standing while retaining the accurate non-entailment audit.

<a id="line-code-leanified-corereader-choice-lean-246"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:246 --> **L246** Document the intended scope of outputPriorityPolicy. The corresponding declaration concerns: Keeps the same choice and audit but uses the actual output reason. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-247"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:247 --> **L247** Define outputPriorityPolicy. Keeps the same choice and audit but uses the actual output reason.

<a id="line-code-leanified-corereader-choice-lean-248"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:248 --> **L248** Document the intended scope of statusPriorityAuditAccurate. The corresponding declaration concerns: Uses the successor countermodel to establish the recorded false entailment report is accurate. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-249"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:249 --> **L249** State the checked result statusPriorityAuditAccurate. Uses the successor countermodel to establish the recorded false entailment report is accurate. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-choice-lean-250"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:250 --> **L250** Split accuracy of the negative audit into the two directions of its equivalence with entailment.

<a id="line-code-leanified-corereader-choice-lean-251"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:251 --> **L251** The audit’s actual false report cannot equal true, so this direction has an impossible premise.

<a id="line-code-leanified-corereader-choice-lean-252"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:252 --> **L252** Any asserted entailment contradicts statusDoesNotEntailPriority; this establishes the reverse accuracy direction for the false report.

<a id="line-code-leanified-corereader-choice-lean-253"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:253 --> **L253** Document the intended scope of PolicyIndependenceExample. The corresponding declaration concerns: Requires two policies with the same actual selection/audit but different reasons, both satisfying represented assessment duties and only the output policy satisfying the extra norm. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-254"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:254 --> **L254** Define PolicyIndependenceExample. Requires two policies with the same actual selection/audit but different reasons, both satisfying represented assessment duties and only the output policy satisfying the extra norm.

<a id="line-code-leanified-corereader-choice-lean-255"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:255 --> **L255** Fix identical selected candidates in both policies.

<a id="line-code-leanified-corereader-choice-lean-256"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:256 --> **L256** Fix the same actual assessment in both policies.

<a id="line-code-leanified-corereader-choice-lean-257"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:257 --> **L257** Bind that assessment’s premises to the actual shared statusFacts.

<a id="line-code-leanified-corereader-choice-lean-258"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:258 --> **L258** Bind its question to the same priorityClaim.

<a id="line-code-leanified-corereader-choice-lean-259"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:259 --> **L259** Fix the common report to false, rather than allowing policy changes to alter the audit answer.

<a id="line-code-leanified-corereader-choice-lean-260"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:260 --> **L260** Retain models of these same assessment premises for every candidate interpretation.

<a id="line-code-leanified-corereader-choice-lean-261"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:261 --> **L261** Require the actual priority reason lists to differ despite the shared candidate and audit.

<a id="line-code-leanified-corereader-choice-lean-262"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:262 --> **L262** Require both policies to complete the same specified assessment procedure accurately.

<a id="line-code-leanified-corereader-choice-lean-263"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:263 --> **L263** Require opposite results under the additional choice norm: status fails, output passes.

<a id="line-code-leanified-corereader-choice-lean-264"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:264 --> **L264** Document the intended scope of policyIndependenceExample. The corresponding declaration concerns: Constructs both independent policy objects and combines actual audit accuracy with status rejection and output justification. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-265"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:265 --> **L265** State the checked result policyIndependenceExample. Constructs both independent policy objects and combines actual audit accuracy with status rejection and output justification. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-choice-lean-266"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:266 --> **L266** Construct one shared nonempty articulation of the actual status-priority question for both policies.

<a id="line-code-leanified-corereader-choice-lean-267"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:267 --> **L267** Construct one shared nonempty articulation of the actual status-priority question for both policies.

<a id="line-code-leanified-corereader-choice-lean-268"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:268 --> **L268** Fix identical selected candidate, audit, premises, question and false report; retain actual fact models and leave the difference in reason lists.

<a id="line-code-leanified-corereader-choice-lean-269"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:269 --> **L269** Show the status-only policy completed that exact articulated audit with its mathematically accurate report.

<a id="line-code-leanified-corereader-choice-lean-270"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:270 --> **L270** Supply the identical fulfilled audit for the output policy, leaving the two separate additional-choice-norm results.

<a id="line-code-leanified-corereader-choice-lean-271"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:271 --> **L271** Compute that status-only and output-based priority reason lists are distinct despite their shared selected candidate and audit.

<a id="line-code-leanified-corereader-choice-lean-272"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:272 --> **L272** Apply statusOnlyFails to the actual status policy’s priority reason, proving failure of AdditionalChoiceNorm.

<a id="line-code-leanified-corereader-choice-lean-273"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:273 --> **L273** Use identityJustified for the output policy’s actual relevant output reason, proving its AdditionalChoiceNorm.

<a id="line-code-leanified-corereader-choice-lean-275"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:275 --> **L275** Document the intended scope of generalGroundsNotChoice. The corresponding declaration concerns: Combines the factual non-entailment case with a separate policy-level countermodel to deriving the added choice norm from represented general assessment duties. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-276"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:276 --> **L276** Document the intended scope of generalGroundsNotChoice. The corresponding declaration concerns: Combines the factual non-entailment case with a separate policy-level countermodel to deriving the added choice norm from represented general assessment duties. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-choice-lean-277"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:277 --> **L277** Begin provenance metadata for CoreReader.Choice.generalGroundsNotChoice; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-choice-lean-278"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:278 --> **L278** Register source unit organon.grounds.implementations#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-279"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:279 --> **L279** Register source unit organon.grounds.implementations#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-280"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:280 --> **L280** Register source unit organon.relationships.roles#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-281"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:281 --> **L281** Register source unit organon.relationships.roles#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-282"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:282 --> **L282** Register source unit organon.relationships.roles#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-choice-lean-283"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:283 --> **L283** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-choice-lean-284"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:284 --> **L284** State the checked result generalGroundsNotChoice. Combines the factual non-entailment case with a separate policy-level countermodel to deriving the added choice norm from represented general assessment duties.

<a id="line-code-leanified-corereader-choice-lean-285"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:285 --> **L285** Retain the original articulated, accurately negative status assessment as part of the registered result.

<a id="line-code-leanified-corereader-choice-lean-286"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:286 --> **L286** Keep the same actual status premises modeled by every candidate.

<a id="line-code-leanified-corereader-choice-lean-287"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:287 --> **L287** Keep priority true for identity and false for successor.

<a id="line-code-leanified-corereader-choice-lean-288"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:288 --> **L288** Keep the demonstrated status-to-priority non-entailment.

<a id="line-code-leanified-corereader-choice-lean-289"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:289 --> **L289** Keep status-only choice failure, then join it to the stronger policy-independence example.

<a id="line-code-leanified-corereader-choice-lean-290"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:290 --> **L290** Include actual policy variation through PolicyIndependenceExample, rather than ending at status non-entailment.

<a id="line-code-leanified-corereader-choice-lean-291"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:291 --> **L291** Pair the preserved status non-entailment proof with policyIndependenceExample, thereby including actual independent priority-reason variation in the registered theorem.

<a id="line-code-leanified-corereader-choice-lean-293"></a>
<!-- lean-line leanified/CoreReader/Choice.lean:293 --> **L293** Close namespace CoreReader.Choice; this adds no proof or premise.

<a id="code-leanified-corereader-evidence-lean"></a>
### `leanified/CoreReader/Evidence.lean`

<!-- lean-code leanified/CoreReader/Evidence.lean -->
```lean
import CoreReader.Logic
import CoreReader.Agency

namespace CoreReader.Evidence
open CoreReader.Logic
open CoreReader.Agency

/- An observation records the outcome of a specified test on the represented world. -/
structure Record (W : Type) where
  test : W → Bool
  observed : Bool
/- Compatible worlds reproduce the actual contents of every recorded observation. -/
def Compatible {W : Type} (records : List (Record W)) (w : W) : Prop :=
  ∀ r, r ∈ records → r.test w = r.observed
/- Inferential support requires the same claim in every evidence-compatible world. -/
def Supports {W : Type} (records : List (Record W)) (claim : Claim W) : Prop :=
  ∀ w, Compatible records w → claim w
/- Articulation identifies concepts, premises, reason contents and an application limit. -/
structure Articulation (W : Type) where
  concepts : List String
  assumptions : Theory W
  reasons : List (Claim W)
  limits : Claim W
/- Nonempty identifiable concepts and reasons are procedural articulation requirements. -/
def Articulated {W : Type} (a : Articulation W) : Prop :=
  a.concepts ≠ [] ∧ a.reasons ≠ []
/- This application model interprets an adopted option through its actual outcomes and stated goals/constraints. -/
structure ValuePosition (W : Type) where
  Position : Type
  Outcome : Type
  adopted : Position
  selected : W → Position
  outcome : W → Position → Outcome
  objective : Outcome → Prop
  constraints : W → Position → Prop
  starting : Theory W
  reasons : List (W → Position → Prop)
  limits : Claim W
  relevantCriticism : Claim W
  response : W → Option String
/- The adopted position's claim is derived from the same selected option used by the outcome interpretation. -/
def ValuePosition.commitment {W : Type} (v : ValuePosition W) : Claim W :=
  fun w => v.selected w = v.adopted
/- Assessed consequences concern this adopted option's actual outcome, objective and constraints. -/
def ValuePosition.consequence {W : Type} (v : ValuePosition W) : Claim W :=
  fun w => v.objective (v.outcome w v.adopted) ∧ v.constraints w v.adopted
/- Articulated reasons specialize the actual option-indexed premises to the adopted option. -/
def ValuePosition.activeReasons {W : Type} (v : ValuePosition W) : List (Claim W) :=
  v.reasons.map (fun reason w => reason w v.adopted)
/- A joint witness excludes inconsistent starts and impossible adoption states. -/
def JointAdoption {W : Type} (v : ValuePosition W) : Prop :=
  ∃ w, Models v.starting w ∧ v.limits w ∧ v.commitment w ∧
    ∀ reason, reason ∈ v.reasons → reason w v.adopted
/- This declared option/outcome adapter checks joint reasons for an assessed consequence; it is not a necessary deductive form for all value justification. -/
def ValueProcedure {W : Type} (v : ValuePosition W) : Prop :=
  v.reasons ≠ [] ∧ JointAdoption v ∧
  (∀ w, Models v.starting w → v.limits w →
    (∀ reason, reason ∈ v.reasons → reason w v.adopted) → v.consequence w) ∧
  (∀ w, v.limits w → v.relevantCriticism w → ∃ answer, v.response w = some answer ∧ answer ≠ "")
/- A facet carries its specific contents; several different facets can have the same conclusion. -/
inductive Facet (W : Type) where
  | empirical (records : List (Record W)) (scope conclusion uncertainty : Claim W)
  | inferential (assumptions : Theory W) (conclusion : Claim W)
  | value (position : ValuePosition W)
/- The claim referred to by each assessment facet is explicit. -/
def Facet.claim {W : Type} : Facet W → Claim W
  | .empirical _ _ p _ => p
  | .inferential _ p => p
  | .value v => v.commitment
/- These disclosed semantic adapters implement selected nature-specific checks; passing them does not establish all real empirical or value adequacy. -/
def FacetDischarged {W : Type} : Facet W → Prop
  | .empirical records scope p uncertainty =>
      (∃ w, Compatible records w ∧ scope w) ∧
      Supports records (fun w => scope w → p w) ∧ Supports records uncertainty
  | .inferential assumptions p => Satisfiable assumptions ∧ Entails assumptions p
  | .value v => ValueProcedure v
/- This model's semantic adapter identifies the actual assumptions, reason content and limit of a facet. -/
def FacetArticulated {W : Type} (a : Articulation W) : Facet W → Prop
  | .empirical records scope _ _ =>
      a.assumptions = singleton (Compatible records) ∧ a.reasons = [Compatible records] ∧ a.limits = scope
  | .inferential assumptions _ =>
      a.assumptions = assumptions ∧ a.reasons = [Models assumptions] ∧ a.limits = (fun _ => True)
  | .value v => a.assumptions = v.starting ∧ a.reasons = v.activeReasons ∧ a.limits = v.limits
/- A canonical articulation exposes this adapter; the source does not mandate this particular representation of grounds. -/
def canonicalArticulation {W : Type} : Facet W → Articulation W
  | .empirical records scope _ _ =>
      ⟨["recorded test outcomes", "observation conditions"], singleton (Compatible records), [Compatible records], scope⟩
  | .inferential assumptions _ =>
      ⟨["stated assumptions", "semantic consequence"], assumptions, [Models assumptions], fun _ => True⟩
  | .value v =>
      ⟨["adopted position", "reasons and consequences"], v.starting, v.activeReasons, v.limits⟩
/- Canonical articulation is connected to the very facet whose grounds it identifies. -/
theorem canonicalFacetArticulated {W : Type} (f : Facet W) :
    FacetArticulated (canonicalArticulation f) f := by
  cases f <;> exact ⟨rfl, rfl, rfl⟩
/- A discharged facet has nonempty canonical reason articulation, including the value procedure's reason requirement. -/
theorem canonicalArticulated {W : Type} (f : Facet W) (h : FacetDischarged f) :
    Articulated (canonicalArticulation f) := by
  cases f with
  | empirical records scope p uncertainty => simp [Articulated, canonicalArticulation]
  | inferential assumptions p => simp [Articulated, canonicalArticulation]
  | value v =>
      refine ⟨by simp [canonicalArticulation], ?_⟩
      simpa [canonicalArticulation, ValuePosition.activeReasons] using h.1
/- This model of the Grounds obligation binds each actual facet to its claim and articulation. Its disclosed FacetDischarged adapters do not replace all source-level assessment responsibilities or prove real adequacy. -/
/-- organon-map CoreReader.Evidence.Grounds
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
def Grounds {W : Type} (claim : Claim W) (articulations : Facet W → Articulation W)
    (actualApplicable : Facet W → Prop) (facets : List (Facet W)) : Prop :=
  facets ≠ [] ∧ (∀ facet, actualApplicable facet → facet ∈ facets) ∧
  ∀ facet, facet ∈ facets → facet.claim = claim ∧ Articulated (articulations facet) ∧
    FacetArticulated (articulations facet) facet ∧ FacetDischarged facet
/- The achievement obligation requires grounds for this very claim, without making observation a universal prerequisite. -/
/-- organon-map CoreReader.Evidence.AchievementAccountability
organon.charter.self-transcendence.limits#p1 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.charter.self-transcendence.limits#p2 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
def AchievementAccountability {W : Type} (achievement : Claim W) (articulations : Facet W → Articulation W)
    (actualApplicable : Facet W → Prop) (facets : List (Facet W)) : Prop :=
  Grounds achievement articulations actualApplicable facets
/- The concrete achievement claim refers to each transition's own before/after states. -/
def transitionAchievement : Claim TransitionCase :=
  fun transition => Expanded (transitionBefore transition) (transitionAfter transition)
/- This observation inspects an actually constructed successor and its output under that transition's input condition. -/
def transitionPerformanceRecord : Record TransitionCase :=
  ⟨fun transition => (transitionAfter transition).constructed.any
    (fun operation => operation == .successor && decide (operation.run (transitionInput transition) = 1)), true⟩
/- The positive report test reads its asserted operation, input and output; it does not verify their presence in the after-state. -/
def transitionReportRecord : Record TransitionCase :=
  ⟨fun transition =>
    let report := transitionAnnouncement transition
    report.reportedNewOperation == .successor && report.input == 0 && report.expectedOutput == 1, true⟩
/- Only the genuine extension matches the operation/performance observation in this two-transition model. -/
theorem transitionPerformanceCompatible :
    ∀ transition, Compatible [transitionPerformanceRecord] transition ↔ transition = .extend := by
  intro transition
  constructor
  · intro h
    have observed := h transitionPerformanceRecord (List.mem_singleton.mpr rfl)
    cases transition
    · cases observed
    · rfl
  · intro h; cases h
    intro record hr; have hr' := List.mem_singleton.mp hr; subst record
    rfl
/- A compatible performance observation establishes the same transition's report content and hence its represented expansion. -/
theorem transitionSupported : Supports [transitionPerformanceRecord] transitionAchievement := by
  intro transition compatible
  have h := (transitionPerformanceCompatible transition).1 compatible
  subst transition
  have reportTrue : (transitionAnnouncement .extend).claim := by
    simp [transitionAnnouncement, transitionAfter, transitionInput,
      Announcement.claim, GeneratingSystem.report, generatingSystem, extendedState, baseState, Operation.run]
  exact announcementClaimImpliesExpansion _ reportTrue
/- The actual scope is the shared input-zero condition, with no probabilistic inference introduced. -/
def transitionFacet : Facet TransitionCase :=
  .empirical [transitionPerformanceRecord] (fun transition => transitionInput transition = 0)
    transitionAchievement (fun _ => True)
/- The empirical assessment has a real compatible witness and supports this scoped achievement. -/
theorem transitionFacetDischarged : FacetDischarged transitionFacet := by
  refine ⟨⟨.extend, (transitionPerformanceCompatible _).2 rfl, rfl⟩, ?_, ?_⟩
  · intro transition compatible _; exact transitionSupported transition compatible
  · intro _ _; trivial
/- Every applicable facet of this specified achievement has matching articulation and actual discharged evidence. -/
theorem transitionAccountable :
    AchievementAccountability transitionAchievement canonicalArticulation
      (fun facet => facet = transitionFacet) [transitionFacet] := by
  refine ⟨by simp, ?_, ?_⟩
  · intro facet hf; subst facet; exact List.mem_singleton.mpr rfl
  · intro facet hf; have hf' := List.mem_singleton.mp hf; subst facet
    exact ⟨rfl, canonicalArticulated _ transitionFacetDischarged,
      canonicalFacetArticulated _, transitionFacetDischarged⟩
/- Both actual transitions issue the same positive report about their own identified state pair. -/
theorem transitionReportCompatible (transition : TransitionCase) :
    Compatible [transitionReportRecord] transition := by
  intro record hr; have hr' := List.mem_singleton.mp hr; subst record
  rfl
/- Inflation is a concrete report-compatible counterworld, so the positive report alone does not support the same achievement claim. -/
theorem transitionReportDoesNotSupport :
    Compatible [transitionReportRecord] .inflate ∧ ¬ transitionAchievement .inflate ∧
    ¬ Supports [transitionReportRecord] transitionAchievement := by
  have noExpansion : ¬ transitionAchievement .inflate := by
    simp [transitionAchievement, transitionBefore, transitionAfter, Expanded, baseState, inflatedState]
  exact ⟨transitionReportCompatible _, noExpansion, fun h => noExpansion (h _ (transitionReportCompatible _))⟩
/- These concrete obligations, positive evidence and negative report case all refer to the same state-pair and input semantics. -/
def ConcreteAchievementExample : Prop :=
  AchievementAccountability transitionAchievement canonicalArticulation
    (fun facet => facet = transitionFacet) [transitionFacet] ∧
  Compatible [transitionPerformanceRecord] .extend ∧
  Supports [transitionPerformanceRecord] transitionAchievement ∧ transitionAchievement .extend ∧
  (Compatible [transitionReportRecord] .inflate ∧ ¬ transitionAchievement .inflate ∧
    ¬ Supports [transitionReportRecord] transitionAchievement) ∧
  (∀ transition, (transitionAnnouncement transition).before = transitionBefore transition ∧
    (transitionAnnouncement transition).after = transitionAfter transition ∧
    (transitionAnnouncement transition).input = transitionInput transition ∧ transitionInput transition = 0)
/- The concrete example jointly inhabits accountability, evidence compatibility, actual gain, and the report-only countermodel. -/
theorem concreteAchievementExample : ConcreteAchievementExample := by
  refine ⟨transitionAccountable, (transitionPerformanceCompatible _).2 rfl, transitionSupported,
    transitionSupported .extend ((transitionPerformanceCompatible _).2 rfl),
    transitionReportDoesNotSupport, ?_⟩
  intro transition; exact ⟨rfl,rfl,rfl,rfl⟩
/- Semantic evidence yields truth only at a world that actually satisfies those evidence conditions. -/
/-- organon-map CoreReader.Evidence.achievementNeedsSupport
organon.charter.self-transcendence.limits#p1 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.charter.self-transcendence.limits#p2 sha256 6dade83f0b7fcc004bdb37b6726c15b31b06a377de4e86d506c9d2e67847029d
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem achievementNeedsSupport {W : Type} (achievement : Claim W) (records : List (Record W))
    (actual : W) (reliableHere : Compatible records actual) (support : Supports records achievement) :
    achievement actual ∧ ConcreteAchievementExample :=
  ⟨support actual reliableHere, concreteAchievementExample⟩
/- Weakening a conclusion preserves support; this makes no claim about weakening the evidence. -/
/-- organon-map CoreReader.Evidence.supportWeakening
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem supportWeakening {W : Type} (records : List (Record W)) (p q : Claim W)
    (support : Supports records p) (weaker : ∀ w, p w → q w) : Supports records q :=
  fun w hw => weaker w (support w hw)
/- Discarding the only informative observation loses support for the unchanged switch claim. -/
theorem evidenceWeakeningCanLoseSupport :
    Supports ([⟨id, true⟩] : List (Record Bool)) (fun w => w = true) ∧
    ¬ Supports ([] : List (Record Bool)) (fun w => w = true) := by
  refine ⟨?_, ?_⟩
  · intro w hw; exact hw ⟨id,true⟩ (by simp)
  · intro h; have bad := h false (by intro r hr; cases hr); cases bad
/- Restricting the quantified application domain preserves a supported universal conclusion. -/
/-- organon-map CoreReader.Evidence.scopeRestriction
organon.grounds#p1 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem scopeRestriction {W X : Type} (records : List (Record W)) (p : W → X → Prop)
    (wide narrow : X → Prop) (included : ∀ x, narrow x → wide x)
    (support : Supports records (fun w => ∀ x, wide x → p w x)) :
    Supports records (fun w => ∀ x, narrow x → p w x) :=
  fun w hw x hx => support w hw x (included x hx)
/- Actual applicability, rather than an optional classifier label, determines facet responsibility. -/
def Duties {W : Type} (applicable : Facet W → Prop) : Prop :=
  ∀ f, applicable f → FacetDischarged f
def LabeledDuties {W : Type} (_labels : List String) (applicable : Facet W → Prop) : Prop :=
  Duties applicable
/- Combining applicable facets requires both sets of substantive duties. -/
/-- organon-map CoreReader.Evidence.assessmentUnion
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem assessmentUnion {W : Type} (a b : Facet W → Prop) :
    Duties (fun f => a f ∨ b f) ↔ Duties a ∧ Duties b := by
  constructor
  · intro h; exact ⟨fun f hf => h f (Or.inl hf), fun f hf => h f (Or.inr hf)⟩
  · rintro ⟨ha,hb⟩ f (hf|hf); exact ha f hf; exact hb f hf
/- Omitting or changing labels does not remove an applicable duty. -/
/-- organon-map CoreReader.Evidence.labelsCannotWaive
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem labelsCannotWaive {W : Type} (xs ys : List String) (a : Facet W → Prop) :
    LabeledDuties xs a ↔ LabeledDuties ys a := Iff.rfl
/- The observed switch is the outcome itself, not a record identifier. -/
def switchRecord : Record Bool := ⟨id, true⟩
theorem switchCompatible (w : Bool) : Compatible [switchRecord] w ↔ w = true := by
  constructor
  · intro h; exact h switchRecord (by simp)
  · intro hw r hr; simp only [List.mem_singleton] at hr; cases hr; exact hw
theorem switchSupported : Supports [switchRecord] (fun w : Bool => w = true) :=
  fun w hw => (switchCompatible w).1 hw
/- The candidate action has specific benefit and cost outcomes; its inactive alternative has neither. -/
def optionBenefit (selected : Bool) : Nat := if selected then 4 else 0
def optionCost (selected : Bool) : Nat := if selected then 3 else 0
/- The report describes each option's actual cost and benefit; it does not itself assert which option ought to be selected. -/
def optionReport (selected : Bool) : Prop :=
  optionCost selected ≤ 3 ∧ optionBenefit selected = (if selected then 4 else 0)
/- The on position connects its own selected option to that option's benefit/cost outcome. -/
def switchPosition : ValuePosition Bool where
  Position := Bool
  Outcome := Nat × Nat
  adopted := true
  selected := id
  outcome := fun _ option => (optionBenefit option, optionCost option)
  objective := fun result => result.2 < result.1
  constraints := fun _ option => optionCost option ≤ 3
  starting := singleton (fun w => w = true)
  reasons := [fun _ option => optionReport option]
  limits := fun _ => True
  relevantCriticism := fun w => w = false
  response := fun w => if w then some "benefit exceeds cost within budget" else some "reconsider if the budget no longer permits this cost"
theorem switchValueProcedure : ValueProcedure switchPosition := by
  refine ⟨by simp [switchPosition], ?_, ?_, ?_⟩
  · refine ⟨true, (modelsSingleton _ _).2 rfl, trivial, rfl, ?_⟩
    intro reason hr
    have hr' : reason = (fun (_ : Bool) (option : Bool) => optionReport option) := List.mem_singleton.mp hr
    subst reason
    exact ⟨by decide, rfl⟩
  · intro w _ _ allReasons
    have evidence := allReasons (fun (_ : Bool) (option : Bool) => optionReport option) (List.mem_singleton.mpr rfl)
    change optionReport true at evidence
    have benefitAboveBudget : 3 < optionBenefit true := by rw [evidence.2]; decide
    exact ⟨Nat.lt_of_le_of_lt evidence.1 benefitAboveBudget, evidence.1⟩
  · intro w _ _; cases w <;> simp [switchPosition]
/- Adopting the other option updates the adopted starting state too, so rejection cannot be blamed on an inconsistent start. -/
def oppositePosition : ValuePosition Bool :=
  { switchPosition with adopted := false, starting := singleton (fun w => w = false) }
/- The alternative has a joint adoption witness but its actual zero benefit/cost fails the adopted strict-benefit objective. -/
theorem oppositePositionRejected : JointAdoption oppositePosition ∧ ¬ ValueProcedure oppositePosition := by
  have witness : JointAdoption oppositePosition := by
    refine ⟨false, (modelsSingleton _ _).2 rfl, trivial, rfl, ?_⟩
    intro reason hr
    have hr' : reason = (fun (_ : Bool) (option : Bool) => optionReport option) := List.mem_singleton.mp hr
    subst reason
    exact ⟨by decide, rfl⟩
  refine ⟨witness, ?_⟩
  intro h
  have allReasons : ∀ reason, reason ∈ oppositePosition.reasons → reason false oppositePosition.adopted := by
    intro reason hr
    have hr' : reason = (fun (_ : Bool) (option : Bool) => optionReport option) := List.mem_singleton.mp hr
    subst reason
    exact ⟨by decide, rfl⟩
  have bad := h.2.2.1 false ((modelsSingleton _ _).2 rfl) trivial allReasons
  exact Nat.lt_irrefl 0 bad.1
/- Contradictory starting assumptions and an impossible selected/adopted equality are separate inadmissible variants. -/
def contradictoryStartingPosition : ValuePosition Bool :=
  { switchPosition with starting := singleton (fun _ => False) }
def impossibleAdoptionPosition : ValuePosition Bool :=
  { switchPosition with selected := fun _ => false }
/- The common-world witness rejects both contradiction and an impossible commitment instead of proving them vacuously. -/
theorem inadmissibleValuePositionsRejected :
    ¬ ValueProcedure contradictoryStartingPosition ∧ ¬ ValueProcedure impossibleAdoptionPosition := by
  constructor
  · intro h; obtain ⟨w,hw,_,_,_⟩ := h.2.1
    exact (modelsSingleton _ _).1 hw
  · intro h; obtain ⟨w,_,_,hw,_⟩ := h.2.1
    cases hw
/- Removing the reasons leaves only a position and assertion, which fails this value procedure. -/
def unsupportedPosition : ValuePosition Bool := { switchPosition with reasons := [] }
def switchEmpirical : Facet Bool :=
  .empirical [switchRecord] (fun _ => True) (fun w => w = true) (fun _ => True)
theorem switchEmpiricalDischarged : FacetDischarged switchEmpirical := by
  refine ⟨⟨true, (switchCompatible true).2 rfl, trivial⟩, ?_, ?_⟩
  · intro w hw _; exact switchSupported w hw
  · intro w _; trivial
/- A mixed empirical/value position has actual empirical evidence but still lacks its value-reason duty. -/
/-- organon-map CoreReader.Evidence.mixedMissingResponsibility
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem mixedMissingResponsibility :
    FacetDischarged switchEmpirical ∧
    ¬ LabeledDuties [] (fun f : Facet Bool => f = switchEmpirical ∨ f = .value unsupportedPosition) := by
  refine ⟨switchEmpiricalDischarged, ?_⟩
  intro h
  have bad := (h (.value unsupportedPosition) (Or.inr rfl)).1
  exact bad rfl
/- A fully identified argument may still fail to entail the stated conclusion. -/
def uninformativeArgument : Articulation Bool :=
  ⟨["switch state"], emptyTheory, [fun _ => True], fun _ => True⟩
/-- organon-map CoreReader.Evidence.articulationNotSupport
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem articulationNotSupport : Articulated uninformativeArgument ∧
    ¬ Entails uninformativeArgument.assumptions (fun w : Bool => w = true) := by
  exact ⟨⟨by simp [uninformativeArgument], by simp [uninformativeArgument]⟩,
    consistentIncomplete.2.1⟩
/- Identifiable but unrelated argument fields cannot replace the actual observation grounds under the connected adapter. -/
theorem unrelatedArticulationRejected :
    Articulated uninformativeArgument ∧ FacetDischarged switchEmpirical ∧
    ¬ FacetArticulated uninformativeArgument switchEmpirical := by
  refine ⟨articulationNotSupport.1, switchEmpiricalDischarged, ?_⟩
  intro h
  have relation := congrFun h.1 (Compatible [switchRecord])
  have bad : False := relation.mpr rfl
  exact bad
/- Repetition of the same unrelated temperature observation leaves the switch state undetermined. -/
def temperatureRecord : Record (Bool × Bool) := ⟨Prod.fst, true⟩
theorem temperatureCompatible (b : Bool) :
    Compatible [temperatureRecord, temperatureRecord] (true,b) := by
  intro r hr
  simp at hr
  cases hr
  rfl
/- The world identifies a selected action and its budget; the action costs three units. -/
abbrev BudgetWorld := Bool × Nat
/- A real issued announcement asserts the selected action, but says nothing about affordability. -/
def announcement : String := "activate"
def announcementPosition : ValuePosition BudgetWorld where
  Position := Bool
  Outcome := Nat × Nat
  adopted := true
  selected := Prod.fst
  outcome := fun _ option => (optionBenefit option, optionCost option)
  objective := fun result => result.2 < result.1
  constraints := fun w option => optionCost option ≤ w.2
  starting := singleton (fun w => w.1 = true)
  reasons := [fun _ option => announcement = (if option then "activate" else "disable")]
  limits := fun _ => True
  relevantCriticism := fun w => w.2 < 3
  response := fun _ => some "reconsider the action when its cost exceeds budget"
/- The zero-budget counterworld satisfies the stated starts, adoption and all announced reasons jointly. -/
theorem announcementHasJointAdoption : JointAdoption announcementPosition := by
  refine ⟨(true,0), (modelsSingleton _ _).2 rfl, trivial, rfl, ?_⟩
  intro reason hr
  have hr' : reason = (fun (_ : BudgetWorld) (option : Bool) => announcement = (if option then "activate" else "disable")) :=
    List.mem_singleton.mp hr
  subst reason
  rfl
/- A nonempty announcement remains true in a jointly admissible zero-budget world but cannot support the action's affordability. -/
theorem announcementNotBudgetReason :
    announcementPosition.reasons ≠ [] ∧ announcementPosition.commitment (true,0) ∧
    (∀ reason, reason ∈ announcementPosition.reasons → reason (true,0) announcementPosition.adopted) ∧
    ¬ announcementPosition.consequence (true,0) ∧ ¬ ValueProcedure announcementPosition := by
  refine ⟨by simp [announcementPosition], rfl, ?_, (by intro h; cases h.2), ?_⟩
  · intro reason hr
    have hr' : reason = (fun (_ : BudgetWorld) (option : Bool) => announcement = (if option then "activate" else "disable")) := List.mem_singleton.mp hr
    subst reason
    rfl
  · intro h
    have allReasons : ∀ reason, reason ∈ announcementPosition.reasons → reason (true,0) announcementPosition.adopted := by
      intro reason hr
      have hr' : reason = (fun (_ : BudgetWorld) (option : Bool) => announcement = (if option then "activate" else "disable")) := List.mem_singleton.mp hr
      subst reason
      rfl
    have bad := h.2.2.1 (true,0) ((modelsSingleton _ _).2 rfl) trivial allReasons
    cases bad.2
/- A repeated actual selection observation contains no budget information. -/
def actionRecord : Record BudgetWorld := ⟨Prod.fst, true⟩
theorem actionCompatible (budget : Nat) : Compatible [actionRecord, actionRecord] (true,budget) := by
  intro r hr; simp at hr; cases hr; rfl
/- Single and repeated irrelevant observations cannot establish the other outcome or the same action's budget adequacy. -/
/-- organon-map CoreReader.Evidence.measurementRepeatNotSupport
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem measurementRepeatNotSupport :
    temperatureRecord.test (true,false) = true ∧
    Compatible [temperatureRecord,temperatureRecord] (true,false) ∧
    Compatible [temperatureRecord,temperatureRecord] (true,true) ∧
    ¬ Supports [temperatureRecord] (fun w : Bool × Bool => w.2 = true) ∧
    ¬ Supports [temperatureRecord,temperatureRecord] (fun w : Bool × Bool => w.2 = true) ∧
    Compatible [actionRecord,actionRecord] (true,0) ∧
    Compatible [actionRecord,actionRecord] (true,3) ∧
    ¬ Supports [actionRecord] announcementPosition.consequence ∧
    ¬ Supports [actionRecord,actionRecord] announcementPosition.consequence ∧
    ¬ ValueProcedure announcementPosition := by
  refine ⟨rfl, temperatureCompatible false, temperatureCompatible true, ?_, ?_,
    actionCompatible 0, actionCompatible 3, ?_, ?_, announcementNotBudgetReason.2.2.2.2⟩
  · intro h
    have bad := h (true,false) (by intro r hr; simp only [List.mem_singleton] at hr; cases hr; rfl)
    cases bad
  · intro h; have bad := h (true,false) (temperatureCompatible false); cases bad
  · intro h
    have bad := h (true,0) (by intro r hr; simp only [List.mem_singleton] at hr; cases hr; rfl)
    cases bad.2
  · intro h; have bad := h (true,0) (actionCompatible 0); cases bad.2
/- Missing reason records fail a procedure; independently, a present announcement fails the explicit budget-support criterion. -/
/-- organon-map CoreReader.Evidence.selfAssertionNotReason
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem selfAssertionNotReason :
    (unsupportedPosition.commitment true ∧ ¬ ValueProcedure unsupportedPosition) ∧
    (announcementPosition.reasons ≠ [] ∧ announcementPosition.commitment (true,0) ∧
      ¬ announcementPosition.consequence (true,0) ∧ ¬ ValueProcedure announcementPosition) ∧
    JointAdoption announcementPosition :=
  ⟨⟨rfl, fun h => h.1 rfl⟩,
    ⟨announcementNotBudgetReason.1, announcementNotBudgetReason.2.1,
      announcementNotBudgetReason.2.2.2.1, announcementNotBudgetReason.2.2.2.2⟩,
    announcementHasJointAdoption⟩
/- The value procedure is satisfiable although the adopted starting commitment is not entailed by empty facts. -/
/-- organon-map CoreReader.Evidence.valueWithoutSelfProof
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem valueWithoutSelfProof : ValueProcedure switchPosition ∧
    Satisfiable switchPosition.starting ∧
    ¬ Entails (emptyTheory : Theory Bool) switchPosition.commitment ∧
    (JointAdoption oppositePosition ∧ ¬ ValueProcedure oppositePosition) ∧
    (¬ ValueProcedure contradictoryStartingPosition ∧ ¬ ValueProcedure impossibleAdoptionPosition) :=
  ⟨switchValueProcedure, ⟨true, (modelsSingleton _ _).2 rfl⟩, consistentIncomplete.2.1,
    oppositePositionRejected, inadmissibleValuePositionsRejected⟩
/- The world records the selected option and its actual benefit/cost outcomes. -/
abbrev BenefitCostWorld := Bool × (Nat × Nat)
def measuredOutcome (world : BenefitCostWorld) (option : Bool) : Nat × Nat :=
  if option then world.2 else (0,0)
def benefitReason (world : BenefitCostWorld) (option : Bool) : Prop :=
  (measuredOutcome world option).1 = 4
def costReason (world : BenefitCostWorld) (option : Bool) : Prop :=
  (measuredOutcome world option).2 ≤ 3
/- Neither recorded benefit nor recorded cost alone establishes the selected option's joint consequence. -/
def jointReasonPosition : ValuePosition BenefitCostWorld where
  Position := Bool
  Outcome := Nat × Nat
  adopted := true
  selected := Prod.fst
  outcome := measuredOutcome
  objective := fun result => result.2 < result.1
  constraints := fun world option => (measuredOutcome world option).2 ≤ 3
  starting := singleton (fun world => world.1 = true)
  reasons := [benefitReason, costReason]
  limits := fun _ => True
  relevantCriticism := fun world => 3 < world.2.2
  response := fun _ => some "reassess the option when its cost exceeds the budget"
/- These two content constraints jointly establish the consequence in a nonempty adopted world. -/
theorem jointReasonProcedure : ValueProcedure jointReasonPosition := by
  refine ⟨by simp [jointReasonPosition], ?_, ?_, ?_⟩
  · refine ⟨(true,(4,3)), (modelsSingleton _ _).2 rfl, trivial, rfl, ?_⟩
    intro reason hr
    change reason ∈ [benefitReason,costReason] at hr
    rcases List.mem_cons.mp hr with hr | hr
    · subst reason; rfl
    · have hr' := List.mem_singleton.mp hr
      subst reason
      change 3 ≤ 3; exact Nat.le_refl 3
  · intro world _ _ reasons
    have benefit := reasons benefitReason (by change benefitReason ∈ [benefitReason,costReason]; simp)
    have cost := reasons costReason (by change costReason ∈ [benefitReason,costReason]; simp)
    change (measuredOutcome world true).1 = 4 at benefit
    change (measuredOutcome world true).2 ≤ 3 at cost
    refine ⟨?_, cost⟩
    have bigger : 3 < (measuredOutcome world true).1 := by rw [benefit]; decide
    exact Nat.lt_of_le_of_lt cost bigger
  · intro world _ _
    exact ⟨"reassess the option when its cost exceeds the budget", rfl, by decide⟩
/- Each separate reason has a concrete same-start/limit/adoption counterworld; their conjunction is sufficient. -/
def JointReasonsExample : Prop :=
  ValueProcedure jointReasonPosition ∧
  (Models jointReasonPosition.starting (true,(4,5)) ∧ jointReasonPosition.limits (true,(4,5)) ∧
    jointReasonPosition.commitment (true,(4,5)) ∧ benefitReason (true,(4,5)) true ∧
    ¬ jointReasonPosition.consequence (true,(4,5))) ∧
  (Models jointReasonPosition.starting (true,(0,3)) ∧ jointReasonPosition.limits (true,(0,3)) ∧
    jointReasonPosition.commitment (true,(0,3)) ∧ costReason (true,(0,3)) true ∧
    ¬ jointReasonPosition.consequence (true,(0,3)))
theorem jointReasonsExample : JointReasonsExample := by
  refine ⟨jointReasonProcedure,
    ⟨(modelsSingleton _ _).2 rfl, trivial, rfl, rfl, ?_⟩,
    ⟨(modelsSingleton _ _).2 rfl, trivial, rfl, Nat.le_refl 3, ?_⟩⟩
  · intro h; have bad : 5 ≤ 3 := h.2; omega
  · intro h; have bad : 3 < 0 := h.1; omega
/- Empirical observations, semantic inference and criticism-responsive reasons coexist without a scalar score. -/
/-- organon-map CoreReader.Evidence.heterogeneousReasons
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem heterogeneousReasons :
    FacetDischarged switchEmpirical ∧
    FacetDischarged (Facet.inferential (singleton (fun w : Bool => w = true)) (fun w => w = true)) ∧
    FacetDischarged (Facet.value switchPosition) ∧ JointReasonsExample := by
  refine ⟨switchEmpiricalDischarged, ⟨⟨true, (modelsSingleton _ _).2 rfl⟩, ?_⟩, switchValueProcedure, jointReasonsExample⟩
  intro w hw; exact (modelsSingleton (fun x : Bool => x = true) w).1 hw

/- This local observation checks the actual output on input zero. -/
def zeroRecord : Record (Nat → Bool) := ⟨fun f => f 0, true⟩
def localGenerator (seed : Nat) : Nat → Bool := fun n => n == seed
/- All outputs being true is a stronger, explicitly quantified capability claim. -/
def allTrue : Claim (Nat → Bool) := fun f => ∀ n, f n = true
theorem zeroCompatible (f : Nat → Bool) : Compatible [zeroRecord] f ↔ f 0 = true := by
  constructor
  · intro h; exact h zeroRecord (by simp)
  · intro hf r hr; simp only [List.mem_singleton] at hr; cases hr; exact hf
/- A generating subject owns an earlier predicate and a seed used to revise that actual predicate. -/
structure GeneratingProcess where
  owner : Nat
  prior : Nat → Bool
  generateSeed : Nat
/- The revision preserves prior successes and adds the seed-selected case through the actual generator. -/
def GeneratingProcess.outputRevision (process : GeneratingProcess) : Nat → Bool :=
  fun input => process.prior input || localGenerator process.generateSeed input
/- A produced revision retains its producer and exact old/new objects. -/
structure ProducedRevision where
  producer : Nat
  before : Nat → Bool
  after : Nat → Bool
/- The subject itself constructs the owned before/after revision object. -/
def GeneratingProcess.produce (process : GeneratingProcess) : ProducedRevision :=
  ⟨process.owner, process.prior, process.outputRevision⟩
def sampleGeneratingProcess : GeneratingProcess := ⟨17, fun _ => false, 0⟩
/- This same-owner revision actually changes input zero, while its produced predicate still fails at input one. -/
def OwnedRevisionExample : Prop :=
  sampleGeneratingProcess.produce.producer = sampleGeneratingProcess.owner ∧
  sampleGeneratingProcess.produce.before = sampleGeneratingProcess.prior ∧
  sampleGeneratingProcess.produce.after = sampleGeneratingProcess.outputRevision ∧
  sampleGeneratingProcess.produce.before 0 = false ∧ sampleGeneratingProcess.produce.after 0 = true ∧
  sampleGeneratingProcess.produce.after 1 = false ∧
  Compatible [zeroRecord] sampleGeneratingProcess.produce.after ∧
  ¬ Supports [zeroRecord] allTrue
/- Actual producer/old/new links and the compatible failing revision witness the insufficiency of self-origin. -/
theorem ownedRevisionExample : OwnedRevisionExample := by
  refine ⟨rfl,rfl,rfl,rfl,rfl,rfl,(zeroCompatible _).2 rfl, ?_⟩
  intro h
  have bad := h sampleGeneratingProcess.produce.after ((zeroCompatible _).2 rfl) 1
  cases bad
/- The generator's own sample succeeds, but its generated revision has a concrete unsupported global claim. -/
/-- organon-map CoreReader.Evidence.selfOriginDoesNotSupport
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem selfOriginDoesNotSupport :
    localGenerator 0 0 = true ∧ localGenerator 0 1 = false ∧
    Compatible [zeroRecord] (localGenerator 0) ∧
    ¬ Supports [zeroRecord] allTrue ∧ OwnedRevisionExample := by
  refine ⟨rfl, rfl, (zeroCompatible _).2 rfl, ?_, ownedRevisionExample⟩
  intro h
  have bad := h (localGenerator 0) ((zeroCompatible _).2 rfl) 1
  cases bad
/- A proper local observation allows both a universally successful and a failing extension. -/
/-- organon-map CoreReader.Evidence.localNotUniversal
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem localNotUniversal :
    (∃ outside : Nat, outside ≠ 0) ∧
    Compatible [zeroRecord] (fun _ => true) ∧
    Compatible [zeroRecord] (localGenerator 0) ∧
    allTrue (fun _ => true) ∧ ¬ allTrue (localGenerator 0) ∧
    ¬ Supports [zeroRecord] allTrue := by
  refine ⟨⟨1, by decide⟩, (zeroCompatible _).2 rfl, (zeroCompatible _).2 rfl,
    (fun _ => rfl), ?_, selfOriginDoesNotSupport.2.2.2.1⟩
  intro h; have bad := h 1; cases bad
/- Two implementations agree on the actual observed input and differ on a specified relevant omitted input. -/
/-- organon-map CoreReader.Evidence.hiddenDifference
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem hiddenDifference :
    (∀ n : Nat, n = 0 → (fun _ : Nat => true) n = localGenerator 0 n) ∧
    (fun _ : Nat => true) 1 ≠ localGenerator 0 1 := by
  refine ⟨?_, by decide⟩
  intro n hn; cases hn; rfl
/- One observation supplies only its actual input-specific consequence, without repetition. -/
/-- organon-map CoreReader.Evidence.singleObservation
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem singleObservation : [zeroRecord].length = 1 ∧
    (∃ f, Compatible [zeroRecord] f) ∧
    Supports [zeroRecord] (fun f => f 0 = true) ∧
    ¬ Supports [zeroRecord] allTrue :=
  ⟨rfl, ⟨localGenerator 0, (zeroCompatible _).2 rfl⟩,
    (fun f hf => (zeroCompatible f).1 hf), selfOriginDoesNotSupport.2.2.2.1⟩
/- This inferential assessment derives a successor value from its explicit numeric premise without observation. -/
def arithmeticFacet : Facet Nat := .inferential (singleton (fun n => n = 2)) (fun n => n + 1 = 3)
def usesObservation {W : Type} : Facet W → Bool
  | .empirical _ _ _ _ => true
  | _ => false
/- An actual valid inferential assessment refutes a mandatory measurement/repetition/framework chain. -/
/-- organon-map CoreReader.Evidence.noUniversalChain
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem noUniversalChain : FacetDischarged arithmeticFacet ∧ usesObservation arithmeticFacet = false := by
  refine ⟨⟨⟨2, (modelsSingleton _ _).2 rfl⟩, ?_⟩, rfl⟩
  intro n hn
  have premise := (modelsSingleton (fun x : Nat => x = 2) n).1 hn
  change n + 1 = 3
  rw [premise]
/- A trial has a reproducible setting, an actual outcome and a separately recorded outcome. -/
structure Trial where
  setting : Nat
  actualOutcome : Nat
  recordedOutcome : Nat
/- Verifying a record, reproducing settings and retaining a conclusion are separate predicates. -/
def Verified (t : Trial) : Prop := t.recordedOutcome = t.actualOutcome
def Reproduced (a b : Trial) : Prop := a.setting = b.setting
def Bounded (t : Trial) : Prop := t.actualOutcome ≤ 2
/- Same-setting possible trials can differ while preserving the chosen bound; no probability semantics is claimed. -/
/-- organon-map CoreReader.Evidence.variableOutcomesStableBound
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem variableOutcomesStableBound :
    let a : Trial := ⟨0,1,1⟩
    let b : Trial := ⟨0,2,2⟩
    Reproduced a b ∧ a.actualOutcome ≠ b.actualOutcome ∧ Bounded a ∧ Bounded b := by
  simp [Reproduced, Bounded]
/- Concrete records distinguish record accuracy, condition reproduction and conclusion stability. -/
/-- organon-map CoreReader.Evidence.verificationReproductionStability
organon.grounds.scope#p1 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p2 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
organon.grounds.scope#p3 sha256 4a0e93c7834e4ef62f129ee4621cf7bf1c93b64d86f9f145d1592adcf9fb6693
-/
theorem verificationReproductionStability :
    (Verified ⟨0,1,1⟩ ∧ Verified ⟨1,1,1⟩ ∧ ¬ Reproduced ⟨0,1,1⟩ ⟨1,1,1⟩) ∧
    (Reproduced ⟨0,1,1⟩ ⟨0,3,2⟩ ∧ ¬ Verified ⟨0,3,2⟩ ∧ ¬ Bounded ⟨0,3,2⟩) ∧
    (Bounded ⟨0,1,1⟩ ∧ Bounded ⟨0,2,0⟩ ∧ ¬ Verified ⟨0,2,0⟩) := by
  simp [Verified, Reproduced, Bounded]
/- Explanation certificates are executable syntax for this same arithmetic process. -/
inductive Program where
  | doubleInput
  | constant (value : Nat)
def Program.eval : Program → Nat → Nat
  | .doubleInput, n => n + n
  | .constant value, _ => value
/- A process exposes outputs and an explanation response, whose certificate can be checked against those outputs. -/
structure Process where
  output : Nat → Nat
  explanation : Option Program
/- The output-only application contract checks every relevant input. -/
def OutputContract (p : Process) : Prop := ∀ n, p.output n = n + n
/- The explanation application contract requires a provided certificate faithful to this very process. -/
def ExplanationContract (p : Process) : Prop :=
  ∃ program, p.explanation = some program ∧ ∀ n, program.eval n = p.output n
/- This process produces doubled values but returns no explanatory certificate. -/
def outputOnlyProcess : Process := ⟨fun n => n + n, none⟩
def explainedProcess : Process := ⟨fun n => n + n, some .doubleInput⟩
/- Object scope fixes the very process whose contract is assessed; contract inputs themselves still range over all naturals. -/
def processScope (assessed : Process) : Theory Process :=
  singleton (fun candidate => candidate = assessed)
/- This inferential facet checks an explicit contract under exact process-identity assumptions. -/
def processContractFacet (assessed : Process) (contract : Claim Process) : Facet Process :=
  .inferential (processScope assessed) contract
/- The scope's compatible interpretations are exactly this assessed process, not an unrelated substitute. -/
theorem processScopeModels (assessed candidate : Process) :
    Models (processScope assessed) candidate ↔ candidate = assessed :=
  modelsSingleton (fun process => process = assessed) candidate
/- A concrete contract proof supplies the facet's consequence for its scoped object. -/
theorem processContractDischarged (assessed : Process) (contract : Claim Process) (proof : contract assessed) :
    FacetDischarged (processContractFacet assessed contract) := by
  refine ⟨⟨assessed,(processScopeModels _ _).2 rfl⟩, ?_⟩
  intro candidate hc
  have same := (processScopeModels _ _).1 hc
  subst candidate
  exact proof
/- Scoped capability grounds include exact claim, object-specific assumptions, canonical articulation and actual assessment. -/
def ProcessGrounds (assessed : Process) (contract : Claim Process) : Prop :=
  Grounds contract canonicalArticulation (fun facet => facet = processContractFacet assessed contract)
    [processContractFacet assessed contract]
theorem processGrounds (assessed : Process) (contract : Claim Process) (proof : contract assessed) :
    ProcessGrounds assessed contract := by
  have discharged := processContractDischarged assessed contract proof
  refine ⟨by simp, ?_, ?_⟩
  · intro facet hf; subst facet; exact List.mem_singleton.mpr rfl
  · intro facet hf; have hf' := List.mem_singleton.mp hf; subst facet
    exact ⟨rfl,canonicalArticulated _ discharged,canonicalFacetArticulated _,discharged⟩
/- Universal output correctness here comes from the concrete program definition, not from an assumed capability label. -/
theorem outputCorrectByEvaluation : OutputContract outputOnlyProcess := fun _ => rfl
/- This same process actually returns no explanation certificate. -/
theorem outputOnlyNoExplanation : ¬ ExplanationContract outputOnlyProcess := by
  rintro ⟨program,h,_⟩; cases h
/- The full application contract requires outputs and an explanation of that same process. -/
def FullProcessContract (assessed : Process) : Prop := OutputContract assessed ∧ ExplanationContract assessed
/- Output-only grounds have the assessed process itself as a counterworld to the stronger contract. -/
def OutputContractEvidence : Prop :=
  ProcessGrounds outputOnlyProcess OutputContract ∧
  Models (processScope outputOnlyProcess) outputOnlyProcess ∧
  ¬ Entails (processScope outputOnlyProcess) FullProcessContract
/- Existing output evidence does not supply the absent explanation for the same object and scope. -/
theorem outputContractEvidence : OutputContractEvidence := by
  refine ⟨processGrounds _ _ outputCorrectByEvaluation, (processScopeModels _ _).2 rfl, ?_⟩
  intro stronger
  exact outputOnlyNoExplanation (stronger outputOnlyProcess ((processScopeModels _ _).2 rfl)).2
/- Both actual application contracts have grounds and explicit object scopes; neither scope is empty. -/
def ScopedApplicationEvidence : Prop :=
  ProcessGrounds outputOnlyProcess OutputContract ∧
  ProcessGrounds explainedProcess FullProcessContract ∧
  (∀ candidate, Models (processScope outputOnlyProcess) candidate ↔ candidate = outputOnlyProcess) ∧
  (∀ candidate, Models (processScope explainedProcess) candidate ↔ candidate = explainedProcess) ∧
  Satisfiable (processScope outputOnlyProcess) ∧ Satisfiable (processScope explainedProcess)
/- Concrete evaluation and a faithful double-input certificate establish the two differently scoped contracts. -/
theorem scopedApplicationEvidence : ScopedApplicationEvidence := by
  refine ⟨processGrounds _ _ outputCorrectByEvaluation, processGrounds _ _ ?_,
    processScopeModels _,processScopeModels _,⟨_,(processScopeModels _ _).2 rfl⟩,
    ⟨_,(processScopeModels _ _).2 rfl⟩⟩
  exact ⟨fun _ => rfl,⟨.doubleInput,rfl,fun _ => rfl⟩⟩
/- Universal output correctness does not entail the explanation-requiring contract for the same process. -/
/-- organon-map CoreReader.Evidence.outputNotExplanation
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem outputNotExplanation : OutputContract outputOnlyProcess ∧
    ¬ ExplanationContract outputOnlyProcess ∧ OutputContractEvidence :=
  ⟨outputCorrectByEvaluation, outputOnlyNoExplanation, outputContractEvidence⟩
/- Applications may use distinct contracts, and a faithful certificate can satisfy the stronger one. -/
/-- organon-map CoreReader.Evidence.applicationContractsDiffer
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem applicationContractsDiffer :
    (OutputContract outputOnlyProcess ∧ ¬ (OutputContract outputOnlyProcess ∧ ExplanationContract outputOnlyProcess)) ∧
    (OutputContract explainedProcess ∧ ExplanationContract explainedProcess) ∧
    ScopedApplicationEvidence :=
  ⟨⟨outputCorrectByEvaluation, fun h => outputOnlyNoExplanation h.2⟩,
    ⟨(fun _ => rfl), ⟨.doubleInput, rfl, fun _ => rfl⟩⟩, scopedApplicationEvidence⟩
/- The assessor supplies a mathematical certificate; the process's own explanation response is unnecessary. -/
structure ExternalCertificate (p : Process) where
  assessorId : Nat
  assessedId : Nat
  distinctParticipants : assessorId ≠ assessedId
  outputCorrect : ∀ n, p.output n = n + n
/- The external assessor 42 evaluates the specified process 7; the full output proof is constructed by evaluation. -/
def externalOutputCertificate : ExternalCertificate outputOnlyProcess :=
  ⟨42,7,by decide,fun _ => rfl⟩
/- An external certificate establishes the output contract without producing an internal explanation. -/
/-- organon-map CoreReader.Evidence.externalAssessment
organon.grounds.capabilities#p1 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
organon.grounds.capabilities#p2 sha256 7249f6f2ef327baaa72349cae53b9245f23a34436356dd05f3c6005cab35e8f0
-/
theorem externalAssessment :
    (∃ certificate : ExternalCertificate outputOnlyProcess,
      certificate.assessorId = 42 ∧ certificate.assessedId = 7 ∧
      certificate.assessorId ≠ certificate.assessedId ∧ OutputContract outputOnlyProcess) ∧
    ProcessGrounds outputOnlyProcess OutputContract ∧
    ¬ ExplanationContract outputOnlyProcess :=
  ⟨⟨externalOutputCertificate,rfl,rfl,externalOutputCertificate.distinctParticipants,
    externalOutputCertificate.outputCorrect⟩,
    processGrounds outputOnlyProcess OutputContract externalOutputCertificate.outputCorrect,
    outputOnlyNoExplanation⟩
/- This argument records concepts and actual premises for a semantic inference, separately from executable tests. -/
def arithmeticArticulation : Articulation Nat := canonicalArticulation arithmeticFacet
/- A reasoned inferential assessment needs no observation method, while applicable empirical assessment retains observations. -/
/-- organon-map CoreReader.Evidence.nonExecutableAssessment
organon.relationships.terms#p1 sha256 0d22f818e4466a5ab4272607ac0ab26997270cf05c64ce9ac547e866068907d1
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem nonExecutableAssessment :
    Grounds (fun n : Nat => n + 1 = 3) canonicalArticulation (fun f => f = arithmeticFacet) [arithmeticFacet] ∧
    usesObservation arithmeticFacet = false ∧
    FacetDischarged switchEmpirical ∧ usesObservation switchEmpirical = true := by
  refine ⟨⟨by simp, (by intro f hf; cases hf; simp), ?_⟩, rfl, switchEmpiricalDischarged, rfl⟩
  intro f hf; simp only [List.mem_singleton] at hf; cases hf
  exact ⟨rfl, canonicalArticulated _ noUniversalChain.1, canonicalFacetArticulated _, noUniversalChain.1⟩

end CoreReader.Evidence
```
<!-- /lean-code leanified/CoreReader/Evidence.lean -->

<a id="line-code-leanified-corereader-evidence-lean-1"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:1 --> **L1** Import CoreReader.Logic, making its checked declarations available to this module; this line states no new philosophical result.

<a id="line-code-leanified-corereader-evidence-lean-2"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:2 --> **L2** Import CoreReader.Agency, making its checked declarations available to this module; this line states no new philosophical result.

<a id="line-code-leanified-corereader-evidence-lean-4"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:4 --> **L4** Open namespace CoreReader.Evidence so subsequent declarations receive this module-qualified name.

<a id="line-code-leanified-corereader-evidence-lean-5"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:5 --> **L5** Make names from CoreReader.Logic available without qualification; this changes name resolution, not assumptions.

<a id="line-code-leanified-corereader-evidence-lean-6"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:6 --> **L6** Make names from CoreReader.Agency available without qualification; this changes name resolution, not assumptions.

<a id="line-code-leanified-corereader-evidence-lean-8"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:8 --> **L8** Document the intended scope of Record. The corresponding declaration concerns: A record packages a supplied Boolean test and its supplied observed result; provenance and measurement reliability are not fields. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-9"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:9 --> **L9** Declare the data interface Record. A record packages a supplied Boolean test and its supplied observed result; provenance and measurement reliability are not fields.

<a id="line-code-leanified-corereader-evidence-lean-10"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:10 --> **L10** Store a specified Boolean test that reads the actual represented world.

<a id="line-code-leanified-corereader-evidence-lean-11"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:11 --> **L11** Store the observed Boolean outcome to which that test will be compared.

<a id="line-code-leanified-corereader-evidence-lean-12"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:12 --> **L12** Document the intended scope of Compatible. The corresponding declaration concerns: A world is compatible when every listed test yields its recorded result. The empty record list admits every world. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-13"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:13 --> **L13** Define Compatible. A world is compatible when every listed test yields its recorded result. The empty record list admits every world.

<a id="line-code-leanified-corereader-evidence-lean-14"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:14 --> **L14** Require every listed record’s actual test at w to equal that record’s observed outcome.

<a id="line-code-leanified-corereader-evidence-lean-15"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:15 --> **L15** Document the intended scope of Supports. The corresponding declaration concerns: Support means that the claim holds in every compatible modeled world. It is semantic entailment from records, not a statistical confidence measure. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-16"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:16 --> **L16** Define Supports. Support means that the claim holds in every compatible modeled world. It is semantic entailment from records, not a statistical confidence measure.

<a id="line-code-leanified-corereader-evidence-lean-17"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:17 --> **L17** Require the very claim to hold in every world compatible with all records; absent compatible worlds this implication alone can be vacuous.

<a id="line-code-leanified-corereader-evidence-lean-18"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:18 --> **L18** Document the intended scope of Articulation. The corresponding declaration concerns: Packages concept strings, an assumption theory, a list of reason claims, and a scope/limits claim. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-19"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:19 --> **L19** Declare the data interface Articulation. Packages concept strings, an assumption theory, a list of reason claims, and a scope/limits claim.

<a id="line-code-leanified-corereader-evidence-lean-20"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:20 --> **L20** Store identifiable concept names; strings alone do not establish semantic adequacy.

<a id="line-code-leanified-corereader-evidence-lean-21"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:21 --> **L21** Store the actual theory stated as the articulation’s assumptions.

<a id="line-code-leanified-corereader-evidence-lean-22"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:22 --> **L22** Store reason contents as propositions about the same world type.

<a id="line-code-leanified-corereader-evidence-lean-23"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:23 --> **L23** Store the actual application-limit predicate for those reasons.

<a id="line-code-leanified-corereader-evidence-lean-24"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:24 --> **L24** Document the intended scope of Articulated. The corresponding declaration concerns: Checks only that concept and reason lists are nonempty; it does not establish truth, relevance, or a relation to the target claim. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-25"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:25 --> **L25** Define Articulated. Checks only that concept and reason lists are nonempty; it does not establish truth, relevance, or a relation to the target claim.

<a id="line-code-leanified-corereader-evidence-lean-26"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:26 --> **L26** Require nonempty concept and reason lists only; this procedural condition is weaker than matching, discharged Grounds.

<a id="line-code-leanified-corereader-evidence-lean-27"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:27 --> **L27** Document the intended scope of ValuePosition. The corresponding declaration concerns: Represents an adopted option, selected option, option-indexed outcomes/reasons, objectives, constraints, starting theory, scope and criticism response; this is a disclosed application adapter. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-28"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:28 --> **L28** Declare the data interface ValuePosition. Represents an adopted option, selected option, option-indexed outcomes/reasons, objectives, constraints, starting theory, scope and criticism response; this is a disclosed application adapter.

<a id="line-code-leanified-corereader-evidence-lean-29"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:29 --> **L29** Supply the type of options among which this value position adopts one.

<a id="line-code-leanified-corereader-evidence-lean-30"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:30 --> **L30** Supply the outcome type used to interpret the effects of each option.

<a id="line-code-leanified-corereader-evidence-lean-31"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:31 --> **L31** Specify which option is adopted, separately from which option a world actually selects.

<a id="line-code-leanified-corereader-evidence-lean-32"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:32 --> **L32** Read the actually selected option from each world.

<a id="line-code-leanified-corereader-evidence-lean-33"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:33 --> **L33** Interpret the actual outcome of each option at each world, rather than storing an arbitrary support label.

<a id="line-code-leanified-corereader-evidence-lean-34"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:34 --> **L34** State the adopted objective as a predicate on outcomes; its value authority is not proved by this field.

<a id="line-code-leanified-corereader-evidence-lean-35"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:35 --> **L35** State the world- and option-specific constraints checked alongside the objective.

<a id="line-code-leanified-corereader-evidence-lean-36"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:36 --> **L36** Store the starting theory; JointAdoption will require it to share a real model with adoption and reasons.

<a id="line-code-leanified-corereader-evidence-lean-37"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:37 --> **L37** Store reasons parameterized by both world and option, so switching the adopted option changes the assessed reasons.

<a id="line-code-leanified-corereader-evidence-lean-38"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:38 --> **L38** Specify the scope within which this value-assessment procedure claims its conclusions.

<a id="line-code-leanified-corereader-evidence-lean-39"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:39 --> **L39** Identify which worlds present relevant criticism; this is an explicit application predicate.

<a id="line-code-leanified-corereader-evidence-lean-40"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:40 --> **L40** Store an optional textual response at each world; its presence does not prove that the criticism is answered adequately.

<a id="line-code-leanified-corereader-evidence-lean-41"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:41 --> **L41** Document the intended scope of ValuePosition.commitment. The corresponding declaration concerns: The commitment claim says the world selects this position's adopted option; it is no longer a freely relabeled separate claim field. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-42"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:42 --> **L42** Define ValuePosition.commitment. The commitment claim says the world selects this position's adopted option; it is no longer a freely relabeled separate claim field.

<a id="line-code-leanified-corereader-evidence-lean-43"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:43 --> **L43** Derive the commitment claim by equating actual selection with this very adopted option.

<a id="line-code-leanified-corereader-evidence-lean-44"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:44 --> **L44** Document the intended scope of ValuePosition.consequence. The corresponding declaration concerns: Checks this adopted option's modeled outcome against its objective and constraints. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-45"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:45 --> **L45** Define ValuePosition.consequence. Checks this adopted option's modeled outcome against its objective and constraints.

<a id="line-code-leanified-corereader-evidence-lean-46"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:46 --> **L46** Derive the assessed consequence from this adopted option’s actual outcome satisfying the objective and its actual constraints.

<a id="line-code-leanified-corereader-evidence-lean-47"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:47 --> **L47** Document the intended scope of ValuePosition.activeReasons. The corresponding declaration concerns: Specializes every option-indexed reason to the adopted option for articulation. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-48"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:48 --> **L48** Define ValuePosition.activeReasons. Specializes every option-indexed reason to the adopted option for articulation.

<a id="line-code-leanified-corereader-evidence-lean-49"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:49 --> **L49** Specialize each option-indexed reason to the adopted option to produce its actual articulated world predicate.

<a id="line-code-leanified-corereader-evidence-lean-50"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:50 --> **L50** Document the intended scope of JointAdoption. The corresponding declaration concerns: Requires one world jointly modeling the starting theory, scope, actual adoption and all adopted-option reasons. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-51"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:51 --> **L51** Define JointAdoption. Requires one world jointly modeling the starting theory, scope, actual adoption and all adopted-option reasons.

<a id="line-code-leanified-corereader-evidence-lean-52"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:52 --> **L52** Require one common world for starting assumptions, application limits and actual adoption.

<a id="line-code-leanified-corereader-evidence-lean-53"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:53 --> **L53** At that same witness, require every listed reason for that adopted option to hold together.

<a id="line-code-leanified-corereader-evidence-lean-54"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:54 --> **L54** Document the intended scope of ValueProcedure. The corresponding declaration concerns: Requires nonempty reasons, a joint adoption witness, joint reasons supporting the option's consequence within starting assumptions/scope, and nonempty criticism responses. It does not prove ultimate value correctness. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-55"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:55 --> **L55** Define ValueProcedure. Requires nonempty reasons, a joint adoption witness, joint reasons supporting the option's consequence within starting assumptions/scope, and nonempty criticism responses. It does not prove ultimate value correctness.

<a id="line-code-leanified-corereader-evidence-lean-56"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:56 --> **L56** Begin ValueProcedure with nonempty reasons and the complete joint adoption witness.

<a id="line-code-leanified-corereader-evidence-lean-57"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:57 --> **L57** For every world satisfying the actual starting theory and limits, impose the following conditional consequence requirement.

<a id="line-code-leanified-corereader-evidence-lean-58"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:58 --> **L58** Use the conjunction of all reasons for the adopted option to imply its actual consequence; no individual-reason sufficiency requirement is imposed.

<a id="line-code-leanified-corereader-evidence-lean-59"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:59 --> **L59** Within limits, every relevant criticism must receive a specified nonempty response; this checks recorded response, not persuasiveness.

<a id="line-code-leanified-corereader-evidence-lean-60"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:60 --> **L60** Document the intended scope of Facet. The corresponding declaration concerns: Defines three distinct facet kinds with different discharge conditions. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-61"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:61 --> **L61** Declare the alternatives Facet. Defines three distinct facet kinds with different discharge conditions.

<a id="line-code-leanified-corereader-evidence-lean-62"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:62 --> **L62** An empirical facet stores actual test records together with its scope, conclusion and stated uncertainty predicate.

<a id="line-code-leanified-corereader-evidence-lean-63"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:63 --> **L63** An inferential facet stores its actual premise theory and the conclusion to be entailed from it.

<a id="line-code-leanified-corereader-evidence-lean-64"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:64 --> **L64** A value facet stores the entire option/outcome position, including its starting theory, reasons, limits and criticism response.

<a id="line-code-leanified-corereader-evidence-lean-65"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:65 --> **L65** Document the intended scope of Facet.claim. The corresponding declaration concerns: Extracts the target claim of a facet, using the commitment rather than consequence for a value facet. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-66"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:66 --> **L66** Define Facet.claim. Extracts the target claim of a facet, using the commitment rather than consequence for a value facet.

<a id="line-code-leanified-corereader-evidence-lean-67"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:67 --> **L67** Read the empirical facet’s own conclusion p as its claim; records, scope and uncertainty remain assessment inputs.

<a id="line-code-leanified-corereader-evidence-lean-68"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:68 --> **L68** Read the inferential facet’s own conclusion p as its claim, separately from its premise theory.

<a id="line-code-leanified-corereader-evidence-lean-69"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:69 --> **L69** The value facet’s claim is actual selection equaling its own adopted option, derived through v.commitment.

<a id="line-code-leanified-corereader-evidence-lean-70"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:70 --> **L70** Document the intended scope of FacetDischarged. The corresponding declaration concerns: Dispatches to a different check for each facet kind; these checks have different truth guarantees. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-71"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:71 --> **L71** Define FacetDischarged. Dispatches to a different check for each facet kind; these checks have different truth guarantees.

<a id="line-code-leanified-corereader-evidence-lean-72"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:72 --> **L72** Enter the empirical discharge case with this facet’s actual records, scope, conclusion p and uncertainty predicate.

<a id="line-code-leanified-corereader-evidence-lean-73"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:73 --> **L73** For an empirical facet, require a world compatible with its records and inside its scope, excluding an empty empirical domain.

<a id="line-code-leanified-corereader-evidence-lean-74"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:74 --> **L74** Require the records to support the scoped conclusion and the explicitly stated uncertainty predicate.

<a id="line-code-leanified-corereader-evidence-lean-75"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:75 --> **L75** Inferential discharge requires a nonempty model of the actual assumptions and semantic entailment of p from those same assumptions.

<a id="line-code-leanified-corereader-evidence-lean-76"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:76 --> **L76** Value discharge is exactly the declared ValueProcedure for that same position, not a proof of ultimate value adequacy.

<a id="line-code-leanified-corereader-evidence-lean-77"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:77 --> **L77** Document the intended scope of FacetArticulated. The corresponding declaration concerns: Requires articulation fields to match the facet's own assumptions, reasons and limits; concept strings are not constrained here. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-78"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:78 --> **L78** Define FacetArticulated. Requires articulation fields to match the facet's own assumptions, reasons and limits; concept strings are not constrained here.

<a id="line-code-leanified-corereader-evidence-lean-79"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:79 --> **L79** In the empirical articulation case, read the actual records and scope whose assumptions/reasons/limits must match.

<a id="line-code-leanified-corereader-evidence-lean-80"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:80 --> **L80** This empirical adapter equates articulated assumptions and reasons with actual record compatibility, and articulated limits with the empirical scope.

<a id="line-code-leanified-corereader-evidence-lean-81"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:81 --> **L81** In the inferential case, use this facet’s actual assumption theory as the articulation’s reference.

<a id="line-code-leanified-corereader-evidence-lean-82"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:82 --> **L82** This inferential adapter retains the exact premise theory, articulates its model condition as the reason, and uses unrestricted additional limits.

<a id="line-code-leanified-corereader-evidence-lean-83"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:83 --> **L83** Require value articulation to use exactly this position’s starting theory, adopted-option active reasons and limits.

<a id="line-code-leanified-corereader-evidence-lean-84"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:84 --> **L84** Document the intended scope of canonicalArticulation. The corresponding declaration concerns: Constructs field-aligned articulations by pattern matching; the fixed concept strings are descriptive labels. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-85"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:85 --> **L85** Define canonicalArticulation. Constructs field-aligned articulations by pattern matching; the fixed concept strings are descriptive labels.

<a id="line-code-leanified-corereader-evidence-lean-86"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:86 --> **L86** Construct the empirical canonical articulation from the actual record list and scope of the selected facet.

<a id="line-code-leanified-corereader-evidence-lean-87"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:87 --> **L87** Construct empirical articulation naming test outcomes and conditions, using the actual compatibility claim as its premise/reason and the original scope as its limit.

<a id="line-code-leanified-corereader-evidence-lean-88"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:88 --> **L88** Construct inferential canonical articulation from this facet’s actual premise theory.

<a id="line-code-leanified-corereader-evidence-lean-89"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:89 --> **L89** Construct inferential articulation from the same theory and its actual model predicate, with no extra limit.

<a id="line-code-leanified-corereader-evidence-lean-90"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:90 --> **L90** Construct the value articulation using the same complete position v.

<a id="line-code-leanified-corereader-evidence-lean-91"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:91 --> **L91** Construct value articulation from the actual starting theory, adopted-option reasons and original limits.

<a id="line-code-leanified-corereader-evidence-lean-92"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:92 --> **L92** Document the intended scope of canonicalFacetArticulated. The corresponding declaration concerns: Proves all canonical articulations have the required field alignment; no discharge hypothesis is needed for equality by construction. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-93"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:93 --> **L93** State the checked result canonicalFacetArticulated. Proves all canonical articulations have the required field alignment; no discharge hypothesis is needed for equality by construction.

<a id="line-code-leanified-corereader-evidence-lean-94"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:94 --> **L94** Assert that canonical articulation is semantically connected to this very facet; the proof checks each facet constructor.

<a id="line-code-leanified-corereader-evidence-lean-95"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:95 --> **L95** Split the three facet constructors; each canonical articulation has exactly the assumptions, reasons and limits required by its matching branch, so all three equalities are reflexive.

<a id="line-code-leanified-corereader-evidence-lean-96"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:96 --> **L96** Document the intended scope of canonicalArticulated. The corresponding declaration concerns: Given a discharged facet, proves its canonical concept/reason lists are nonempty. The value case uses the discharge premise's reason nonemptiness. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-97"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:97 --> **L97** State the checked result canonicalArticulated. Given a discharged facet, proves its canonical concept/reason lists are nonempty. The value case uses the discharge premise's reason nonemptiness.

<a id="line-code-leanified-corereader-evidence-lean-98"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:98 --> **L98** Given this facet’s discharge, require its canonical concepts and reasons to be nonempty.

<a id="line-code-leanified-corereader-evidence-lean-99"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:99 --> **L99** Check canonical articulation separately for empirical, inferential and value facets.

<a id="line-code-leanified-corereader-evidence-lean-100"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:100 --> **L100** In this empirical or inferential branch, the canonical concept and reason lists are explicitly nonempty; simplification verifies both articulation requirements.

<a id="line-code-leanified-corereader-evidence-lean-101"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:101 --> **L101** In this empirical or inferential branch, the canonical concept and reason lists are explicitly nonempty; simplification verifies both articulation requirements.

<a id="line-code-leanified-corereader-evidence-lean-102"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:102 --> **L102** For the value branch, the premise h is ValueProcedure v; its nonempty reasons must establish nonempty canonical active reasons.

<a id="line-code-leanified-corereader-evidence-lean-103"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:103 --> **L103** For a value facet, supply nonempty canonical concepts and leave the nonempty active-reason obligation.

<a id="line-code-leanified-corereader-evidence-lean-104"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:104 --> **L104** Use the discharged value procedure’s nonempty reasons; specializing them to the adopted option preserves nonemptiness.

<a id="line-code-leanified-corereader-evidence-lean-105"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:105 --> **L105** Document the intended scope of Grounds. The corresponding declaration concerns: Grounds packages a nonempty facet list, coverage of a supplied applicability predicate, common claim identity, articulation presence/alignment, and every listed facet's discharge. It is not uniformly a truth certificate for the claim. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-106"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:106 --> **L106** Begin provenance metadata for CoreReader.Evidence.Grounds; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-107"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:107 --> **L107** Register source unit organon.grounds#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-108"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:108 --> **L108** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-109"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:109 --> **L109** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-110"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:110 --> **L110** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-111"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:111 --> **L111** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-112"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:112 --> **L112** Define Grounds. Grounds packages a nonempty facet list, coverage of a supplied applicability predicate, common claim identity, articulation presence/alignment, and every listed facet's discharge. It is not uniformly a truth certificate for the claim.

<a id="line-code-leanified-corereader-evidence-lean-113"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:113 --> **L113** Take actualApplicable independently of the finite list, so coverage is an explicit obligation rather than inferred from list membership.

<a id="line-code-leanified-corereader-evidence-lean-114"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:114 --> **L114** Require a nonempty facet list and inclusion of every facet satisfying actualApplicable.

<a id="line-code-leanified-corereader-evidence-lean-115"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:115 --> **L115** For every listed facet, require the exact claim and a nonempty articulation belonging to that facet.

<a id="line-code-leanified-corereader-evidence-lean-116"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:116 --> **L116** Also require semantic matching to its actual premises/reasons/limits and discharge by its declared adapter.

<a id="line-code-leanified-corereader-evidence-lean-117"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:117 --> **L117** Document the intended scope of AchievementAccountability. The corresponding declaration concerns: Defines achievement accountability as exactly the same Grounds predicate, with no additional execution or achievement proof. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-118"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:118 --> **L118** Begin provenance metadata for CoreReader.Evidence.AchievementAccountability; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-119"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:119 --> **L119** Register source unit organon.charter.self-transcendence.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-120"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:120 --> **L120** Register source unit organon.charter.self-transcendence.limits#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-121"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:121 --> **L121** Register source unit organon.grounds#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-122"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:122 --> **L122** Register source unit organon.grounds.capabilities#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-123"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:123 --> **L123** Register source unit organon.grounds.capabilities#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-124"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:124 --> **L124** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-125"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:125 --> **L125** Define AchievementAccountability. Defines achievement accountability as exactly the same Grounds predicate, with no additional execution or achievement proof.

<a id="line-code-leanified-corereader-evidence-lean-126"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:126 --> **L126** Achievement accountability accepts the same actual-applicability predicate and facet list as Grounds.

<a id="line-code-leanified-corereader-evidence-lean-127"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:127 --> **L127** Define accountability directly by Grounds for the very achievement claim; no extra universal observation requirement is added.

<a id="line-code-leanified-corereader-evidence-lean-128"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:128 --> **L128** Document the intended scope of transitionAchievement. The corresponding declaration concerns: Defines achievement as understanding/construction expansion between the same modeled transition's before and after states. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-129"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:129 --> **L129** Define transitionAchievement. Defines achievement as understanding/construction expansion between the same modeled transition's before and after states.

<a id="line-code-leanified-corereader-evidence-lean-130"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:130 --> **L130** The achievement claim is actual expansion between the selected transition’s own before and after states.

<a id="line-code-leanified-corereader-evidence-lean-131"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:131 --> **L131** Document the intended scope of transitionPerformanceRecord. The corresponding declaration concerns: Tests whether that after-state contains successor actually returning one at the transition input, within the two-transition model. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-132"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:132 --> **L132** Define transitionPerformanceRecord. Tests whether that after-state contains successor actually returning one at the transition input, within the two-transition model.

<a id="line-code-leanified-corereader-evidence-lean-133"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:133 --> **L133** The performance test inspects operations actually constructed in this transition’s after-state.

<a id="line-code-leanified-corereader-evidence-lean-134"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:134 --> **L134** It records true only when successor is present and actually sends the shared transition input to 1.

<a id="line-code-leanified-corereader-evidence-lean-135"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:135 --> **L135** Document the intended scope of transitionReportRecord. The corresponding declaration concerns: Records only the report's announced operation/input/output, not its actual achievement. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-136"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:136 --> **L136** Define transitionReportRecord. Records only the report's announced operation/input/output, not its actual achievement.

<a id="line-code-leanified-corereader-evidence-lean-137"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:137 --> **L137** Begin a record whose test reads the actual transition’s announcement.

<a id="line-code-leanified-corereader-evidence-lean-138"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:138 --> **L138** Bind report to the announcement generated for this same transition.

<a id="line-code-leanified-corereader-evidence-lean-139"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:139 --> **L139** Test its stated successor, input 0 and expected output 1, recording a positive announcement independently of whether the operation exists.

<a id="line-code-leanified-corereader-evidence-lean-140"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:140 --> **L140** Document the intended scope of transitionPerformanceCompatible. The corresponding declaration concerns: Exhausts inflate/extend to show the actual performance record identifies extension. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-141"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:141 --> **L141** State the checked result transitionPerformanceCompatible. Exhausts inflate/extend to show the actual performance record identifies extension.

<a id="line-code-leanified-corereader-evidence-lean-142"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:142 --> **L142** Claim that matching the actual positive performance record is equivalent to selecting extend.

<a id="line-code-leanified-corereader-evidence-lean-143"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:143 --> **L143** Fix an arbitrary actual transition, either inflate or extend, for the record-compatibility equivalence.

<a id="line-code-leanified-corereader-evidence-lean-144"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:144 --> **L144** Prove both directions: performance compatibility implies extend, and extend supplies compatibility.

<a id="line-code-leanified-corereader-evidence-lean-145"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:145 --> **L145** Assume this transition matches the actual positive performance record.

<a id="line-code-leanified-corereader-evidence-lean-146"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:146 --> **L146** Apply compatibility to the actual singleton performance record to obtain its observed test result for this transition.

<a id="line-code-leanified-corereader-evidence-lean-147"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:147 --> **L147** Split the actual transition into inflate and extend, whose after-states have different operation content.

<a id="line-code-leanified-corereader-evidence-lean-148"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:148 --> **L148** The inflate state lacks successor, so its performance test cannot equal the recorded true outcome.

<a id="line-code-leanified-corereader-evidence-lean-149"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:149 --> **L149** The extend case has the required transition identity by reflexivity.

<a id="line-code-leanified-corereader-evidence-lean-150"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:150 --> **L150** For the reverse implication, substitute the assumption that the transition is extend.

<a id="line-code-leanified-corereader-evidence-lean-151"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:151 --> **L151** Membership in the singleton record list identifies the arbitrary record with this exact transition record; substitute it before checking its test.

<a id="line-code-leanified-corereader-evidence-lean-152"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:152 --> **L152** Evaluate the actual extend performance record; its successor-at-zero test equals the recorded true outcome.

<a id="line-code-leanified-corereader-evidence-lean-153"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:153 --> **L153** Document the intended scope of transitionSupported. The corresponding declaration concerns: Uses performance identification, the concrete new operation and report claim to establish transition expansion in every compatible case. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-154"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:154 --> **L154** State the checked result transitionSupported. Uses performance identification, the concrete new operation and report claim to establish transition expansion in every compatible case. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-155"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:155 --> **L155** Take an arbitrary transition and its compatibility with the actual performance record; prove expansion for that same transition.

<a id="line-code-leanified-corereader-evidence-lean-156"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:156 --> **L156** Use transitionPerformanceCompatible to identify every performance-compatible transition as extend.

<a id="line-code-leanified-corereader-evidence-lean-157"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:157 --> **L157** Substitute extend for the transition, so the remaining achievement claim concerns its real extended after-state.

<a id="line-code-leanified-corereader-evidence-lean-158"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:158 --> **L158** Check the same system-generated extend report against its actual before/after states: successor is newly constructed and sends input 0 to output 1.

<a id="line-code-leanified-corereader-evidence-lean-159"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:159 --> **L159** Check the same system-generated extend report against its actual before/after states: successor is newly constructed and sends input 0 to output 1.

<a id="line-code-leanified-corereader-evidence-lean-160"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:160 --> **L160** Check the same system-generated extend report against its actual before/after states: successor is newly constructed and sends input 0 to output 1.

<a id="line-code-leanified-corereader-evidence-lean-161"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:161 --> **L161** Apply announcementClaimImpliesExpansion to the verified report content to obtain the same transition’s Expanded claim.

<a id="line-code-leanified-corereader-evidence-lean-162"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:162 --> **L162** Document the intended scope of transitionFacet. The corresponding declaration concerns: Packages the performance record, input-zero scope and exact expansion claim as an empirical facet. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-163"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:163 --> **L163** Define transitionFacet. Packages the performance record, input-zero scope and exact expansion claim as an empirical facet.

<a id="line-code-leanified-corereader-evidence-lean-164"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:164 --> **L164** Build an empirical facet from the performance record with the exact input-0 transition scope.

<a id="line-code-leanified-corereader-evidence-lean-165"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:165 --> **L165** Its conclusion is the same transition’s achievement; its uncertainty predicate is explicitly True.

<a id="line-code-leanified-corereader-evidence-lean-166"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:166 --> **L166** Document the intended scope of transitionFacetDischarged. The corresponding declaration concerns: Supplies extension as a nonempty witness, actual support and trivial uncertainty. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-167"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:167 --> **L167** State the checked result transitionFacetDischarged. Supplies extension as a nonempty witness, actual support and trivial uncertainty. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-168"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:168 --> **L168** Provide extend as the nonempty empirical witness with compatible performance evidence and the shared input-0 scope; leave scoped support and uncertainty checks.

<a id="line-code-leanified-corereader-evidence-lean-169"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:169 --> **L169** The already proved transition support supplies the achievement at any compatible transition, hence within the chosen scope.

<a id="line-code-leanified-corereader-evidence-lean-170"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:170 --> **L170** The explicitly unrestricted uncertainty predicate is True, so this adapter component is immediate; no quantitative uncertainty bound is inferred.

<a id="line-code-leanified-corereader-evidence-lean-171"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:171 --> **L171** Document the intended scope of transitionAccountable. The corresponding declaration concerns: Builds achievement Grounds with matching claim, scope, canonical articulation and discharged facet. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-172"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:172 --> **L172** State the checked result transitionAccountable. Builds achievement Grounds with matching claim, scope, canonical articulation and discharged facet.

<a id="line-code-leanified-corereader-evidence-lean-173"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:173 --> **L173** State accountability for the actual transition-achievement predicate with canonical articulation.

<a id="line-code-leanified-corereader-evidence-lean-174"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:174 --> **L174** Declare transitionFacet the only applicable facet and use precisely that singleton evidence package.

<a id="line-code-leanified-corereader-evidence-lean-175"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:175 --> **L175** Split accountability into nonempty facets, coverage of actual applicability, and matching articulated discharge for each included facet.

<a id="line-code-leanified-corereader-evidence-lean-176"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:176 --> **L176** The applicability assumption identifies the facet with the one prescribed facet, which belongs to the singleton list.

<a id="line-code-leanified-corereader-evidence-lean-177"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:177 --> **L177** Singleton membership identifies the current facet with the prescribed one; substitute it to check its exact claim and grounds.

<a id="line-code-leanified-corereader-evidence-lean-178"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:178 --> **L178** Assemble identical claim, nonempty canonical articulation, its semantic connection to this facet, and transitionFacetDischarged.

<a id="line-code-leanified-corereader-evidence-lean-179"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:179 --> **L179** Assemble identical claim, nonempty canonical articulation, its semantic connection to this facet, and transitionFacetDischarged.

<a id="line-code-leanified-corereader-evidence-lean-180"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:180 --> **L180** Document the intended scope of transitionReportCompatible. The corresponding declaration concerns: Shows both transition cases produce the same announced operation/input/output record. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-181"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:181 --> **L181** State the checked result transitionReportCompatible. Shows both transition cases produce the same announced operation/input/output record.

<a id="line-code-leanified-corereader-evidence-lean-182"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:182 --> **L182** State that this transition’s positive report record is compatible with the transition itself, including inflate.

<a id="line-code-leanified-corereader-evidence-lean-183"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:183 --> **L183** Membership in the singleton record list identifies the arbitrary record with this exact transition record; substitute it before checking its test.

<a id="line-code-leanified-corereader-evidence-lean-184"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:184 --> **L184** The report test only checks the actual positive announcement contents, which evaluate identically for either transition.

<a id="line-code-leanified-corereader-evidence-lean-185"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:185 --> **L185** Document the intended scope of transitionReportDoesNotSupport. The corresponding declaration concerns: Uses the inflated transition as a report-compatible non-achievement countermodel. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-186"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:186 --> **L186** State the checked result transitionReportDoesNotSupport. Uses the inflated transition as a report-compatible non-achievement countermodel.

<a id="line-code-leanified-corereader-evidence-lean-187"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:187 --> **L187** Require inflate to match the report while failing the same achievement predicate.

<a id="line-code-leanified-corereader-evidence-lean-188"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:188 --> **L188** Conclude that the positive report records therefore do not support the achievement over all compatible transitions.

<a id="line-code-leanified-corereader-evidence-lean-189"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:189 --> **L189** Unfold the inflate transition: both understood and constructed operation sets are unchanged, so no new-operation witness for Expanded exists.

<a id="line-code-leanified-corereader-evidence-lean-190"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:190 --> **L190** Unfold the inflate transition: both understood and constructed operation sets are unchanged, so no new-operation witness for Expanded exists.

<a id="line-code-leanified-corereader-evidence-lean-191"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:191 --> **L191** Combine positive-report compatibility with the false expansion claim at inflate; any claimed support applied there gives a contradiction.

<a id="line-code-leanified-corereader-evidence-lean-192"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:192 --> **L192** Document the intended scope of ConcreteAchievementExample. The corresponding declaration concerns: Combines same-object achievement accountability and supported extension with an unsupported inflation report, preserving before/after/input identities. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-193"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:193 --> **L193** Define ConcreteAchievementExample. Combines same-object achievement accountability and supported extension with an unsupported inflation report, preserving before/after/input identities.

<a id="line-code-leanified-corereader-evidence-lean-194"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:194 --> **L194** The concrete example includes actual accountability for the transition achievement.

<a id="line-code-leanified-corereader-evidence-lean-195"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:195 --> **L195** Its actual-applicability predicate and list identify the same single transition facet.

<a id="line-code-leanified-corereader-evidence-lean-196"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:196 --> **L196** Require extend to satisfy the actual performance observation.

<a id="line-code-leanified-corereader-evidence-lean-197"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:197 --> **L197** Require semantic support for the achievement and its truth at extend.

<a id="line-code-leanified-corereader-evidence-lean-198"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:198 --> **L198** Also retain the report-compatible inflate world in which this achievement is false.

<a id="line-code-leanified-corereader-evidence-lean-199"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:199 --> **L199** State the resulting failure of support from reports alone.

<a id="line-code-leanified-corereader-evidence-lean-200"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:200 --> **L200** For every transition, bind the report’s before state to the actual transition-before state.

<a id="line-code-leanified-corereader-evidence-lean-201"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:201 --> **L201** Bind its after state to that same transition’s actual after state.

<a id="line-code-leanified-corereader-evidence-lean-202"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:202 --> **L202** Bind the report input to the actual transition input and explicitly fix that condition to 0.

<a id="line-code-leanified-corereader-evidence-lean-203"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:203 --> **L203** Document the intended scope of concreteAchievementExample. The corresponding declaration concerns: Assembles the concrete performance support, reporting countermodel and exact state/input links. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-204"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:204 --> **L204** State the checked result concreteAchievementExample. Assembles the concrete performance support, reporting countermodel and exact state/input links. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-205"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:205 --> **L205** Assemble the actual achievement’s accountability, extend performance compatibility and semantic support in the concrete example.

<a id="line-code-leanified-corereader-evidence-lean-206"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:206 --> **L206** Apply that same support to the extend witness to establish actual expansion there.

<a id="line-code-leanified-corereader-evidence-lean-207"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:207 --> **L207** Include the report-compatible inflate counterexample and leave the same-before/after/input relationships.

<a id="line-code-leanified-corereader-evidence-lean-208"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:208 --> **L208** For either transition, all report-to-state and input-0 links hold by the definitions themselves.

<a id="line-code-leanified-corereader-evidence-lean-209"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:209 --> **L209** Document the intended scope of achievementNeedsSupport. The corresponding declaration concerns: Applies supplied compatible-world support to the arbitrary actual claim and separately includes the checked concrete transition example. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-210"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:210 --> **L210** Begin provenance metadata for CoreReader.Evidence.achievementNeedsSupport; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-211"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:211 --> **L211** Register source unit organon.charter.self-transcendence.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-212"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:212 --> **L212** Register source unit organon.charter.self-transcendence.limits#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-213"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:213 --> **L213** Register source unit organon.grounds#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-214"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:214 --> **L214** Register source unit organon.grounds.capabilities#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-215"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:215 --> **L215** Register source unit organon.grounds.capabilities#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-216"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:216 --> **L216** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-217"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:217 --> **L217** State the checked result achievementNeedsSupport. Applies supplied compatible-world support to the arbitrary actual claim and separately includes the checked concrete transition example.

<a id="line-code-leanified-corereader-evidence-lean-218"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:218 --> **L218** Assume the chosen actual world matches all records and those records already support the achievement.

<a id="line-code-leanified-corereader-evidence-lean-219"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:219 --> **L219** Conclude truth of the achievement at that actual world, together with the separately constructed concrete achievement example.

<a id="line-code-leanified-corereader-evidence-lean-220"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:220 --> **L220** Apply the assumed support to the actual evidence-compatible world, and pair that local truth with the separately proved concrete achievement example.

<a id="line-code-leanified-corereader-evidence-lean-221"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:221 --> **L221** Document the intended scope of supportWeakening. The corresponding declaration concerns: Preserves support when a supported claim implies a weaker claim at every world; it does not weaken the record set. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-222"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:222 --> **L222** Begin provenance metadata for CoreReader.Evidence.supportWeakening; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-223"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:223 --> **L223** Register source unit organon.grounds#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-224"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:224 --> **L224** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-225"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:225 --> **L225** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-226"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:226 --> **L226** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-227"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:227 --> **L227** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-228"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:228 --> **L228** State the checked result supportWeakening. Preserves support when a supported claim implies a weaker claim at every world; it does not weaken the record set.

<a id="line-code-leanified-corereader-evidence-lean-229"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:229 --> **L229** Assume support for p and a world-by-world implication from p to q; conclude support for q using the same records.

<a id="line-code-leanified-corereader-evidence-lean-230"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:230 --> **L230** At each compatible world w, first derive p using the unchanged records, then apply the supplied implication weaker to obtain q.

<a id="line-code-leanified-corereader-evidence-lean-231"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:231 --> **L231** Document the intended scope of evidenceWeakeningCanLoseSupport. The corresponding declaration concerns: Provides a true Boolean observation supporting equality to true and shows deleting that record loses this support. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-232"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:232 --> **L232** State the checked result evidenceWeakeningCanLoseSupport. Provides a true Boolean observation supporting equality to true and shows deleting that record loses this support.

<a id="line-code-leanified-corereader-evidence-lean-233"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:233 --> **L233** The single identity observation supports that the Boolean world is true.

<a id="line-code-leanified-corereader-evidence-lean-234"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:234 --> **L234** Deleting that observation leaves empty records, which do not support the unchanged claim.

<a id="line-code-leanified-corereader-evidence-lean-235"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:235 --> **L235** Split the supported one-record claim from the failure of the same claim after deleting that record.

<a id="line-code-leanified-corereader-evidence-lean-236"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:236 --> **L236** Read the informative identity test from compatibility; it directly states that the Boolean world is true.

<a id="line-code-leanified-corereader-evidence-lean-237"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:237 --> **L237** With no records, false is compatible; evaluating purported support there refutes the unchanged true-world claim.

<a id="line-code-leanified-corereader-evidence-lean-238"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:238 --> **L238** Document the intended scope of scopeRestriction. The corresponding declaration concerns: Restricts a universally supported property from a wider input domain to an included narrower domain, for arbitrary world and input types. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-239"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:239 --> **L239** Begin provenance metadata for CoreReader.Evidence.scopeRestriction; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-240"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:240 --> **L240** Register source unit organon.grounds#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-241"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:241 --> **L241** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-242"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:242 --> **L242** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-243"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:243 --> **L243** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-244"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:244 --> **L244** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-245"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:245 --> **L245** State the checked result scopeRestriction. Restricts a universally supported property from a wider input domain to an included narrower domain, for arbitrary world and input types.

<a id="line-code-leanified-corereader-evidence-lean-246"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:246 --> **L246** Take broad and narrow application domains and assume every narrow-domain input is in the broad domain.

<a id="line-code-leanified-corereader-evidence-lean-247"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:247 --> **L247** Assume the same records support p at every input in the broad domain.

<a id="line-code-leanified-corereader-evidence-lean-248"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:248 --> **L248** Conclude support at every input in the narrower domain; neither the evidence nor predicate p changes.

<a id="line-code-leanified-corereader-evidence-lean-249"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:249 --> **L249** For a compatible world and narrow-domain input x, included converts narrow membership to broad membership; apply the original broad support there.

<a id="line-code-leanified-corereader-evidence-lean-250"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:250 --> **L250** Document the intended scope of Duties. The corresponding declaration concerns: Requires every facet satisfying the supplied applicability predicate to be discharged. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-251"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:251 --> **L251** Define Duties. Requires every facet satisfying the supplied applicability predicate to be discharged.

<a id="line-code-leanified-corereader-evidence-lean-252"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:252 --> **L252** Require every actually applicable facet to pass its own discharge condition.

<a id="line-code-leanified-corereader-evidence-lean-253"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:253 --> **L253** Define LabeledDuties. Defines labeled duties by ignoring all labels and keeping only the applicability-based duties.

<a id="line-code-leanified-corereader-evidence-lean-254"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:254 --> **L254** Define labeled duties by exactly the original applicability duties; the labels supply no waiver.

<a id="line-code-leanified-corereader-evidence-lean-255"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:255 --> **L255** Document the intended scope of assessmentUnion. The corresponding declaration concerns: Proves that discharging the union of two applicability predicates is equivalent to discharging each separately. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-256"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:256 --> **L256** Begin provenance metadata for CoreReader.Evidence.assessmentUnion; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-257"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:257 --> **L257** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-258"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:258 --> **L258** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-259"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:259 --> **L259** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-260"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:260 --> **L260** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-261"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:261 --> **L261** State the checked result assessmentUnion. Proves that discharging the union of two applicability predicates is equivalent to discharging each separately.

<a id="line-code-leanified-corereader-evidence-lean-262"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:262 --> **L262** Equate duties for the union of two applicability predicates with fulfillment of both sets of duties.

<a id="line-code-leanified-corereader-evidence-lean-263"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:263 --> **L263** Prove both directions between duty on the union applicability predicate and simultaneous duties on its two components.

<a id="line-code-leanified-corereader-evidence-lean-264"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:264 --> **L264** Restrict the union duty to each applicable-facet predicate using the matching disjunction injection.

<a id="line-code-leanified-corereader-evidence-lean-265"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:265 --> **L265** Unpack both duty sets, split actual applicability into its left/right case, and discharge that very facet using the corresponding duty.

<a id="line-code-leanified-corereader-evidence-lean-266"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:266 --> **L266** Document the intended scope of labelsCannotWaive. The corresponding declaration concerns: Proves changing labels cannot change duties because labels were ignored by definition; no external classification mechanism is analyzed. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-267"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:267 --> **L267** Begin provenance metadata for CoreReader.Evidence.labelsCannotWaive; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-268"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:268 --> **L268** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-269"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:269 --> **L269** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-270"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:270 --> **L270** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-271"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:271 --> **L271** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-272"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:272 --> **L272** State the checked result labelsCannotWaive. Proves changing labels cannot change duties because labels were ignored by definition; no external classification mechanism is analyzed.

<a id="line-code-leanified-corereader-evidence-lean-273"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:273 --> **L273** Changing only the label lists leaves the same duty proposition; the equivalence is reflexive.

<a id="line-code-leanified-corereader-evidence-lean-274"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:274 --> **L274** Document the intended scope of switchRecord. The corresponding declaration concerns: Records the identity Boolean test with observed value true. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-275"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:275 --> **L275** Define switchRecord. Records the identity Boolean test with observed value true.

<a id="line-code-leanified-corereader-evidence-lean-276"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:276 --> **L276** State the checked result switchCompatible. Proves compatibility with the single switch record is exactly equality of the world with true. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-277"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:277 --> **L277** Prove that compatibility with the singleton switch record is equivalent to the actual Boolean world being true.

<a id="line-code-leanified-corereader-evidence-lean-278"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:278 --> **L278** Apply record compatibility to the sole named test to recover its actual observed equality.

<a id="line-code-leanified-corereader-evidence-lean-279"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:279 --> **L279** Conversely, singleton membership identifies any listed record with this test, whose equality is the supplied observation premise.

<a id="line-code-leanified-corereader-evidence-lean-280"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:280 --> **L280** State the checked result switchSupported. Supports equality to true by extracting the previously proved compatibility equivalence. The supplied proof term uses the displayed constructed witnesses or earlier lemmas, rather than adding an axiom.

<a id="line-code-leanified-corereader-evidence-lean-281"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:281 --> **L281** Use switchCompatible’s forward implication to extract world=true from the same world’s actual record compatibility.

<a id="line-code-leanified-corereader-evidence-lean-282"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:282 --> **L282** Document the intended scope of optionBenefit. The corresponding declaration concerns: Assigns benefit 4 to selected=true and 0 otherwise. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-283"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:283 --> **L283** Define optionBenefit. Assigns benefit 4 to selected=true and 0 otherwise.

<a id="line-code-leanified-corereader-evidence-lean-284"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:284 --> **L284** Define optionCost. Assigns cost 3 to selected=true and 0 otherwise.

<a id="line-code-leanified-corereader-evidence-lean-285"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:285 --> **L285** Document the intended scope of optionReport. The corresponding declaration concerns: States option-specific cost and benefit facts rather than an unconnected reason flag. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-286"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:286 --> **L286** Define optionReport. States option-specific cost and benefit facts rather than an unconnected reason flag.

<a id="line-code-leanified-corereader-evidence-lean-287"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:287 --> **L287** The option report asserts actual cost at most 3 and the option-specific benefit of 4 for on or 0 for off.

<a id="line-code-leanified-corereader-evidence-lean-288"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:288 --> **L288** Document the intended scope of switchPosition. The corresponding declaration concerns: Adopts true with actual option cost/benefit outcomes, cost-below-benefit objective, budget constraint and a scoped criticism response. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-289"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:289 --> **L289** Define switchPosition. Adopts true with actual option cost/benefit outcomes, cost-below-benefit objective, budget constraint and a scoped criticism response.

<a id="line-code-leanified-corereader-evidence-lean-290"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:290 --> **L290** Use Boolean options for on/off.

<a id="line-code-leanified-corereader-evidence-lean-291"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:291 --> **L291** Represent each outcome as actual benefit and cost in a natural-number pair.

<a id="line-code-leanified-corereader-evidence-lean-292"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:292 --> **L292** Adopt the on option explicitly; adoption itself is not derived from arithmetic.

<a id="line-code-leanified-corereader-evidence-lean-293"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:293 --> **L293** Read the actual selected option directly from the Boolean world.

<a id="line-code-leanified-corereader-evidence-lean-294"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:294 --> **L294** Compute benefit and cost from this same actual option.

<a id="line-code-leanified-corereader-evidence-lean-295"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:295 --> **L295** Adopt the objective that actual benefit strictly exceeds actual cost.

<a id="line-code-leanified-corereader-evidence-lean-296"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:296 --> **L296** Check the actual option cost against the fixed budget 3.

<a id="line-code-leanified-corereader-evidence-lean-297"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:297 --> **L297** Assume the actual Boolean selection is on; do not insert the assessed benefit conclusion into the starting theory.

<a id="line-code-leanified-corereader-evidence-lean-298"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:298 --> **L298** Use the option-indexed actual cost/benefit report as the sole reason.

<a id="line-code-leanified-corereader-evidence-lean-299"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:299 --> **L299** Use an unrestricted world scope in this example; starting assumptions and reason content still constrain the procedure.

<a id="line-code-leanified-corereader-evidence-lean-300"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:300 --> **L300** Mark the off-selected world as a relevant criticism case.

<a id="line-code-leanified-corereader-evidence-lean-301"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:301 --> **L301** Provide distinct nonempty messages for the two worlds, including budget reconsideration in the criticism case.

<a id="line-code-leanified-corereader-evidence-lean-302"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:302 --> **L302** State the checked result switchValueProcedure. Provides a consistent adoption witness and derives the adopted option's objective/constraint from its actual cost-benefit reason; both Boolean responses are checked. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-303"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:303 --> **L303** Separate nonempty reasons, a joint adoption witness, consequence support by all reasons, and response to criticism for switchPosition.

<a id="line-code-leanified-corereader-evidence-lean-304"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:304 --> **L304** Choose world true, satisfying the starting selection, unrestricted limit and adopted option, and leave its actual reason to check.

<a id="line-code-leanified-corereader-evidence-lean-305"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:305 --> **L305** Take any reason in switchPosition’s list; the next step identifies its actual optionReport content at the adopted on witness.

<a id="line-code-leanified-corereader-evidence-lean-306"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:306 --> **L306** Singleton membership identifies the arbitrary reason with optionReport specialized to this position’s adopted option; substitute that actual reason.

<a id="line-code-leanified-corereader-evidence-lean-307"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:307 --> **L307** Singleton membership identifies the arbitrary reason with optionReport specialized to this position’s adopted option; substitute that actual reason.

<a id="line-code-leanified-corereader-evidence-lean-308"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:308 --> **L308** Check that the adopted on option meets its recorded cost bound and its stated benefit value.

<a id="line-code-leanified-corereader-evidence-lean-309"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:309 --> **L309** For an arbitrary world in the stated starting/limit conditions, assume the entire active-reason conjunction.

<a id="line-code-leanified-corereader-evidence-lean-310"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:310 --> **L310** Extract the actual optionReport reason from that conjunction, rather than introducing an independent support label.

<a id="line-code-leanified-corereader-evidence-lean-311"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:311 --> **L311** Unfold which option is adopted: this evidence concerns the on option.

<a id="line-code-leanified-corereader-evidence-lean-312"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:312 --> **L312** Use the reported benefit equality to prove the on option’s benefit exceeds 3.

<a id="line-code-leanified-corereader-evidence-lean-313"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:313 --> **L313** Combine cost ≤ 3 with benefit > 3 to prove cost < benefit, and retain the same cost bound as the constraint.

<a id="line-code-leanified-corereader-evidence-lean-314"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:314 --> **L314** Check both Boolean worlds to provide the recorded nonempty criticism response where required.

<a id="line-code-leanified-corereader-evidence-lean-315"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:315 --> **L315** Document the intended scope of oppositePosition. The corresponding declaration concerns: Changes the adopted option to false and updates its starting selection while retaining the same outcome model and objective. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-316"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:316 --> **L316** Define oppositePosition. Changes the adopted option to false and updates its starting selection while retaining the same outcome model and objective.

<a id="line-code-leanified-corereader-evidence-lean-317"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:317 --> **L317** Change both adopted option and starting selection to off while retaining the same actual outcome/reason interpretation.

<a id="line-code-leanified-corereader-evidence-lean-318"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:318 --> **L318** Document the intended scope of oppositePositionRejected. The corresponding declaration concerns: Shows false can be jointly adopted but fails the unchanged cost-below-benefit objective, so its value procedure is rejected. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-319"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:319 --> **L319** State the checked result oppositePositionRejected. Shows false can be jointly adopted but fails the unchanged cost-below-benefit objective, so its value procedure is rejected. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-320"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:320 --> **L320** Construct an actual joint adoption witness for the opposite off position at world false; the rejection will therefore not rely on an empty domain.

<a id="line-code-leanified-corereader-evidence-lean-321"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:321 --> **L321** Construct an actual joint adoption witness for the opposite off position at world false; the rejection will therefore not rely on an empty domain.

<a id="line-code-leanified-corereader-evidence-lean-322"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:322 --> **L322** For the opposite position’s false-world witness, take any listed reason before checking that off option’s actual report.

<a id="line-code-leanified-corereader-evidence-lean-323"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:323 --> **L323** Singleton membership identifies the arbitrary reason with optionReport specialized to this position’s adopted option; substitute that actual reason.

<a id="line-code-leanified-corereader-evidence-lean-324"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:324 --> **L324** Singleton membership identifies the arbitrary reason with optionReport specialized to this position’s adopted option; substitute that actual reason.

<a id="line-code-leanified-corereader-evidence-lean-325"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:325 --> **L325** The off option’s own report is true: its zero cost is within the bound and its zero benefit matches the stated report.

<a id="line-code-leanified-corereader-evidence-lean-326"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:326 --> **L326** Retain the nonempty joint witness and separately refute fulfillment of the opposite value procedure.

<a id="line-code-leanified-corereader-evidence-lean-327"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:327 --> **L327** Assume the opposite off position satisfies its entire ValueProcedure, to derive a contradiction with its zero-benefit outcome.

<a id="line-code-leanified-corereader-evidence-lean-328"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:328 --> **L328** Assemble all of the opposite position’s reasons at its actual false-world witness before applying any consequence requirement.

<a id="line-code-leanified-corereader-evidence-lean-329"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:329 --> **L329** Take any actual reason of the opposite position to assemble all reasons at its inhabited false-world counterexample.

<a id="line-code-leanified-corereader-evidence-lean-330"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:330 --> **L330** Singleton membership identifies the arbitrary reason with optionReport specialized to this position’s adopted option; substitute that actual reason.

<a id="line-code-leanified-corereader-evidence-lean-331"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:331 --> **L331** Singleton membership identifies the arbitrary reason with optionReport specialized to this position’s adopted option; substitute that actual reason.

<a id="line-code-leanified-corereader-evidence-lean-332"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:332 --> **L332** The off option’s own report is true: its zero cost is within the bound and its zero benefit matches the stated report.

<a id="line-code-leanified-corereader-evidence-lean-333"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:333 --> **L333** Apply the assumed opposite procedure’s joint-reason consequence clause to that same starting/limit witness and all its actual reasons.

<a id="line-code-leanified-corereader-evidence-lean-334"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:334 --> **L334** Its purported objective would require the off option’s zero cost to be strictly less than its zero benefit, contradicting irreflexivity.

<a id="line-code-leanified-corereader-evidence-lean-335"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:335 --> **L335** Document the intended scope of contradictoryStartingPosition. The corresponding declaration concerns: Replaces the starting theory with a false singleton, eliminating every joint adoption witness. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-336"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:336 --> **L336** Define contradictoryStartingPosition. Replaces the starting theory with a false singleton, eliminating every joint adoption witness.

<a id="line-code-leanified-corereader-evidence-lean-337"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:337 --> **L337** Replace the starting theory with the impossible singleton claim False.

<a id="line-code-leanified-corereader-evidence-lean-338"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:338 --> **L338** Define impossibleAdoptionPosition. Always selects false while retaining adoption of true, making joint adoption impossible.

<a id="line-code-leanified-corereader-evidence-lean-339"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:339 --> **L339** Keep the adopted on option but make every actual selection off, making joint adoption impossible.

<a id="line-code-leanified-corereader-evidence-lean-340"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:340 --> **L340** Document the intended scope of inadmissibleValuePositionsRejected. The corresponding declaration concerns: Rejects both inconsistent starting theory and impossible adoption via the required witness. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-341"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:341 --> **L341** State the checked result inadmissibleValuePositionsRejected. Rejects both inconsistent starting theory and impossible adoption via the required witness.

<a id="line-code-leanified-corereader-evidence-lean-342"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:342 --> **L342** Reject the procedures for contradictory starting assumptions and impossible actual adoption separately.

<a id="line-code-leanified-corereader-evidence-lean-343"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:343 --> **L343** Separate rejection of the contradictory starting theory from rejection of the impossible selected/adopted combination.

<a id="line-code-leanified-corereader-evidence-lean-344"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:344 --> **L344** Extract a joint adoption witness from the alleged procedure for the contradictory starting position.

<a id="line-code-leanified-corereader-evidence-lean-345"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:345 --> **L345** The singleton starting theory requires False at that witness, directly contradicting its model proof.

<a id="line-code-leanified-corereader-evidence-lean-346"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:346 --> **L346** Extract the adoption equality from the alleged joint witness for the impossible selected/adopted combination.

<a id="line-code-leanified-corereader-evidence-lean-347"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:347 --> **L347** The required adoption equality equates distinct Boolean options, so this witness cannot exist.

<a id="line-code-leanified-corereader-evidence-lean-348"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:348 --> **L348** Document the intended scope of unsupportedPosition. The corresponding declaration concerns: Copies the switch value position but deletes its reasons, guaranteeing procedural failure. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-349"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:349 --> **L349** Define unsupportedPosition. Copies the switch value position but deletes its reasons, guaranteeing procedural failure.

<a id="line-code-leanified-corereader-evidence-lean-350"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:350 --> **L350** Define switchEmpirical. Builds an empirical facet concluding the Boolean world is true from the switch record, with unrestricted scope and trivially true uncertainty.

<a id="line-code-leanified-corereader-evidence-lean-351"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:351 --> **L351** Use the actual switch observation, unrestricted scope and same selected-on claim; uncertainty is explicitly True.

<a id="line-code-leanified-corereader-evidence-lean-352"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:352 --> **L352** State the checked result switchEmpiricalDischarged. Discharges that empirical facet with a true-world witness, semantic support, and trivial uncertainty. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-353"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:353 --> **L353** Use true as a nonempty world compatible with the switch record and unrestricted empirical scope.

<a id="line-code-leanified-corereader-evidence-lean-354"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:354 --> **L354** The same switch record’s semantic support proves the scoped switch claim at each compatible world.

<a id="line-code-leanified-corereader-evidence-lean-355"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:355 --> **L355** Discharge the explicitly trivial uncertainty predicate, without adding an empirical confidence claim.

<a id="line-code-leanified-corereader-evidence-lean-356"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:356 --> **L356** Document the intended scope of mixedMissingResponsibility. The corresponding declaration concerns: Shows a discharged empirical facet does not discharge a union of applicable facets when an included value facet has no reasons. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-357"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:357 --> **L357** Begin provenance metadata for CoreReader.Evidence.mixedMissingResponsibility; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-358"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:358 --> **L358** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-359"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:359 --> **L359** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-360"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:360 --> **L360** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-361"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:361 --> **L361** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-362"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:362 --> **L362** State the checked result mixedMissingResponsibility. Shows a discharged empirical facet does not discharge a union of applicable facets when an included value facet has no reasons.

<a id="line-code-leanified-corereader-evidence-lean-363"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:363 --> **L363** Retain successful discharge of the actual empirical switch facet.

<a id="line-code-leanified-corereader-evidence-lean-364"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:364 --> **L364** Deny all mixed duties even with empty labels, because the actual value facet also applies and lacks recorded reasons.

<a id="line-code-leanified-corereader-evidence-lean-365"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:365 --> **L365** Keep the valid empirical switch facet and separately refute completion of all mixed duties.

<a id="line-code-leanified-corereader-evidence-lean-366"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:366 --> **L366** Assume every actual mixed facet is discharged, including the value facet whose recorded reason list is empty.

<a id="line-code-leanified-corereader-evidence-lean-367"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:367 --> **L367** Select the value facet from the actual applicability union and extract its required nonempty reason-list condition.

<a id="line-code-leanified-corereader-evidence-lean-368"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:368 --> **L368** Its reason list is definitionally empty, contradicting only that recorded procedural requirement.

<a id="line-code-leanified-corereader-evidence-lean-369"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:369 --> **L369** Document the intended scope of uninformativeArgument. The corresponding declaration concerns: Constructs a nonempty articulation with no assumptions and a tautological reason; it carries no information about the switch conclusion. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-370"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:370 --> **L370** Define uninformativeArgument. Constructs a nonempty articulation with no assumptions and a tautological reason; it carries no information about the switch conclusion.

<a id="line-code-leanified-corereader-evidence-lean-371"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:371 --> **L371** Articulate a switch concept with empty assumptions and a True reason; these nonempty words do not constrain the switch world.

<a id="line-code-leanified-corereader-evidence-lean-372"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:372 --> **L372** Begin provenance metadata for CoreReader.Evidence.articulationNotSupport; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-373"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:373 --> **L373** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-374"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:374 --> **L374** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-375"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:375 --> **L375** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-376"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:376 --> **L376** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-377"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:377 --> **L377** State the checked result articulationNotSupport. Proves this articulation passes the nonemptiness check while its assumptions do not entail that the world is true.

<a id="line-code-leanified-corereader-evidence-lean-378"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:378 --> **L378** The uninformative articulation’s actual assumptions do not entail that the world is true.

<a id="line-code-leanified-corereader-evidence-lean-379"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:379 --> **L379** Pair nonempty but uninformative concepts/reasons with the empty theory’s established failure to entail the switch claim.

<a id="line-code-leanified-corereader-evidence-lean-380"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:380 --> **L380** Pair nonempty but uninformative concepts/reasons with the empty theory’s established failure to entail the switch claim.

<a id="line-code-leanified-corereader-evidence-lean-381"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:381 --> **L381** Document the intended scope of unrelatedArticulationRejected. The corresponding declaration concerns: Shows that a nonempty unrelated articulation and a discharged empirical facet need not align, and rejects this concrete pairing. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-382"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:382 --> **L382** State the checked result unrelatedArticulationRejected. Shows that a nonempty unrelated articulation and a discharged empirical facet need not align, and rejects this concrete pairing.

<a id="line-code-leanified-corereader-evidence-lean-383"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:383 --> **L383** Keep the unrelated articulation procedurally present and the switch facet actually discharged.

<a id="line-code-leanified-corereader-evidence-lean-384"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:384 --> **L384** Still reject semantic matching between that unrelated articulation and this empirical facet.

<a id="line-code-leanified-corereader-evidence-lean-385"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:385 --> **L385** Retain articulation and valid switch evidence, then separately test whether this unrelated articulation actually matches the facet.

<a id="line-code-leanified-corereader-evidence-lean-386"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:386 --> **L386** Assume the uninformative articulation semantically matches switchEmpirical, despite its empty premise theory.

<a id="line-code-leanified-corereader-evidence-lean-387"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:387 --> **L387** Evaluate the alleged equality of articulation assumptions and empirical compatibility assumptions on the compatibility claim itself.

<a id="line-code-leanified-corereader-evidence-lean-388"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:388 --> **L388** The empirical singleton contains that compatibility claim, while the unrelated empty theory cannot; the alleged equality yields False.

<a id="line-code-leanified-corereader-evidence-lean-389"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:389 --> **L389** Close this component of unrelatedArticulationRejected using the displayed local evidence or previously proved lemma; the component belongs to the following fixed result: Shows that a nonempty unrelated articulation and a discharged empirical facet need not align, and rejects this concrete pairing.

<a id="line-code-leanified-corereader-evidence-lean-390"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:390 --> **L390** Document the intended scope of temperatureRecord. The corresponding declaration concerns: Records only the first coordinate of a Boolean pair, observed as true; the second coordinate is unmeasured. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-391"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:391 --> **L391** Define temperatureRecord. Records only the first coordinate of a Boolean pair, observed as true; the second coordinate is unmeasured.

<a id="line-code-leanified-corereader-evidence-lean-392"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:392 --> **L392** State the checked result temperatureCompatible. Shows duplicating that record remains compatible with either second-coordinate value when the first is true.

<a id="line-code-leanified-corereader-evidence-lean-393"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:393 --> **L393** For any output coordinate b, repeated temperature records remain compatible with (true,b).

<a id="line-code-leanified-corereader-evidence-lean-394"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:394 --> **L394** For either output coordinate b, singleton-style membership in the repeated list selects the same temperature test; its observed first coordinate is true and leaves b unconstrained.

<a id="line-code-leanified-corereader-evidence-lean-395"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:395 --> **L395** For either output coordinate b, singleton-style membership in the repeated list selects the same temperature test; its observed first coordinate is true and leaves b unconstrained.

<a id="line-code-leanified-corereader-evidence-lean-396"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:396 --> **L396** For either output coordinate b, singleton-style membership in the repeated list selects the same temperature test; its observed first coordinate is true and leaves b unconstrained.

<a id="line-code-leanified-corereader-evidence-lean-397"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:397 --> **L397** For either output coordinate b, singleton-style membership in the repeated list selects the same temperature test; its observed first coordinate is true and leaves b unconstrained.

<a id="line-code-leanified-corereader-evidence-lean-398"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:398 --> **L398** Document the intended scope of BudgetWorld. The corresponding declaration concerns: Uses a Boolean action coordinate and natural-number budget as the world type. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-399"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:399 --> **L399** Introduce the type abbreviation BudgetWorld. Uses a Boolean action coordinate and natural-number budget as the world type.

<a id="line-code-leanified-corereader-evidence-lean-400"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:400 --> **L400** Document the intended scope of announcement. The corresponding declaration concerns: Defines a fixed declaration string; its content is not linked to budget. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-401"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:401 --> **L401** Define announcement. Defines a fixed declaration string; its content is not linked to budget.

<a id="line-code-leanified-corereader-evidence-lean-402"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:402 --> **L402** Define announcementPosition. Uses an action announcement as the sole option-indexed reason while requiring actual benefit/cost and available budget.

<a id="line-code-leanified-corereader-evidence-lean-403"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:403 --> **L403** Use Boolean options for on/off.

<a id="line-code-leanified-corereader-evidence-lean-404"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:404 --> **L404** Represent each outcome as actual benefit and cost in a natural-number pair.

<a id="line-code-leanified-corereader-evidence-lean-405"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:405 --> **L405** Adopt the on option explicitly; adoption itself is not derived from arithmetic.

<a id="line-code-leanified-corereader-evidence-lean-406"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:406 --> **L406** Read actual selection from the first coordinate while leaving budget independently variable.

<a id="line-code-leanified-corereader-evidence-lean-407"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:407 --> **L407** Compute benefit and cost from this same actual option.

<a id="line-code-leanified-corereader-evidence-lean-408"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:408 --> **L408** Adopt the objective that actual benefit strictly exceeds actual cost.

<a id="line-code-leanified-corereader-evidence-lean-409"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:409 --> **L409** Compare the adopted option’s actual cost with this world’s independently supplied budget.

<a id="line-code-leanified-corereader-evidence-lean-410"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:410 --> **L410** Fix selection to on without any affordability or budget assumption.

<a id="line-code-leanified-corereader-evidence-lean-411"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:411 --> **L411** Use the actual option-specific announcement text as the reason; it says nothing about available budget.

<a id="line-code-leanified-corereader-evidence-lean-412"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:412 --> **L412** Use an unrestricted world scope in this example; starting assumptions and reason content still constrain the procedure.

<a id="line-code-leanified-corereader-evidence-lean-413"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:413 --> **L413** Treat budget below 3 as relevant criticism of this cost-3 action.

<a id="line-code-leanified-corereader-evidence-lean-414"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:414 --> **L414** Record a nonempty message about reconsidering the action when cost exceeds budget.

<a id="line-code-leanified-corereader-evidence-lean-415"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:415 --> **L415** Document the intended scope of announcementHasJointAdoption. The corresponding declaration concerns: Constructs an action-true budget-zero world where the announcement reason holds; failure later is substantive, not absent adoption. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-416"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:416 --> **L416** State the checked result announcementHasJointAdoption. Constructs an action-true budget-zero world where the announcement reason holds; failure later is substantive, not absent adoption. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-417"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:417 --> **L417** Choose selected-on with budget 0 as a joint adoption witness; the starting theory fixes selection but does not assume affordability.

<a id="line-code-leanified-corereader-evidence-lean-418"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:418 --> **L418** Take an arbitrary announcement reason at the selected-on, zero-budget joint witness.

<a id="line-code-leanified-corereader-evidence-lean-419"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:419 --> **L419** Use membership to identify the actual reason as the option-indexed announcement text, then specialize it to the adopted on option.

<a id="line-code-leanified-corereader-evidence-lean-420"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:420 --> **L420** Use membership to identify the actual reason as the option-indexed announcement text, then specialize it to the adopted on option.

<a id="line-code-leanified-corereader-evidence-lean-421"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:421 --> **L421** Use membership to identify the actual reason as the option-indexed announcement text, then specialize it to the adopted on option.

<a id="line-code-leanified-corereader-evidence-lean-422"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:422 --> **L422** The actual announcement equals the on option’s activation text; this proves the announcement reason, not the budget constraint.

<a id="line-code-leanified-corereader-evidence-lean-423"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:423 --> **L423** Document the intended scope of announcementNotBudgetReason. The corresponding declaration concerns: At budget zero, the adopted action and true nonempty announcement reasons fail the real budget consequence, refuting the procedure. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-424"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:424 --> **L424** State the checked result announcementNotBudgetReason. At budget zero, the adopted action and true nonempty announcement reasons fail the real budget consequence, refuting the procedure.

<a id="line-code-leanified-corereader-evidence-lean-425"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:425 --> **L425** Require nonempty announcement reasons and actual adoption at selected-on with budget 0.

<a id="line-code-leanified-corereader-evidence-lean-426"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:426 --> **L426** At that same zero-budget world, all actual announcement reasons hold.

<a id="line-code-leanified-corereader-evidence-lean-427"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:427 --> **L427** Nevertheless reject the actual consequence and the whole value procedure.

<a id="line-code-leanified-corereader-evidence-lean-428"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:428 --> **L428** Assemble nonempty announcement reasons and the true announcement; refute the zero-budget consequence and leave failure of the whole procedure.

<a id="line-code-leanified-corereader-evidence-lean-429"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:429 --> **L429** For the claimed conjunction of reasons at budget 0, take any member of the actual announcement reason list.

<a id="line-code-leanified-corereader-evidence-lean-430"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:430 --> **L430** Use membership to identify the actual reason as the option-indexed announcement text, then specialize it to the adopted on option.

<a id="line-code-leanified-corereader-evidence-lean-431"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:431 --> **L431** Use membership to identify the actual reason as the option-indexed announcement text, then specialize it to the adopted on option.

<a id="line-code-leanified-corereader-evidence-lean-432"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:432 --> **L432** The actual announcement equals the on option’s activation text; this proves the announcement reason, not the budget constraint.

<a id="line-code-leanified-corereader-evidence-lean-433"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:433 --> **L433** Assume the announcement position satisfies ValueProcedure, to test its consequence clause at budget 0.

<a id="line-code-leanified-corereader-evidence-lean-434"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:434 --> **L434** Collect every announcement reason at the same selected-on, zero-budget world.

<a id="line-code-leanified-corereader-evidence-lean-435"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:435 --> **L435** To supply all reasons to that clause, take any announcement reason at the same zero-budget world.

<a id="line-code-leanified-corereader-evidence-lean-436"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:436 --> **L436** Use membership to identify the actual reason as the option-indexed announcement text, then specialize it to the adopted on option.

<a id="line-code-leanified-corereader-evidence-lean-437"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:437 --> **L437** Use membership to identify the actual reason as the option-indexed announcement text, then specialize it to the adopted on option.

<a id="line-code-leanified-corereader-evidence-lean-438"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:438 --> **L438** The actual announcement equals the on option’s activation text; this proves the announcement reason, not the budget constraint.

<a id="line-code-leanified-corereader-evidence-lean-439"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:439 --> **L439** Apply a hypothetical procedure to that inhabited zero-budget starting/limit case and its actual announcement reason.

<a id="line-code-leanified-corereader-evidence-lean-440"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:440 --> **L440** The resulting cost constraint would require cost 3 within budget 0, which is impossible.

<a id="line-code-leanified-corereader-evidence-lean-441"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:441 --> **L441** Document the intended scope of actionRecord. The corresponding declaration concerns: Records only the action Boolean, leaving budget completely unconstrained. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-442"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:442 --> **L442** Define actionRecord. Records only the action Boolean, leaving budget completely unconstrained.

<a id="line-code-leanified-corereader-evidence-lean-443"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:443 --> **L443** State the checked result actionCompatible. Shows two copies of the action record accept every budget when action=true. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-444"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:444 --> **L444** Every action record in the repeated list tests only the actual selected-on coordinate, so any supplied budget remains compatible.

<a id="line-code-leanified-corereader-evidence-lean-445"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:445 --> **L445** Document the intended scope of measurementRepeatNotSupport. The corresponding declaration concerns: Combines explicit countermodels showing that repeated measurement of one coordinate does not support an unmeasured coordinate or a budget consequence, and does not fix the announcement value procedure. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-446"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:446 --> **L446** Begin provenance metadata for CoreReader.Evidence.measurementRepeatNotSupport; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-447"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:447 --> **L447** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-448"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:448 --> **L448** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-449"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:449 --> **L449** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-450"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:450 --> **L450** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-451"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:451 --> **L451** State the checked result measurementRepeatNotSupport. Combines explicit countermodels showing that repeated measurement of one coordinate does not support an unmeasured coordinate or a budget consequence, and does not fix the announcement value procedure.

<a id="line-code-leanified-corereader-evidence-lean-452"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:452 --> **L452** The actual temperature test returns true even when the independent output coordinate is false.

<a id="line-code-leanified-corereader-evidence-lean-453"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:453 --> **L453** Retain this false-output world under repeated temperature observations.

<a id="line-code-leanified-corereader-evidence-lean-454"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:454 --> **L454** Also retain a true-output world under those same repeated observations.

<a id="line-code-leanified-corereader-evidence-lean-455"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:455 --> **L455** A single temperature record does not support the other output being true.

<a id="line-code-leanified-corereader-evidence-lean-456"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:456 --> **L456** Repeating that temperature record still does not support the other output being true.

<a id="line-code-leanified-corereader-evidence-lean-457"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:457 --> **L457** Repeated observed activation is compatible with selected-on and budget 0.

<a id="line-code-leanified-corereader-evidence-lean-458"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:458 --> **L458** The same repeated records are also compatible with budget 3.

<a id="line-code-leanified-corereader-evidence-lean-459"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:459 --> **L459** A single activation record does not support the option’s actual objective-and-budget consequence.

<a id="line-code-leanified-corereader-evidence-lean-460"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:460 --> **L460** Repeating activation records does not repair that lack of consequence support.

<a id="line-code-leanified-corereader-evidence-lean-461"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:461 --> **L461** The announcement-based value procedure also fails for that actual option and constraint.

<a id="line-code-leanified-corereader-evidence-lean-462"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:462 --> **L462** Record the observation’s actual true value and both temperature-compatible output alternatives; leave the unsupported output claims to refute.

<a id="line-code-leanified-corereader-evidence-lean-463"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:463 --> **L463** Keep both budget-0 and budget-3 action-compatible worlds and the established announcement-procedure failure; leave affordability support claims to refute.

<a id="line-code-leanified-corereader-evidence-lean-464"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:464 --> **L464** Assume a single temperature observation supports the independently represented second output being true.

<a id="line-code-leanified-corereader-evidence-lean-465"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:465 --> **L465** Apply purported one-record output support to (true,false), whose temperature observation is true but whose other output claim is false.

<a id="line-code-leanified-corereader-evidence-lean-466"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:466 --> **L466** Apply purported one-record output support to (true,false), whose temperature observation is true but whose other output claim is false.

<a id="line-code-leanified-corereader-evidence-lean-467"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:467 --> **L467** The same (true,false) counterworld remains compatible with repeated temperature records, defeating repeated-data output support.

<a id="line-code-leanified-corereader-evidence-lean-468"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:468 --> **L468** Assume a single action observation supports the adopted option’s benefit-and-budget consequence.

<a id="line-code-leanified-corereader-evidence-lean-469"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:469 --> **L469** A single observed activation is compatible with budget 0; purported consequence support there would force the impossible cost constraint.

<a id="line-code-leanified-corereader-evidence-lean-470"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:470 --> **L470** A single observed activation is compatible with budget 0; purported consequence support there would force the impossible cost constraint.

<a id="line-code-leanified-corereader-evidence-lean-471"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:471 --> **L471** Repeating activation records retains the same zero-budget counterworld, so it still does not support the actual affordability consequence.

<a id="line-code-leanified-corereader-evidence-lean-472"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:472 --> **L472** Document the intended scope of selfAssertionNotReason. The corresponding declaration concerns: Combines empty-reason and nonempty-but-budget-irrelevant self-assertion failures, with a joint adoption witness for the latter. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-473"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:473 --> **L473** Begin provenance metadata for CoreReader.Evidence.selfAssertionNotReason; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-474"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:474 --> **L474** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-475"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:475 --> **L475** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-476"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:476 --> **L476** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-477"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:477 --> **L477** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-478"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:478 --> **L478** State the checked result selfAssertionNotReason. Combines empty-reason and nonempty-but-budget-irrelevant self-assertion failures, with a joint adoption witness for the latter.

<a id="line-code-leanified-corereader-evidence-lean-479"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:479 --> **L479** The missing-reason position can be actually adopted yet fail its recorded procedure.

<a id="line-code-leanified-corereader-evidence-lean-480"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:480 --> **L480** The stronger announcement example has nonempty reasons and actual adoption at budget 0.

<a id="line-code-leanified-corereader-evidence-lean-481"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:481 --> **L481** Its actual consequence and its procedure still fail because the same adopted option exceeds budget.

<a id="line-code-leanified-corereader-evidence-lean-482"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:482 --> **L482** Retain an actual joint adoption witness, excluding an empty-starting-domain explanation of this failure.

<a id="line-code-leanified-corereader-evidence-lean-483"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:483 --> **L483** Prove unsupportedPosition.commitment true by reduction; a supposed ValueProcedure contradicts its empty reason list through its nonemptiness requirement.

<a id="line-code-leanified-corereader-evidence-lean-484"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:484 --> **L484** Reuse the nonempty actual announcement reasons and adoption equality from announcementNotBudgetReason.

<a id="line-code-leanified-corereader-evidence-lean-485"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:485 --> **L485** Also reuse failure of the same zero-budget consequence and of the entire announcement procedure.

<a id="line-code-leanified-corereader-evidence-lean-486"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:486 --> **L486** Retain announcementHasJointAdoption so this failure is not explained by an empty or inconsistent starting domain.

<a id="line-code-leanified-corereader-evidence-lean-487"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:487 --> **L487** Document the intended scope of valueWithoutSelfProof. The corresponding declaration concerns: Exhibits a coherent reasoned position not derivable from empty assumptions, and rejects opposite-option, inconsistent-start and impossible-adoption variants. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-488"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:488 --> **L488** Begin provenance metadata for CoreReader.Evidence.valueWithoutSelfProof; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-489"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:489 --> **L489** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-490"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:490 --> **L490** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-491"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:491 --> **L491** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-492"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:492 --> **L492** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-493"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:493 --> **L493** State the checked result valueWithoutSelfProof. Exhibits a coherent reasoned position not derivable from empty assumptions, and rejects opposite-option, inconsistent-start and impossible-adoption variants.

<a id="line-code-leanified-corereader-evidence-lean-494"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:494 --> **L494** Require the switch position’s actual starting theory to have a model.

<a id="line-code-leanified-corereader-evidence-lean-495"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:495 --> **L495** Deny derivation of its adopted commitment from the empty Boolean theory.

<a id="line-code-leanified-corereader-evidence-lean-496"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:496 --> **L496** The opposite position has a joint witness but fails consequence assessment.

<a id="line-code-leanified-corereader-evidence-lean-497"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:497 --> **L497** Also reject contradictory starting and impossible adoption variants, distinguishing non-self-derived from inconsistent starts.

<a id="line-code-leanified-corereader-evidence-lean-498"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:498 --> **L498** Combine the actual switch procedure, world true as its starting model, and non-entailment of the adopted claim from emptyTheory.

<a id="line-code-leanified-corereader-evidence-lean-499"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:499 --> **L499** Add rejection of the inhabited opposite option and the separate contradictory-start and impossible-adoption variants.

<a id="line-code-leanified-corereader-evidence-lean-500"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:500 --> **L500** Document the intended scope of BenefitCostWorld. The corresponding declaration concerns: Stores a selected Boolean option together with variable benefit and cost values. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-501"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:501 --> **L501** Introduce the type abbreviation BenefitCostWorld. Stores a selected Boolean option together with variable benefit and cost values.

<a id="line-code-leanified-corereader-evidence-lean-502"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:502 --> **L502** Define measuredOutcome. For true, returns the world's benefit/cost pair; false has outcome zero/zero.

<a id="line-code-leanified-corereader-evidence-lean-503"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:503 --> **L503** The on option reads the world’s actual benefit/cost pair; the off option yields (0,0).

<a id="line-code-leanified-corereader-evidence-lean-504"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:504 --> **L504** Define benefitReason. Requires the same option's measured benefit to equal four.

<a id="line-code-leanified-corereader-evidence-lean-505"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:505 --> **L505** The benefit reason requires the actual option’s measured benefit to equal 4.

<a id="line-code-leanified-corereader-evidence-lean-506"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:506 --> **L506** Define costReason. Requires that option's measured cost to be at most three.

<a id="line-code-leanified-corereader-evidence-lean-507"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:507 --> **L507** The cost reason requires the same option’s measured cost to be at most 3.

<a id="line-code-leanified-corereader-evidence-lean-508"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:508 --> **L508** Document the intended scope of jointReasonPosition. The corresponding declaration concerns: Uses two separate option-specific benefit and cost reasons jointly for the adopted option's objective and budget. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-509"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:509 --> **L509** Define jointReasonPosition. Uses two separate option-specific benefit and cost reasons jointly for the adopted option's objective and budget.

<a id="line-code-leanified-corereader-evidence-lean-510"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:510 --> **L510** Use Boolean options for on/off.

<a id="line-code-leanified-corereader-evidence-lean-511"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:511 --> **L511** Represent each outcome as actual benefit and cost in a natural-number pair.

<a id="line-code-leanified-corereader-evidence-lean-512"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:512 --> **L512** Adopt the on option explicitly; adoption itself is not derived from arithmetic.

<a id="line-code-leanified-corereader-evidence-lean-513"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:513 --> **L513** Read selection from the world’s first coordinate, separately from measured benefit and cost.

<a id="line-code-leanified-corereader-evidence-lean-514"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:514 --> **L514** Use measuredOutcome so the assessed option’s actual benefit and cost come from this world.

<a id="line-code-leanified-corereader-evidence-lean-515"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:515 --> **L515** Adopt the objective that actual benefit strictly exceeds actual cost.

<a id="line-code-leanified-corereader-evidence-lean-516"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:516 --> **L516** Require this option’s measured cost to be at most 3.

<a id="line-code-leanified-corereader-evidence-lean-517"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:517 --> **L517** Assume the selected option is on, without assuming benefit or cost conclusions.

<a id="line-code-leanified-corereader-evidence-lean-518"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:518 --> **L518** List benefitReason and costReason together; the procedure will use their conjunction.

<a id="line-code-leanified-corereader-evidence-lean-519"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:519 --> **L519** Use an unrestricted world scope in this example; starting assumptions and reason content still constrain the procedure.

<a id="line-code-leanified-corereader-evidence-lean-520"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:520 --> **L520** Identify an actual measured cost above 3 as relevant criticism.

<a id="line-code-leanified-corereader-evidence-lean-521"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:521 --> **L521** Record the nonempty response to reassess this option when its actual cost exceeds budget.

<a id="line-code-leanified-corereader-evidence-lean-522"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:522 --> **L522** Document the intended scope of jointReasonProcedure. The corresponding declaration concerns: Builds a joint witness at benefit four/cost three and combines both reasons to prove cost below benefit and within budget. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-523"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:523 --> **L523** State the checked result jointReasonProcedure. Builds a joint witness at benefit four/cost three and combines both reasons to prove cost below benefit and within budget. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-524"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:524 --> **L524** Separate the joint-reason position’s nonempty reasons, joint witness, conjunction-based consequence and criticism response.

<a id="line-code-leanified-corereader-evidence-lean-525"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:525 --> **L525** Use selected-on with benefit 4 and cost 3 as the common starting/limit/adoption witness.

<a id="line-code-leanified-corereader-evidence-lean-526"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:526 --> **L526** Take any of the two reasons at the actual (true,(4,3)) witness, then split membership to check each distinct reason.

<a id="line-code-leanified-corereader-evidence-lean-527"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:527 --> **L527** Expose the actual two-element reason list: benefitReason and costReason.

<a id="line-code-leanified-corereader-evidence-lean-528"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:528 --> **L528** Split reason membership into the benefit reason or the remaining singleton cost reason.

<a id="line-code-leanified-corereader-evidence-lean-529"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:529 --> **L529** Substitute the benefit reason and check that the witness’s measured benefit is exactly 4.

<a id="line-code-leanified-corereader-evidence-lean-530"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:530 --> **L530** Identify the remaining reason with costReason and substitute it.

<a id="line-code-leanified-corereader-evidence-lean-531"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:531 --> **L531** Identify the remaining reason with costReason and substitute it.

<a id="line-code-leanified-corereader-evidence-lean-532"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:532 --> **L532** Check the witness’s cost bound 3 ≤ 3 by reflexivity of the natural-number order.

<a id="line-code-leanified-corereader-evidence-lean-533"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:533 --> **L533** For an arbitrary admitted world, assume all active reasons together rather than requiring either reason alone to suffice.

<a id="line-code-leanified-corereader-evidence-lean-534"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:534 --> **L534** Extract the actual benefitReason from the reason conjunction at this world and adopted option.

<a id="line-code-leanified-corereader-evidence-lean-535"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:535 --> **L535** Extract costReason from the same conjunction at the same world and option.

<a id="line-code-leanified-corereader-evidence-lean-536"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:536 --> **L536** Unfold benefitReason: the adopted on option’s measured benefit equals 4.

<a id="line-code-leanified-corereader-evidence-lean-537"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:537 --> **L537** Unfold costReason: that same option’s measured cost is at most 3.

<a id="line-code-leanified-corereader-evidence-lean-538"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:538 --> **L538** Retain the actual cost constraint and leave only the strict benefit-over-cost objective.

<a id="line-code-leanified-corereader-evidence-lean-539"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:539 --> **L539** Rewrite the measured benefit to 4 and check that it exceeds 3.

<a id="line-code-leanified-corereader-evidence-lean-540"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:540 --> **L540** Compose cost ≤ 3 with 3 < benefit to establish cost < benefit using both reasons.

<a id="line-code-leanified-corereader-evidence-lean-541"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:541 --> **L541** For a world within limits where criticism is relevant, construct the required response about this option’s excessive cost.

<a id="line-code-leanified-corereader-evidence-lean-542"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:542 --> **L542** Provide the explicit nonempty response about reassessing the option when its cost exceeds the budget; this records a response, not its persuasive adequacy.

<a id="line-code-leanified-corereader-evidence-lean-543"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:543 --> **L543** Document the intended scope of JointReasonsExample. The corresponding declaration concerns: States that the joint procedure passes while either reason alone can hold at a world failing the consequence. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-544"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:544 --> **L544** Define JointReasonsExample. States that the joint procedure passes while either reason alone can hold at a world failing the consequence.

<a id="line-code-leanified-corereader-evidence-lean-545"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:545 --> **L545** Require the two-reason position to satisfy its complete ValueProcedure.

<a id="line-code-leanified-corereader-evidence-lean-546"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:546 --> **L546** Fix a benefit-only counterworld (true,(4,5)) satisfying the same starting assumptions and limits.

<a id="line-code-leanified-corereader-evidence-lean-547"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:547 --> **L547** At that world, actual adoption and the benefit reason both hold.

<a id="line-code-leanified-corereader-evidence-lean-548"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:548 --> **L548** Deny the assessed consequence there, because its actual cost is too high.

<a id="line-code-leanified-corereader-evidence-lean-549"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:549 --> **L549** Fix a cost-only counterworld (true,(0,3)) under the same starting assumptions and limits.

<a id="line-code-leanified-corereader-evidence-lean-550"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:550 --> **L550** At this world, actual adoption and the cost reason hold.

<a id="line-code-leanified-corereader-evidence-lean-551"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:551 --> **L551** Deny its assessed consequence because zero benefit does not exceed cost 3.

<a id="line-code-leanified-corereader-evidence-lean-552"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:552 --> **L552** State the checked result jointReasonsExample. Uses benefit four/cost five and benefit zero/cost three as counterexamples to individual-reason sufficiency. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-553"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:553 --> **L553** Begin the combined example with the already checked two-reason procedure.

<a id="line-code-leanified-corereader-evidence-lean-554"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:554 --> **L554** Supply the benefit-only counterworld with benefit 4 and cost 5, satisfying the same starting, limit and adoption conditions.

<a id="line-code-leanified-corereader-evidence-lean-555"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:555 --> **L555** Supply the cost-only counterworld with benefit 0 and cost 3 under the same conditions.

<a id="line-code-leanified-corereader-evidence-lean-556"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:556 --> **L556** The benefit-only world violates the cost constraint 5 ≤ 3; natural-number arithmetic closes the contradiction.

<a id="line-code-leanified-corereader-evidence-lean-557"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:557 --> **L557** The cost-only world cannot satisfy the strict objective 3 < 0; arithmetic closes this counterexample.

<a id="line-code-leanified-corereader-evidence-lean-558"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:558 --> **L558** Document the intended scope of heterogeneousReasons. The corresponding declaration concerns: Combines empirical, inferential and value examples with a genuine two-reason combination that neither reason alone establishes. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-559"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:559 --> **L559** Begin provenance metadata for CoreReader.Evidence.heterogeneousReasons; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-560"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:560 --> **L560** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-561"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:561 --> **L561** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-562"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:562 --> **L562** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-563"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:563 --> **L563** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-564"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:564 --> **L564** State the checked result heterogeneousReasons. Combines empirical, inferential and value examples with a genuine two-reason combination that neither reason alone establishes.

<a id="line-code-leanified-corereader-evidence-lean-565"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:565 --> **L565** Include the actually discharged empirical switch facet.

<a id="line-code-leanified-corereader-evidence-lean-566"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:566 --> **L566** Include an inferential facet whose satisfiable true-world premise entails the same true-world claim.

<a id="line-code-leanified-corereader-evidence-lean-567"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:567 --> **L567** Include the actual switch value procedure and the two-joint-reasons example in this registered theorem.

<a id="line-code-leanified-corereader-evidence-lean-568"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:568 --> **L568** Combine the checked empirical facet, an inhabited inferential singleton, the value procedure and the joint-reason counterexamples.

<a id="line-code-leanified-corereader-evidence-lean-569"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:569 --> **L569** For the inferential facet, its singleton premise directly yields the same true-world claim at any model.

<a id="line-code-leanified-corereader-evidence-lean-571"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:571 --> **L571** Document the intended scope of zeroRecord. The corresponding declaration concerns: Records only a function's Boolean output at natural-number input zero. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-572"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:572 --> **L572** Define zeroRecord. Records only a function's Boolean output at natural-number input zero.

<a id="line-code-leanified-corereader-evidence-lean-573"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:573 --> **L573** Define localGenerator. Produces a function returning true exactly at its natural-number seed.

<a id="line-code-leanified-corereader-evidence-lean-574"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:574 --> **L574** Document the intended scope of allTrue. The corresponding declaration concerns: Requires a Boolean-valued function to return true at every natural number. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-575"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:575 --> **L575** Define allTrue. Requires a Boolean-valued function to return true at every natural number.

<a id="line-code-leanified-corereader-evidence-lean-576"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:576 --> **L576** State the checked result zeroCompatible. Proves one zero-input record constrains exactly the function's value at zero. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-577"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:577 --> **L577** Prove both directions between matching zeroRecord and the actual function returning true at input 0.

<a id="line-code-leanified-corereader-evidence-lean-578"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:578 --> **L578** Apply record compatibility to the sole named test to recover its actual observed equality.

<a id="line-code-leanified-corereader-evidence-lean-579"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:579 --> **L579** Conversely, singleton membership identifies any listed record with this test, whose equality is the supplied observation premise.

<a id="line-code-leanified-corereader-evidence-lean-580"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:580 --> **L580** Document the intended scope of GeneratingProcess. The corresponding declaration concerns: Stores producer identity, the actual earlier predicate and the seed used by its revision algorithm. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-581"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:581 --> **L581** Declare the data interface GeneratingProcess. Stores producer identity, the actual earlier predicate and the seed used by its revision algorithm.

<a id="line-code-leanified-corereader-evidence-lean-582"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:582 --> **L582** Store the actual generating process owner identifier.

<a id="line-code-leanified-corereader-evidence-lean-583"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:583 --> **L583** Store the prior Boolean-valued function before this process generates its revision.

<a id="line-code-leanified-corereader-evidence-lean-584"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:584 --> **L584** Store the seed input used by this process’s actual local generator.

<a id="line-code-leanified-corereader-evidence-lean-585"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:585 --> **L585** Document the intended scope of GeneratingProcess.outputRevision. The corresponding declaration concerns: Preserves prior successes and adds the seed-selected input through the actual local generator. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-586"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:586 --> **L586** Define GeneratingProcess.outputRevision. Preserves prior successes and adds the seed-selected input through the actual local generator.

<a id="line-code-leanified-corereader-evidence-lean-587"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:587 --> **L587** The revised function preserves each true prior output or adds truth at the actual generated seed input.

<a id="line-code-leanified-corereader-evidence-lean-588"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:588 --> **L588** Document the intended scope of ProducedRevision. The corresponding declaration concerns: Stores producer plus exact before and after predicate objects. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-589"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:589 --> **L589** Declare the data interface ProducedRevision. Stores producer plus exact before and after predicate objects.

<a id="line-code-leanified-corereader-evidence-lean-590"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:590 --> **L590** Identify which owner produced this concrete revision object.

<a id="line-code-leanified-corereader-evidence-lean-591"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:591 --> **L591** Store the actual before-function of the revision.

<a id="line-code-leanified-corereader-evidence-lean-592"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:592 --> **L592** Store the actual after-function of the revision.

<a id="line-code-leanified-corereader-evidence-lean-593"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:593 --> **L593** Document the intended scope of GeneratingProcess.produce. The corresponding declaration concerns: Constructs this process's own revision with its owner and actual prior/output functions. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-594"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:594 --> **L594** Define GeneratingProcess.produce. Constructs this process's own revision with its owner and actual prior/output functions.

<a id="line-code-leanified-corereader-evidence-lean-595"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:595 --> **L595** Construct the revision directly from this process’s owner, prior function and computed output revision.

<a id="line-code-leanified-corereader-evidence-lean-596"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:596 --> **L596** Define sampleGeneratingProcess. Uses owner seventeen, an always-false prior predicate and seed zero.

<a id="line-code-leanified-corereader-evidence-lean-597"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:597 --> **L597** Document the intended scope of OwnedRevisionExample. The corresponding declaration concerns: Binds self-origin and exact before/after functions to a real zero-input change whose global claim lacks support. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-598"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:598 --> **L598** Define OwnedRevisionExample. Binds self-origin and exact before/after functions to a real zero-input change whose global claim lacks support.

<a id="line-code-leanified-corereader-evidence-lean-599"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:599 --> **L599** Bind the revision’s producer identifier to the actual generating process owner.

<a id="line-code-leanified-corereader-evidence-lean-600"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:600 --> **L600** Bind its before-function to this process’s actual prior function.

<a id="line-code-leanified-corereader-evidence-lean-601"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:601 --> **L601** Bind its after-function to this process’s actual outputRevision.

<a id="line-code-leanified-corereader-evidence-lean-602"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:602 --> **L602** Require actual change at input 0 from false before to true after.

<a id="line-code-leanified-corereader-evidence-lean-603"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:603 --> **L603** Retain an actual false output at input 1 after that revision.

<a id="line-code-leanified-corereader-evidence-lean-604"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:604 --> **L604** The actual produced after-function matches the input-0 observation.

<a id="line-code-leanified-corereader-evidence-lean-605"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:605 --> **L605** That record still does not support the all-input truth claim.

<a id="line-code-leanified-corereader-evidence-lean-606"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:606 --> **L606** Document the intended scope of ownedRevisionExample. The corresponding declaration concerns: Computes ownership/object links and uses the produced function's failure at one to refute universal support. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-607"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:607 --> **L607** State the checked result ownedRevisionExample. Computes ownership/object links and uses the produced function's failure at one to refute universal support. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-608"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:608 --> **L608** Check producer identity, prior/output revision relationships and actual sample values by computation; retain zero-record compatibility and leave universal support to refute.

<a id="line-code-leanified-corereader-evidence-lean-609"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:609 --> **L609** Assume zeroRecord supports allTrue, to refute it using this owner’s actual produced revision.

<a id="line-code-leanified-corereader-evidence-lean-610"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:610 --> **L610** Apply purported support to this owner’s actual produced after-function at input 1, where its revision still returns false.

<a id="line-code-leanified-corereader-evidence-lean-611"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:611 --> **L611** Eliminate the resulting false=true equality; the actual revision is an evidence-compatible counterexample.

<a id="line-code-leanified-corereader-evidence-lean-612"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:612 --> **L612** Document the intended scope of selfOriginDoesNotSupport. The corresponding declaration concerns: Retains the local observation countermodel and adds an actual owned before/after revision with the same unsupported global claim. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-613"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:613 --> **L613** Begin provenance metadata for CoreReader.Evidence.selfOriginDoesNotSupport; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-614"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:614 --> **L614** Register source unit organon.charter.reflexivity.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-615"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:615 --> **L615** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-616"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:616 --> **L616** State the checked result selfOriginDoesNotSupport. Retains the local observation countermodel and adds an actual owned before/after revision with the same unsupported global claim.

<a id="line-code-leanified-corereader-evidence-lean-617"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:617 --> **L617** Compute localGenerator 0 as true at 0 and false at 1.

<a id="line-code-leanified-corereader-evidence-lean-618"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:618 --> **L618** Require this generated function to match the same input-0 record.

<a id="line-code-leanified-corereader-evidence-lean-619"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:619 --> **L619** State failure of all-input support and include the concrete owner/prior/revision relationship example.

<a id="line-code-leanified-corereader-evidence-lean-620"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:620 --> **L620** Compute the generated function’s values at 0 and 1, give its zero-record compatibility, and include the owned revision relationship example.

<a id="line-code-leanified-corereader-evidence-lean-621"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:621 --> **L621** Assume the local zero observation entails true output at every input of every compatible function.

<a id="line-code-leanified-corereader-evidence-lean-622"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:622 --> **L622** Instantiate alleged universal support with localGenerator 0 and then input 1; compatibility at 0 did not constrain this failing input.

<a id="line-code-leanified-corereader-evidence-lean-623"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:623 --> **L623** Eliminate the resulting false=true equality; the actual revision is an evidence-compatible counterexample.

<a id="line-code-leanified-corereader-evidence-lean-624"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:624 --> **L624** Document the intended scope of localNotUniversal. The corresponding declaration concerns: Exhibits both a universally true function and a zero-only true function compatible with the same observation, with an explicit outside input; therefore the observation does not support universal truth. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-625"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:625 --> **L625** Begin provenance metadata for CoreReader.Evidence.localNotUniversal; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-626"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:626 --> **L626** Register source unit organon.grounds.scope#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-627"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:627 --> **L627** Register source unit organon.grounds.scope#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-628"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:628 --> **L628** Register source unit organon.grounds.scope#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-629"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:629 --> **L629** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-630"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:630 --> **L630** State the checked result localNotUniversal. Exhibits both a universally true function and a zero-only true function compatible with the same observation, with an explicit outside input; therefore the observation does not support universal truth.

<a id="line-code-leanified-corereader-evidence-lean-631"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:631 --> **L631** Require at least one natural-number input outside the observed singleton scope.

<a id="line-code-leanified-corereader-evidence-lean-632"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:632 --> **L632** The constant-true function matches the zero observation.

<a id="line-code-leanified-corereader-evidence-lean-633"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:633 --> **L633** The local generator also matches that same observation.

<a id="line-code-leanified-corereader-evidence-lean-634"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:634 --> **L634** The first function is universally true while the second is not.

<a id="line-code-leanified-corereader-evidence-lean-635"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:635 --> **L635** Therefore the shared observation does not support universal truth.

<a id="line-code-leanified-corereader-evidence-lean-636"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:636 --> **L636** Provide an input outside the observed scope and show both the constant-true function and local generator satisfy the same zero observation.

<a id="line-code-leanified-corereader-evidence-lean-637"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:637 --> **L637** The constant function is universally true; retain the known support counterexample and leave the local generator’s universal claim to refute.

<a id="line-code-leanified-corereader-evidence-lean-638"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:638 --> **L638** Evaluate any proposed all-input truth of the local generator at 1, where its actual result is false.

<a id="line-code-leanified-corereader-evidence-lean-639"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:639 --> **L639** Document the intended scope of hiddenDifference. The corresponding declaration concerns: Shows the two functions agree on the domain restricted to zero and disagree at one; local agreement does not establish global equality. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-640"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:640 --> **L640** Begin provenance metadata for CoreReader.Evidence.hiddenDifference; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-641"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:641 --> **L641** Register source unit organon.grounds.scope#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-642"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:642 --> **L642** Register source unit organon.grounds.scope#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-643"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:643 --> **L643** Register source unit organon.grounds.scope#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-644"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:644 --> **L644** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-645"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:645 --> **L645** State the checked result hiddenDifference. Shows the two functions agree on the domain restricted to zero and disagree at one; local agreement does not establish global equality.

<a id="line-code-leanified-corereader-evidence-lean-646"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:646 --> **L646** State equality of both functions only for inputs satisfying n=0.

<a id="line-code-leanified-corereader-evidence-lean-647"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:647 --> **L647** State their concrete output inequality at input 1.

<a id="line-code-leanified-corereader-evidence-lean-648"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:648 --> **L648** Separate agreement on the input-0 scope from the concrete output difference at input 1.

<a id="line-code-leanified-corereader-evidence-lean-649"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:649 --> **L649** Substitute n=0 from the scope premise; both functions then compute to true.

<a id="line-code-leanified-corereader-evidence-lean-650"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:650 --> **L650** Document the intended scope of singleObservation. The corresponding declaration concerns: A single zero-input observation is nonvacuously compatible and supports its local result but does not support the all-input claim. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-651"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:651 --> **L651** Begin provenance metadata for CoreReader.Evidence.singleObservation; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-652"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:652 --> **L652** Register source unit organon.grounds.scope#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-653"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:653 --> **L653** Register source unit organon.grounds.scope#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-654"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:654 --> **L654** Register source unit organon.grounds.scope#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-655"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:655 --> **L655** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-656"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:656 --> **L656** State the checked result singleObservation. A single zero-input observation is nonvacuously compatible and supports its local result but does not support the all-input claim.

<a id="line-code-leanified-corereader-evidence-lean-657"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:657 --> **L657** Require an actual function compatible with the single observation, preventing empty evidence semantics.

<a id="line-code-leanified-corereader-evidence-lean-658"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:658 --> **L658** That single record supports its actual input-0 claim.

<a id="line-code-leanified-corereader-evidence-lean-659"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:659 --> **L659** It does not support the stronger all-input claim.

<a id="line-code-leanified-corereader-evidence-lean-660"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:660 --> **L660** Compute the record count as one and provide localGenerator 0 as an actual compatible witness.

<a id="line-code-leanified-corereader-evidence-lean-661"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:661 --> **L661** Extract the supported input-0 fact directly from compatibility and reuse the established failure of allTrue support.

<a id="line-code-leanified-corereader-evidence-lean-662"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:662 --> **L662** Document the intended scope of arithmeticFacet. The corresponding declaration concerns: Defines an inferential facet with assumption n=2 and conclusion n+1=3. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-663"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:663 --> **L663** Define arithmeticFacet. Defines an inferential facet with assumption n=2 and conclusion n+1=3.

<a id="line-code-leanified-corereader-evidence-lean-664"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:664 --> **L664** Define usesObservation. Returns true only for empirical facet tags; this is a classification test, not an analysis of computational executability.

<a id="line-code-leanified-corereader-evidence-lean-665"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:665 --> **L665** Classify an empirical facet as using observation because it carries actual test records.

<a id="line-code-leanified-corereader-evidence-lean-666"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:666 --> **L666** Classify inferential and value facets as not using observation in this represented method classifier.

<a id="line-code-leanified-corereader-evidence-lean-667"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:667 --> **L667** Document the intended scope of noUniversalChain. The corresponding declaration concerns: Discharges the arithmetic implication with a model n=2 while its observation tag is false. This is an example of nonempirical discharge, not a universal account of knowledge. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-668"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:668 --> **L668** Begin provenance metadata for CoreReader.Evidence.noUniversalChain; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-669"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:669 --> **L669** Register source unit organon.grounds.scope#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-670"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:670 --> **L670** Register source unit organon.grounds.scope#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-671"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:671 --> **L671** Register source unit organon.grounds.scope#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-672"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:672 --> **L672** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-673"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:673 --> **L673** State the checked result noUniversalChain. Discharges the arithmetic implication with a model n=2 while its observation tag is false. This is an example of nonempirical discharge, not a universal account of knowledge. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-674"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:674 --> **L674** Provide n=2 as the inferential theory’s nonempty witness and note that its facet constructor uses no observation.

<a id="line-code-leanified-corereader-evidence-lean-675"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:675 --> **L675** Take any natural-number world n satisfying the arithmetic facet’s actual premise theory.

<a id="line-code-leanified-corereader-evidence-lean-676"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:676 --> **L676** Extract n=2 from the actual singleton premise, rather than assuming the desired successor conclusion.

<a id="line-code-leanified-corereader-evidence-lean-677"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:677 --> **L677** Expose the arithmetic conclusion n+1=3 as the remaining goal.

<a id="line-code-leanified-corereader-evidence-lean-678"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:678 --> **L678** Rewrite n to 2 using the premise; the required arithmetic equality reduces by computation.

<a id="line-code-leanified-corereader-evidence-lean-679"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:679 --> **L679** Document the intended scope of Trial. The corresponding declaration concerns: Stores setting, actual outcome and recorded outcome as independent natural-number fields, with no measurement mechanism. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-680"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:680 --> **L680** Declare the data interface Trial. Stores setting, actual outcome and recorded outcome as independent natural-number fields, with no measurement mechanism.

<a id="line-code-leanified-corereader-evidence-lean-681"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:681 --> **L681** Store the trial’s setting separately from its outcomes.

<a id="line-code-leanified-corereader-evidence-lean-682"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:682 --> **L682** Store the trial’s actual outcome, whether accurately recorded or not.

<a id="line-code-leanified-corereader-evidence-lean-683"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:683 --> **L683** Store the separately recorded outcome to allow accuracy comparisons.

<a id="line-code-leanified-corereader-evidence-lean-684"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:684 --> **L684** Document the intended scope of Verified. The corresponding declaration concerns: Verification means exact equality of the two supplied outcome fields. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-685"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:685 --> **L685** Define Verified. Verification means exact equality of the two supplied outcome fields.

<a id="line-code-leanified-corereader-evidence-lean-686"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:686 --> **L686** Define Reproduced. Reproduction means only equality of two setting fields; it does not require matching outcomes or histories.

<a id="line-code-leanified-corereader-evidence-lean-687"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:687 --> **L687** Define Bounded. The bound property is actualOutcome≤2, a fixed threshold rather than a general stability theory.

<a id="line-code-leanified-corereader-evidence-lean-688"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:688 --> **L688** Document the intended scope of variableOutcomesStableBound. The corresponding declaration concerns: Exhibits matching settings with different actual outcomes that both satisfy the fixed upper bound. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-689"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:689 --> **L689** Begin provenance metadata for CoreReader.Evidence.variableOutcomesStableBound; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-690"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:690 --> **L690** Register source unit organon.grounds.scope#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-691"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:691 --> **L691** Register source unit organon.grounds.scope#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-692"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:692 --> **L692** Register source unit organon.grounds.scope#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-693"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:693 --> **L693** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-694"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:694 --> **L694** State the checked result variableOutcomesStableBound. Exhibits matching settings with different actual outcomes that both satisfy the fixed upper bound.

<a id="line-code-leanified-corereader-evidence-lean-695"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:695 --> **L695** Fix the first trial at setting 0 with actual and recorded outcome 1.

<a id="line-code-leanified-corereader-evidence-lean-696"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:696 --> **L696** Fix the second trial at the same setting with actual and recorded outcome 2.

<a id="line-code-leanified-corereader-evidence-lean-697"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:697 --> **L697** Require the two explicitly fixed trials to share settings, differ in actual outcomes and both satisfy actualOutcome ≤ 2.

<a id="line-code-leanified-corereader-evidence-lean-698"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:698 --> **L698** Evaluate the two same-setting trials: actual outcomes 1 and 2 differ, but each satisfies actualOutcome ≤ 2.

<a id="line-code-leanified-corereader-evidence-lean-699"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:699 --> **L699** Document the intended scope of verificationReproductionStability. The corresponding declaration concerns: Uses explicit numeric trials to separate recorded/actual agreement, equal settings, and the fixed outcome bound. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-700"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:700 --> **L700** Begin provenance metadata for CoreReader.Evidence.verificationReproductionStability; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-701"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:701 --> **L701** Register source unit organon.grounds.scope#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-702"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:702 --> **L702** Register source unit organon.grounds.scope#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-703"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:703 --> **L703** Register source unit organon.grounds.scope#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-704"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:704 --> **L704** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-705"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:705 --> **L705** State the checked result verificationReproductionStability. Uses explicit numeric trials to separate recorded/actual agreement, equal settings, and the fixed outcome bound.

<a id="line-code-leanified-corereader-evidence-lean-706"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:706 --> **L706** Require two accurately recorded trials whose settings nevertheless differ.

<a id="line-code-leanified-corereader-evidence-lean-707"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:707 --> **L707** Require repeated settings alongside an inaccurate second record and an actual result exceeding the bound.

<a id="line-code-leanified-corereader-evidence-lean-708"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:708 --> **L708** Require preserved bounds even though one recorded outcome is inaccurate.

<a id="line-code-leanified-corereader-evidence-lean-709"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:709 --> **L709** Compute each concrete trial predicate separately, exhibiting changed settings, inaccurate recording and failure or preservation of the bound without conflating them.

<a id="line-code-leanified-corereader-evidence-lean-710"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:710 --> **L710** Document the intended scope of Program. The corresponding declaration concerns: Defines a tiny program language with doubling and natural-number constants only. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-711"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:711 --> **L711** Declare the alternatives Program. Defines a tiny program language with doubling and natural-number constants only.

<a id="line-code-leanified-corereader-evidence-lean-712"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:712 --> **L712** Provide syntax for the explanation program that doubles its actual input.

<a id="line-code-leanified-corereader-evidence-lean-713"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:713 --> **L713** Provide syntax for a constant-output explanation program carrying its returned natural number.

<a id="line-code-leanified-corereader-evidence-lean-714"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:714 --> **L714** Define Program.eval. Defines the executable meaning of the two program constructors.

<a id="line-code-leanified-corereader-evidence-lean-715"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:715 --> **L715** Evaluate the doubleInput explanation program at n by actual addition n+n.

<a id="line-code-leanified-corereader-evidence-lean-716"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:716 --> **L716** Evaluate a constant program by returning its stored value, independently of the input.

<a id="line-code-leanified-corereader-evidence-lean-717"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:717 --> **L717** Document the intended scope of Process. The corresponding declaration concerns: A process consists of an arbitrary natural-number function and an optional tiny-language explanation program. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-718"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:718 --> **L718** Declare the data interface Process. A process consists of an arbitrary natural-number function and an optional tiny-language explanation program.

<a id="line-code-leanified-corereader-evidence-lean-719"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:719 --> **L719** Store the same process’s actual output function over natural-number inputs.

<a id="line-code-leanified-corereader-evidence-lean-720"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:720 --> **L720** Store the process’s optional supplied explanation program, separately from its output function.

<a id="line-code-leanified-corereader-evidence-lean-721"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:721 --> **L721** Document the intended scope of OutputContract. The corresponding declaration concerns: Requires the output function to double every natural-number input. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-722"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:722 --> **L722** Define OutputContract. Requires the output function to double every natural-number input.

<a id="line-code-leanified-corereader-evidence-lean-723"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:723 --> **L723** Document the intended scope of ExplanationContract. The corresponding declaration concerns: Requires an attached program whose evaluated outputs equal the process output on every input; this is extensional agreement, not causal or human explanatory adequacy. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-724"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:724 --> **L724** Define ExplanationContract. Requires an attached program whose evaluated outputs equal the process output on every input; this is extensional agreement, not causal or human explanatory adequacy.

<a id="line-code-leanified-corereader-evidence-lean-725"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:725 --> **L725** Require an actually supplied program whose evaluation equals this process’s output at every natural input.

<a id="line-code-leanified-corereader-evidence-lean-726"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:726 --> **L726** Document the intended scope of outputOnlyProcess. The corresponding declaration concerns: Constructs the correct doubling function without any attached explanation program. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-727"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:727 --> **L727** Define outputOnlyProcess. Constructs the correct doubling function without any attached explanation program.

<a id="line-code-leanified-corereader-evidence-lean-728"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:728 --> **L728** Define explainedProcess. Constructs the same output function with the doubling program attached.

<a id="line-code-leanified-corereader-evidence-lean-729"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:729 --> **L729** Document the intended scope of processScope. The corresponding declaration concerns: Restricts modeled candidates to the exact assessed process, without restricting the contract's input quantifier. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-730"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:730 --> **L730** Define processScope. Restricts modeled candidates to the exact assessed process, without restricting the contract's input quantifier.

<a id="line-code-leanified-corereader-evidence-lean-731"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:731 --> **L731** Restrict theory models by the actual equality candidate=assessed, not by assuming the desired contract.

<a id="line-code-leanified-corereader-evidence-lean-732"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:732 --> **L732** Document the intended scope of processContractFacet. The corresponding declaration concerns: Builds an inferential contract facet under the exact assessed-process identity assumption. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-733"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:733 --> **L733** Define processContractFacet. Builds an inferential contract facet under the exact assessed-process identity assumption.

<a id="line-code-leanified-corereader-evidence-lean-734"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:734 --> **L734** Build an inferential facet with that exact object-identity scope and the supplied contract conclusion.

<a id="line-code-leanified-corereader-evidence-lean-735"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:735 --> **L735** Document the intended scope of processScopeModels. The corresponding declaration concerns: Proves that modeling the identity scope is exactly equality to the assessed process. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-736"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:736 --> **L736** State the checked result processScopeModels. Proves that modeling the identity scope is exactly equality to the assessed process.

<a id="line-code-leanified-corereader-evidence-lean-737"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:737 --> **L737** State that modeling this scope is exactly equality to the assessed process.

<a id="line-code-leanified-corereader-evidence-lean-738"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:738 --> **L738** Instantiate modelsSingleton with equality to the actual assessed Process, proving exactly which candidates satisfy processScope.

<a id="line-code-leanified-corereader-evidence-lean-739"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:739 --> **L739** Document the intended scope of processContractDischarged. The corresponding declaration concerns: Uses a supplied proof of the actual process contract and scope equality to discharge the corresponding inferential facet. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-740"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:740 --> **L740** State the checked result processContractDischarged. Uses a supplied proof of the actual process contract and scope equality to discharge the corresponding inferential facet.

<a id="line-code-leanified-corereader-evidence-lean-741"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:741 --> **L741** Conclude discharge for that same object’s contract facet using the explicit contract-proof premise.

<a id="line-code-leanified-corereader-evidence-lean-742"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:742 --> **L742** Use the assessed process itself as a model of its identity scope; leave semantic entailment of its contract.

<a id="line-code-leanified-corereader-evidence-lean-743"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:743 --> **L743** Take a candidate and proof hc that it lies in the actual assessed process’s identity scope.

<a id="line-code-leanified-corereader-evidence-lean-744"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:744 --> **L744** From the scope model hc, recover that the candidate is exactly the assessed process.

<a id="line-code-leanified-corereader-evidence-lean-745"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:745 --> **L745** Substitute that process identity so the contract goal is about the actual assessed object.

<a id="line-code-leanified-corereader-evidence-lean-746"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:746 --> **L746** Use the explicit premise proof of this object’s contract; the generic helper does not create contract correctness without that premise.

<a id="line-code-leanified-corereader-evidence-lean-747"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:747 --> **L747** Document the intended scope of ProcessGrounds. The corresponding declaration concerns: Requires canonical Grounds for this exact process/contract facet and its singleton applicability. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-748"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:748 --> **L748** Define ProcessGrounds. Requires canonical Grounds for this exact process/contract facet and its singleton applicability.

<a id="line-code-leanified-corereader-evidence-lean-749"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:749 --> **L749** Require Grounds for the supplied contract using canonical articulation and the exact assessed-process facet as applicable.

<a id="line-code-leanified-corereader-evidence-lean-750"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:750 --> **L750** The listed evidence package contains precisely that same process-contract facet.

<a id="line-code-leanified-corereader-evidence-lean-751"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:751 --> **L751** State the checked result processGrounds. Constructs matching contract Grounds from an actual proof for that same assessed process.

<a id="line-code-leanified-corereader-evidence-lean-752"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:752 --> **L752** Conclude these same-object ProcessGrounds from the explicit proof of the contract at the assessed process.

<a id="line-code-leanified-corereader-evidence-lean-753"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:753 --> **L753** Apply the contract-discharge helper to the explicit proof for this same assessed process.

<a id="line-code-leanified-corereader-evidence-lean-754"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:754 --> **L754** Separate nonempty facets, exact applicability coverage and each facet’s claim/articulation/discharge obligations.

<a id="line-code-leanified-corereader-evidence-lean-755"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:755 --> **L755** The applicability assumption identifies the facet with the one prescribed facet, which belongs to the singleton list.

<a id="line-code-leanified-corereader-evidence-lean-756"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:756 --> **L756** Singleton membership identifies the current facet with the prescribed one; substitute it to check its exact claim and grounds.

<a id="line-code-leanified-corereader-evidence-lean-757"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:757 --> **L757** Assemble the same contract claim, nonempty canonical articulation, semantic connection to the object scope and the established discharge.

<a id="line-code-leanified-corereader-evidence-lean-758"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:758 --> **L758** Document the intended scope of outputCorrectByEvaluation. The corresponding declaration concerns: Proves all-input doubling directly from the concrete output function, not an assumed success flag. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-759"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:759 --> **L759** State the checked result outputCorrectByEvaluation. Proves all-input doubling directly from the concrete output function, not an assumed success flag. The supplied proof term uses the displayed constructed witnesses or earlier lemmas, rather than adding an axiom.

<a id="line-code-leanified-corereader-evidence-lean-760"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:760 --> **L760** Document the intended scope of outputOnlyNoExplanation. The corresponding declaration concerns: Rejects an attached explanation witness because the same process stores none. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-761"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:761 --> **L761** State the checked result outputOnlyNoExplanation. Rejects an attached explanation witness because the same process stores none. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-762"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:762 --> **L762** Any explanation contract would supply a program whose some value equals the process’s actual none response; distinct option constructors make that impossible.

<a id="line-code-leanified-corereader-evidence-lean-763"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:763 --> **L763** Document the intended scope of FullProcessContract. The corresponding declaration concerns: Conjoins output correctness with an attached output-faithful explanation for the same process. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-764"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:764 --> **L764** Define FullProcessContract. Conjoins output correctness with an attached output-faithful explanation for the same process.

<a id="line-code-leanified-corereader-evidence-lean-765"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:765 --> **L765** Document the intended scope of OutputContractEvidence. The corresponding declaration concerns: Combines grounded output and a nonempty exact-process scope whose model refutes the stronger full contract. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-766"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:766 --> **L766** Define OutputContractEvidence. Combines grounded output and a nonempty exact-process scope whose model refutes the stronger full contract.

<a id="line-code-leanified-corereader-evidence-lean-767"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:767 --> **L767** Require grounded output correctness for the actual output-only process.

<a id="line-code-leanified-corereader-evidence-lean-768"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:768 --> **L768** Keep that process itself as an inhabitant of the exact assessment scope.

<a id="line-code-leanified-corereader-evidence-lean-769"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:769 --> **L769** Deny that this same scope entails the stronger output-plus-explanation contract.

<a id="line-code-leanified-corereader-evidence-lean-770"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:770 --> **L770** Document the intended scope of outputContractEvidence. The corresponding declaration concerns: Builds output Grounds by evaluation and uses the missing explanation at the same process to refute full-contract entailment. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-771"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:771 --> **L771** State the checked result outputContractEvidence. Builds output Grounds by evaluation and uses the missing explanation at the same process to refute full-contract entailment. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-772"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:772 --> **L772** Supply the actual output contract’s grounds and the process’s own scope witness, then refute the stronger contract under that very scope.

<a id="line-code-leanified-corereader-evidence-lean-773"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:773 --> **L773** Assume that this exact process scope entails the stronger output-plus-explanation contract.

<a id="line-code-leanified-corereader-evidence-lean-774"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:774 --> **L774** Instantiate alleged full-contract entailment at outputOnlyProcess itself; its explanation component contradicts the proven absent explanation.

<a id="line-code-leanified-corereader-evidence-lean-775"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:775 --> **L775** Document the intended scope of ScopedApplicationEvidence. The corresponding declaration concerns: Requires both different application contracts to have Grounds and nonempty exact-process scopes. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-776"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:776 --> **L776** Define ScopedApplicationEvidence. Requires both different application contracts to have Grounds and nonempty exact-process scopes.

<a id="line-code-leanified-corereader-evidence-lean-777"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:777 --> **L777** Include grounded output correctness for outputOnlyProcess.

<a id="line-code-leanified-corereader-evidence-lean-778"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:778 --> **L778** Include grounded output and explanation together for explainedProcess.

<a id="line-code-leanified-corereader-evidence-lean-779"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:779 --> **L779** Make the first scope’s exact identity with outputOnlyProcess explicit for every candidate.

<a id="line-code-leanified-corereader-evidence-lean-780"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:780 --> **L780** Likewise make the second scope’s exact identity with explainedProcess explicit.

<a id="line-code-leanified-corereader-evidence-lean-781"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:781 --> **L781** Require both actual process-identity theories to be satisfiable.

<a id="line-code-leanified-corereader-evidence-lean-782"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:782 --> **L782** Document the intended scope of scopedApplicationEvidence. The corresponding declaration concerns: Supplies actual all-input output proofs and the doubling explanation program for the stronger contract. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-783"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:783 --> **L783** State the checked result scopedApplicationEvidence. Supplies actual all-input output proofs and the doubling explanation program for the stronger contract. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-evidence-lean-784"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:784 --> **L784** Construct output-only grounds by evaluation and reserve the explained process’s stronger contract proof.

<a id="line-code-leanified-corereader-evidence-lean-785"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:785 --> **L785** Provide exact process-identity scope equivalences and each process itself as a nonempty scope witness.

<a id="line-code-leanified-corereader-evidence-lean-786"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:786 --> **L786** Provide exact process-identity scope equivalences and each process itself as a nonempty scope witness.

<a id="line-code-leanified-corereader-evidence-lean-787"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:787 --> **L787** For explainedProcess, prove every doubled output by reflexivity and supply doubleInput as an actual provided, extensionally faithful explanation program.

<a id="line-code-leanified-corereader-evidence-lean-788"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:788 --> **L788** Document the intended scope of outputNotExplanation. The corresponding declaration concerns: Proves output correctness with no attached explanation and includes the corresponding same-object Grounds/countermodel evidence. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-789"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:789 --> **L789** Begin provenance metadata for CoreReader.Evidence.outputNotExplanation; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-790"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:790 --> **L790** Register source unit organon.grounds.capabilities#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-791"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:791 --> **L791** Register source unit organon.grounds.capabilities#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-792"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:792 --> **L792** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-793"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:793 --> **L793** State the checked result outputNotExplanation. Proves output correctness with no attached explanation and includes the corresponding same-object Grounds/countermodel evidence.

<a id="line-code-leanified-corereader-evidence-lean-794"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:794 --> **L794** Retain absence of this process’s explanation contract together with its scoped output evidence.

<a id="line-code-leanified-corereader-evidence-lean-795"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:795 --> **L795** Combine actual output correctness, the same process’s absence of an explanation, and its matched scoped output evidence.

<a id="line-code-leanified-corereader-evidence-lean-796"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:796 --> **L796** Document the intended scope of applicationContractsDiffer. The corresponding declaration concerns: Shows output-only evidence fails the stronger contract, while the explained process satisfies both; both applications carry their own Grounds. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-797"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:797 --> **L797** Begin provenance metadata for CoreReader.Evidence.applicationContractsDiffer; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-798"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:798 --> **L798** Register source unit organon.grounds.capabilities#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-799"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:799 --> **L799** Register source unit organon.grounds.capabilities#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-800"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:800 --> **L800** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-801"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:801 --> **L801** State the checked result applicationContractsDiffer. Shows output-only evidence fails the stronger contract, while the explained process satisfies both; both applications carry their own Grounds.

<a id="line-code-leanified-corereader-evidence-lean-802"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:802 --> **L802** The output-only process meets output correctness but fails the combined output-and-explanation contract.

<a id="line-code-leanified-corereader-evidence-lean-803"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:803 --> **L803** The explained process meets both actual contracts.

<a id="line-code-leanified-corereader-evidence-lean-804"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:804 --> **L804** Include the explicit scoped grounds and nonempty witnesses for both application contracts.

<a id="line-code-leanified-corereader-evidence-lean-805"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:805 --> **L805** For outputOnlyProcess, supply actual output correctness and refute any joint contract by projecting its impossible explanation component.

<a id="line-code-leanified-corereader-evidence-lean-806"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:806 --> **L806** For explainedProcess, compute all doubled outputs, supply faithful doubleInput syntax, and include both contracts’ matched scoped grounds.

<a id="line-code-leanified-corereader-evidence-lean-807"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:807 --> **L807** Document the intended scope of ExternalCertificate. The corresponding declaration concerns: Binds output-correctness proof to the exact process and distinct assessor/assessed identifiers; it is a mathematical role model, not authenticated real provenance. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-808"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:808 --> **L808** Declare the data interface ExternalCertificate. Binds output-correctness proof to the exact process and distinct assessor/assessed identifiers; it is a mathematical role model, not authenticated real provenance.

<a id="line-code-leanified-corereader-evidence-lean-809"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:809 --> **L809** Store the external assessor’s identifier.

<a id="line-code-leanified-corereader-evidence-lean-810"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:810 --> **L810** Store the assessed participant’s identifier; the certificate type already fixes the assessed Process.

<a id="line-code-leanified-corereader-evidence-lean-811"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:811 --> **L811** Require distinct participant identifiers as an explicit certificate field.

<a id="line-code-leanified-corereader-evidence-lean-812"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:812 --> **L812** Require a proof of this very process’s doubled output for every input; a generic certificate assumes this field, while the concrete certificate constructs it.

<a id="line-code-leanified-corereader-evidence-lean-813"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:813 --> **L813** Document the intended scope of externalOutputCertificate. The corresponding declaration concerns: Constructs assessor forty-two's proof for assessed object seven by actual output evaluation. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-814"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:814 --> **L814** Define externalOutputCertificate. Constructs assessor forty-two's proof for assessed object seven by actual output evaluation.

<a id="line-code-leanified-corereader-evidence-lean-815"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:815 --> **L815** Construct participants 42 and 7, compute their inequality, and prove every doubled output by reflexivity of the actual program.

<a id="line-code-leanified-corereader-evidence-lean-816"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:816 --> **L816** Document the intended scope of externalAssessment. The corresponding declaration concerns: Uses a distinct-participant certificate to supply matching output Grounds while the assessed process still returns no explanation. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-817"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:817 --> **L817** Begin provenance metadata for CoreReader.Evidence.externalAssessment; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-818"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:818 --> **L818** Register source unit organon.grounds.capabilities#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-819"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:819 --> **L819** Register source unit organon.grounds.capabilities#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-820"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:820 --> **L820** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-821"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:821 --> **L821** State the checked result externalAssessment. Uses a distinct-participant certificate to supply matching output Grounds while the assessed process still returns no explanation.

<a id="line-code-leanified-corereader-evidence-lean-822"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:822 --> **L822** Require an actual external certificate indexed by outputOnlyProcess.

<a id="line-code-leanified-corereader-evidence-lean-823"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:823 --> **L823** Identify its assessor as 42 and assessed participant as 7.

<a id="line-code-leanified-corereader-evidence-lean-824"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:824 --> **L824** Require their distinction and actual output correctness of the same process.

<a id="line-code-leanified-corereader-evidence-lean-825"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:825 --> **L825** Also retain matched ProcessGrounds for that same output contract.

<a id="line-code-leanified-corereader-evidence-lean-826"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:826 --> **L826** Still deny an internal explanation contract for that actual process.

<a id="line-code-leanified-corereader-evidence-lean-827"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:827 --> **L827** Use the actual externalOutputCertificate with fixed participants 42 and 7 and its proved participant distinction.

<a id="line-code-leanified-corereader-evidence-lean-828"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:828 --> **L828** Take universal output correctness from that concrete certificate, whose proof was constructed from the actual program.

<a id="line-code-leanified-corereader-evidence-lean-829"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:829 --> **L829** Build matching ProcessGrounds for the very outputOnlyProcess using that same concrete output proof.

<a id="line-code-leanified-corereader-evidence-lean-830"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:830 --> **L830** Retain outputOnlyNoExplanation, so the external certificate does not assert an internal explanation exists.

<a id="line-code-leanified-corereader-evidence-lean-831"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:831 --> **L831** Document the intended scope of arithmeticArticulation. The corresponding declaration concerns: Names the canonical articulation of the arithmetic inferential facet. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-832"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:832 --> **L832** Define arithmeticArticulation. Names the canonical articulation of the arithmetic inferential facet.

<a id="line-code-leanified-corereader-evidence-lean-833"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:833 --> **L833** Document the intended scope of nonExecutableAssessment. The corresponding declaration concerns: Constructs Grounds for the arithmetic conditional facet and distinguishes its nonempirical tag from a discharged empirical switch facet. The tag does not establish noncomputability. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-evidence-lean-834"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:834 --> **L834** Begin provenance metadata for CoreReader.Evidence.nonExecutableAssessment; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-evidence-lean-835"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:835 --> **L835** Register source unit organon.relationships.terms#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-836"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:836 --> **L836** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-837"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:837 --> **L837** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-838"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:838 --> **L838** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-evidence-lean-839"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:839 --> **L839** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-evidence-lean-840"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:840 --> **L840** State the checked result nonExecutableAssessment. Constructs Grounds for the arithmetic conditional facet and distinguishes its nonempirical tag from a discharged empirical switch facet. The tag does not establish noncomputability.

<a id="line-code-leanified-corereader-evidence-lean-841"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:841 --> **L841** Require matched canonical Grounds for n+1=3 using precisely arithmeticFacet.

<a id="line-code-leanified-corereader-evidence-lean-842"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:842 --> **L842** Specify that this inferential facet uses no observation.

<a id="line-code-leanified-corereader-evidence-lean-843"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:843 --> **L843** At the same time, include an actually discharged empirical facet that does use observation.

<a id="line-code-leanified-corereader-evidence-lean-844"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:844 --> **L844** Build the arithmetic claim’s nonempty, applicability-covered Grounds, retain its no-observation classification, and include the valid observed switch facet.

<a id="line-code-leanified-corereader-evidence-lean-845"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:845 --> **L845** Singleton membership fixes the assessed facet to arithmeticFacet, so its specific assumptions and conclusion must be checked.

<a id="line-code-leanified-corereader-evidence-lean-846"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:846 --> **L846** Use the same arithmetic facet’s proven discharge with canonical nonempty articulation and its exact semantic connection.

<a id="line-code-leanified-corereader-evidence-lean-848"></a>
<!-- lean-line leanified/CoreReader/Evidence.lean:848 --> **L848** Close namespace CoreReader.Evidence; this adds no proof or premise.

<a id="code-leanified-corereader-integration-lean"></a>
### `leanified/CoreReader/Integration.lean`

<!-- lean-code leanified/CoreReader/Integration.lean -->
```lean
import CoreReader.Agency
import CoreReader.Choice

namespace CoreReader.Integration
open CoreReader.Logic CoreReader.Evidence CoreReader.Agency CoreReader.Choice

/- Canonical articulation preserves the actual assessment contents of each facet. -/
theorem canonicalGrounds {W : Type} (claim : Claim W) (facets : List (Facet W))
    (hne : facets ≠ []) (checked : ∀ f ∈ facets, f.claim = claim ∧ FacetDischarged f) :
    Grounds claim canonicalArticulation (fun f => f ∈ facets) facets := by
  exact ⟨hne, fun _ h => h, fun f hf =>
    ⟨(checked f hf).1, canonicalArticulated f (checked f hf).2,
      canonicalFacetArticulated f, (checked f hf).2⟩⟩

theorem canonicalGroundsForSingleton {W : Type} (f : Facet W) (checked : FacetDischarged f) :
    Grounds f.claim canonicalArticulation (fun g => g = f) [f] := by
  refine ⟨by simp, (by intro g hg; cases hg; simp), ?_⟩
  intro g hg
  simp only [List.mem_singleton] at hg
  subst g
  exact ⟨rfl, canonicalArticulated f checked, canonicalFacetArticulated f, checked⟩

/- A mode selects whether a system applies or waives the modeled governance rule. -/
inductive Mode | apply | waive
  deriving DecidableEq, Repr

/- The four hypotheses vary algorithm and governance independently for the same assessed system. -/
abbrev World := Candidate × Mode

def actual : World := (.identity, .apply)

/- A method's form and its possible executable realizations belong to one object. -/
structure Method where
  form : Form
  realize : World → Implementation

/- System fields identify the owner, its method, its current principle form, policy and work. -/
structure System where
  owner : Nat
  method : Method
  principleForm : Form
  governance : World → Mode
  requirements : Requirements

def policyFor : Mode → Policy
  | .apply => openPolicy
  | .waive => neutralPolicy

def workFor (owner : Nat) : Mode → List WorkRecord
  | .apply => completeOwnWork owner
  | .waive => []

def System.policy (s : System) (w : World) : Policy := policyFor (s.governance w)
def System.rules (s : System) (_w : World) : List Principle := ownRules s.owner
def System.work (s : System) (w : World) : List WorkRecord := workFor s.owner (s.governance w)

def actualSystem : System where
  owner := 0
  method := ⟨⟨.method, 0⟩, fun w => implementation w.1⟩
  principleForm := ⟨.principle, 0⟩
  governance := Prod.snd
  requirements := identityRequirements

def systemCapability (s : System) : Claim World :=
  fun w => ∀ n, s.requirements.inputs n → (s.method.realize w).run n = s.requirements.expected n

def systemBudget (s : System) : Claim World :=
  fun w => (s.method.realize w).cost ≤ s.requirements.budget

def systemObservation (s : System) : Record World :=
  ⟨fun w => decide ((s.method.realize w).run 0 = s.requirements.expected 0), true⟩

def systemHeld (s : System) : Theory World :=
  union (singleton (systemCapability s)) (singleton (systemBudget s))

inductive Question | correctOutput | affordable
  deriving DecidableEq, Repr

def systemContext (s : System) : Context World Question :=
  ⟨singleton (Compatible [systemObservation s]),
    (fun q => match q with | .correctOutput => systemCapability s | .affordable => systemBudget s),
    fun w => (s.method.realize w).domain 0 ∧ w.2 = .apply⟩

abbrev capability := systemCapability actualSystem
abbrev observation := systemObservation actualSystem
abbrev held := systemHeld actualSystem
abbrev context := systemContext actualSystem

/- The output observation identifies the algorithm, without identifying its independently varied governance mode. -/
theorem observationIdentifies (w : World) : Compatible [observation] w ↔ w.1 = .identity := by
  rcases w with ⟨candidate, mode⟩
  cases candidate <;> simp [Compatible, observation, systemObservation, actualSystem,
    implementation, identityRequirements, identityImpl, successorImpl]

theorem capabilityActual : capability actual := fun _ _ => rfl

theorem observedCapability : Supports [observation] capability := by
  intro w hw
  have hid := (observationIdentifies w).1 hw
  rcases w with ⟨candidate, mode⟩
  change candidate = .identity at hid
  subst candidate
  exact fun _ _ => rfl

def capabilityFacet : Facet World := .empirical [observation] (fun _ => True) capability (fun _ => True)

theorem capabilityFacetChecked : FacetDischarged capabilityFacet := by
  exact ⟨⟨actual, (observationIdentifies actual).2 rfl, trivial⟩,
    (fun w hw _ => observedCapability w hw), fun _ _ => trivial⟩

theorem capabilityGrounds : Grounds capability canonicalArticulation
    (fun f => f = capabilityFacet) [capabilityFacet] :=
  canonicalGroundsForSingleton capabilityFacet capabilityFacetChecked

theorem actualAdmissible : Admissible held context actual := by
  refine ⟨(modelsUnion _ _ _).2 ⟨(modelsSingleton _ _).2 capabilityActual,
    (modelsSingleton _ _).2 (by change 1 ≤ 1; decide)⟩,
    (modelsSingleton _ _).2 ((observationIdentifies actual).2 rfl), trivial, rfl⟩

theorem jointConsistent : Consistent held context :=
  consequenceConsistency held context ⟨actual, actualAdmissible⟩

/- The current method/principle forms, judgments, rules and own work are read from this very system and world. -/
def Charter (s : System) (w : World) : Prop :=
  Generative (s.policy w) ∧ Consistent (systemHeld s) (systemContext s) ∧
  Reflexive s.owner (s.rules w) (s.work w) ∧
  (s.policy w).current s.method.form ∧ (s.policy w).current s.principleForm

theorem charterChecked : Charter actualSystem actual :=
  ⟨⟨Or.inl rfl, fun _ _ => trivial⟩, jointConsistent, completeOwnWork_reflexive 0, rfl, rfl⟩

/- Revision adds a supported input-specific assertion about the same system's realized method. -/
def revisedHeld : Theory World := union held
  (singleton (fun w => (actualSystem.method.realize w).run 0 = actualSystem.requirements.expected 0))

def initialSnapshot : Snapshot World Question := ⟨held, context, 0⟩
def revisedSnapshot : Snapshot World Question := ⟨revisedHeld, context, 1⟩

/-- organon-map CoreReader.Integration.revisionKeepsConsistency
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem revisionKeepsConsistency :
    Charter actualSystem actual ∧ Consistent revisedHeld context ∧
    TruthfulReport initialSnapshot revisedSnapshot true ∧
    ¬ TruthfulReport initialSnapshot revisedSnapshot false := by
  refine ⟨charterChecked, consequenceConsistency revisedHeld context ⟨actual,
    (modelsUnion _ _ _).2 ⟨actualAdmissible.1, (modelsSingleton _ _).2 rfl⟩,
    actualAdmissible.2⟩, (fun _ => rfl), ?_⟩
  intro h
  have bad := h (Or.inr (by decide))
  cases bad

/- A claim about this system's method is assessed as its owner's system claim. -/
def OwnCapabilityDuty (s : System) (w : World) (facets : List (Facet World)) : Prop :=
  Performed (s.work w) (.system s.owner) .assessment ∧
  Grounds (systemCapability s) canonicalArticulation (fun f => f ∈ facets) facets

/-- organon-map CoreReader.Integration.ownCapabilityGrounded
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem ownCapabilityGrounded :
    OwnCapabilityDuty actualSystem actual [capabilityFacet] ∧ capability actual := by
  refine ⟨⟨?_, ?_⟩, capabilityActual⟩
  · exact ownAssessmentPerformed 0 (.system 0) (by simp [ownSubjects])
  · exact canonicalGrounds capability [capabilityFacet] (by simp)
      (by intro f hf; simp only [List.mem_singleton] at hf; cases hf; exact ⟨rfl, capabilityFacetChecked⟩)

/- This cost observation is true of both algorithms but does not discriminate their output behavior. -/
def costAllowanceRecord : Record World :=
  ⟨fun w => decide ((actualSystem.method.realize w).cost ≤ 2), true⟩

def unsupportedCapabilityFacet : Facet World :=
  .empirical [costAllowanceRecord] (fun _ => True) capability (fun _ => True)

theorem costCompatibleWithFailure : Compatible [costAllowanceRecord] (.successor, .apply) := by
  intro r hr
  simp only [List.mem_singleton] at hr
  subst r
  rfl

theorem costDoesNotSupportOutput : ¬ Supports [costAllowanceRecord] capability := by
  intro h
  have bad := h (.successor, .apply) costCompatibleWithFailure 0 trivial
  cases bad

theorem unsupportedGrounds : ¬ Grounds capability canonicalArticulation
    (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet] := by
  intro h
  have discharged := (h.2.2 unsupportedCapabilityFacet (by simp)).2.2.2
  exact costDoesNotSupportOutput (fun w hw => discharged.2.1 w hw trivial)

/- Five separately adopted requirements govern distinct operations; the mode does not give them priority over one another. -/
inductive Commitment | generation | consistency | reflexivity | grounds | choice
  deriving DecidableEq, Repr

/- A Grounds policy governs arbitrary claims, articulations and applicable facets, rather than only one capability claim. -/
def groundsPermission (mode : Mode) (claim : Claim World) (a : Facet World → Articulation World)
    (applicable : Facet World → Prop) (facets : List (Facet World)) : Prop :=
  match mode with
  | .apply => Grounds claim a applicable facets
  | .waive => True

def GroundsProvision (mode : Mode) : Prop :=
  ∀ claim a applicable facets, groundsPermission mode claim a applicable facets →
    Grounds claim a applicable facets

theorem groundsProvisionMeaning (mode : Mode) : GroundsProvision mode ↔ mode = .apply := by
  cases mode with
  | apply => exact ⟨fun _ => rfl, fun _ _ _ _ _ h => h⟩
  | waive =>
    constructor
    · intro h
      exact False.elim (unsupportedGrounds (h capability canonicalArticulation
        (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet] trivial))
    · intro h; cases h

/- The consistency policy checks a whole same-context theory, not isolated judgments. -/
def consistencyPermission (mode : Mode) (t : Theory World) (c : Context World Question) : Prop :=
  match mode with | .apply => Consistent t c | .waive => True

def conflictingHeld : Theory World := union (singleton capability) (singleton (fun w => ¬ capability w))

theorem conflictConsequences :
    Consequence conflictingHeld context .correctOutput true ∧
    Consequence conflictingHeld context .correctOutput false := by
  exact ⟨fun w hw => hw.1 capability (Or.inl rfl),
    fun w hw => hw.1 (fun w => ¬ capability w) (Or.inr rfl)⟩

theorem conflictingHeldInconsistent : ¬ Consistent conflictingHeld context :=
  conflictRequiresChange conflictingHeld context .correctOutput conflictConsequences.1 conflictConsequences.2

/- The selection policy applies the actual output/budget and relevant-reason conditions to every implementation. -/
def choicePermission (mode : Mode) (req : Requirements) (i : Implementation) (reasons : List Reason) : Prop :=
  match mode with | .apply => JustifiedChoice req i reasons | .waive => True

/- The following consequences are computed from distinct rule applications; they are not interchangeable support flags. -/
def proposedOperation : Mode → Operation
  | .apply => .successor
  | .waive => .copy

def selfSamples : Mode → List Nat
  | .apply => [0, 1]
  | .waive => [1]

noncomputable def conflictDecision (mode : Mode) : Bool :=
  @decide (consistencyPermission mode conflictingHeld context) (Classical.propDecidable _)

noncomputable def groundsDecision (mode : Mode) (facet : Facet World) : Bool :=
  @decide (groundsPermission mode facet.claim canonicalArticulation (fun f => f = facet) [facet])
    (Classical.propDecidable _)

noncomputable def choiceDecision (mode : Mode) (i : Implementation) (reasons : List Reason) : Bool :=
  @decide (choicePermission mode identityRequirements i reasons) (Classical.propDecidable _)

theorem decisionsApply : conflictDecision .apply = false ∧
    groundsDecision .apply unsupportedCapabilityFacet = false ∧
    groundsDecision .apply capabilityFacet = true ∧
    choiceDecision .apply cheapSuccessor [.method .simplicity] = false ∧
    choiceDecision .apply identityImpl objectiveReason = true := by
  classical
  simp only [conflictDecision, groundsDecision, choiceDecision, consistencyPermission,
    groundsPermission, choicePermission]
  exact ⟨decide_eq_false conflictingHeldInconsistent,
    decide_eq_false unsupportedGrounds, decide_eq_true capabilityGrounds,
    decide_eq_false eligibleInternalReasonNotSufficient.2, decide_eq_true identityJustified⟩

theorem decisionsWaive : conflictDecision .waive = true ∧
    groundsDecision .waive unsupportedCapabilityFacet = true ∧
    choiceDecision .waive cheapSuccessor [.method .simplicity] = true := by
  exact ⟨@decide_eq_true (consistencyPermission .waive conflictingHeld context)
    (Classical.propDecidable _) trivial,
    @decide_eq_true (groundsPermission .waive unsupportedCapabilityFacet.claim canonicalArticulation
      (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet]) (Classical.propDecidable _) trivial,
    @decide_eq_true (choicePermission .waive identityRequirements cheapSuccessor [.method .simplicity])
      (Classical.propDecidable _) trivial⟩

/- Each application supplies its own outcome type, adopted objective, constraints and actual option-indexed reasons. -/
noncomputable def commitmentPositionFor (c : Commitment) (chosenMode : Mode) : ValuePosition World :=
  match c with
  | .generation => {
      Position := Mode, Outcome := Operation, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => proposedOperation mode,
      objective := fun op => op.run 0 ≠ Operation.copy.run 0,
      constraints := fun _ mode => Generative (policyFor mode),
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ mode => (proposedOperation mode).run 0 = 1 ∧ Operation.copy.run 0 = 0],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => ¬ Expanded baseState inflatedState,
      response := fun _ => some "Pursuing expansion does not guarantee it; assess the actual before and after capabilities separately" }
  | .consistency => {
      Position := Mode, Outcome := Bool, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => conflictDecision mode,
      objective := fun accepted => accepted = false,
      constraints := fun _ mode => consistencyPermission mode held context,
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ _ => Consequence conflictingHeld context .correctOutput true ∧
        Consequence conflictingHeld context .correctOutput false],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => ¬ Entails (emptyTheory : Theory Bool) (fun w => w = true),
      response := fun _ => some "Consistency alone does not establish sufficient support; assess the claim with its grounds as well" }
  | .reflexivity => {
      Position := Mode, Outcome := List Nat, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => selfSamples mode,
      objective := fun samples => ∃ n ∈ samples, ownArithmeticPrinciple n = false,
      constraints := fun _ mode => Reflexive 0 (ownRules 0) (workFor 0 mode),
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ _ => ownArithmeticPrinciple 0 = false ∧ ownArithmeticPrinciple 1 = true],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => selfTest [1] = true ∧ ownArithmeticPrinciple 0 = false,
      response := fun _ => some "A passing self-test does not certify the principle; retain the relevant counterexample and its scope" }
  | .grounds => {
      Position := Mode, Outcome := Bool, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => groundsDecision mode unsupportedCapabilityFacet,
      objective := fun accepted => accepted = false,
      constraints := fun _ mode => groundsPermission mode capability canonicalArticulation
        (fun f => f = capabilityFacet) [capabilityFacet],
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ _ => Compatible [costAllowanceRecord] (.successor, .apply) ∧
        ¬ capability (.successor, .apply)],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => OutputContract outputOnlyProcess ∧ ¬ ExplanationContract outputOnlyProcess,
      response := fun _ => some "Grounds allows an external output assessment without requiring this process to provide an internal explanation" }
  | .choice => {
      Position := Mode, Outcome := Bool, adopted := chosenMode, selected := actualSystem.governance,
      outcome := fun _ mode => choiceDecision mode cheapSuccessor [.method .simplicity],
      objective := fun accepted => accepted = false,
      constraints := fun _ mode => choicePermission mode identityRequirements identityImpl objectiveReason,
      starting := singleton (fun w => actualSystem.governance w = chosenMode),
      reasons := [fun _ _ => cheapSuccessor.run 0 = 1 ∧ identityRequirements.expected 0 = 0 ∧
        cheapSuccessor.cost ≤ identityRequirements.budget],
      limits := fun w => w.1 = .identity,
      relevantCriticism := fun _ => identityImpl.conventional = true ∧ identityImpl.established = true,
      response := fun _ => some "An existing conventional method remains eligible when actual output and budget reasons justify it" }

noncomputable def commitmentPosition (c : Commitment) : ValuePosition World := commitmentPositionFor c .apply

/- The fact used as a reason has content before evaluating the adopted rule's consequence. -/
theorem positionReasons (c : Commitment) :
    ∀ r ∈ (commitmentPosition c).reasons, r actual (commitmentPosition c).adopted := by
  cases c <;> intro r hr <;> dsimp [commitmentPosition, commitmentPositionFor] at hr ⊢ <;>
    rcases List.mem_singleton.mp hr with rfl
  · exact ⟨rfl, rfl⟩
  · exact conflictConsequences
  · exact ⟨rfl, rfl⟩
  · refine ⟨costCompatibleWithFailure, ?_⟩
    intro h
    have bad := h 0 trivial
    cases bad
  · exact ⟨rfl, rfl, by decide⟩

/- Each adopted rule has its stated consequence in this explicitly defined application; this is not ultimate value justification. -/
theorem positionConsequence (c : Commitment) (w : World) : (commitmentPosition c).consequence w := by
  cases c <;> dsimp [commitmentPosition, commitmentPositionFor, ValuePosition.consequence]
  · exact ⟨by decide, ⟨Or.inl rfl, fun _ _ => trivial⟩⟩
  · exact ⟨decisionsApply.1, jointConsistent⟩
  · exact ⟨⟨0, by simp [selfSamples], rfl⟩, completeOwnWork_reflexive 0⟩
  · exact ⟨decisionsApply.2.1, capabilityGrounds⟩
  · exact ⟨decisionsApply.2.2.2.1, identityJustified⟩

theorem positionProcedure (c : Commitment) : ValueProcedure (commitmentPosition c) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · cases c <;> simp [commitmentPosition, commitmentPositionFor]
  · refine ⟨actual, ?_, ?_, ?_, positionReasons c⟩
    · cases c <;> exact (modelsSingleton _ _).2 rfl
    · cases c <;> rfl
    · cases c <;> rfl
  · intro w _ _ _
    exact positionConsequence c w
  · intro w _ _
    cases c <;> exact ⟨_, rfl, by decide⟩

/- Criticism is instantiated within the adopted position's actual limit rather than made vacuous. -/
theorem criticismWithinScope (c : Commitment) :
    (commitmentPosition c).limits actual ∧ (commitmentPosition c).relevantCriticism actual := by
  constructor
  · cases c <;> rfl
  · cases c
    · simp [commitmentPosition, commitmentPositionFor, Expanded, baseState, inflatedState]
    · exact consistentIncomplete.2.1
    · exact ⟨rfl, rfl⟩
    · exact ⟨outputNotExplanation.1, outputNotExplanation.2.1⟩
    · exact ⟨rfl, rfl⟩

/- Waiving the rule changes the actual computed outcome or an explicit adopted constraint; old reasons cannot certify it unchanged. -/
theorem oppositeConsequenceFails (c : Commitment) (w : World) :
    ¬ (commitmentPositionFor c .waive).consequence w := by
  cases c <;> intro h
  · exact permissionNotValuation.2.2 h.2
  · have bad : conflictDecision .waive = false := h.1
    rw [decisionsWaive.1] at bad
    cases bad
  · obtain ⟨n, hn, hf⟩ := h.1
    change n ∈ [1] at hn
    have he : n = 1 := List.mem_singleton.mp hn
    subst n
    cases hf
  · have bad : groundsDecision .waive unsupportedCapabilityFacet = false := h.1
    rw [decisionsWaive.2.1] at bad
    cases bad
  · have bad : choiceDecision .waive cheapSuccessor [.method .simplicity] = false := h.1
    rw [decisionsWaive.2.2] at bad
    cases bad

theorem oppositeProcedureRejected (c : Commitment) : ¬ ValueProcedure (commitmentPositionFor c .waive) := by
  intro h
  obtain ⟨w, hs, hl, _, hr⟩ := h.2.1
  exact oppositeConsequenceFails c w (h.2.2.1 w hs hl hr)

/- Each statement names adoption of a particular rule; its defined policy gives that option its meaning. -/
noncomputable def commitmentClaim (c : Commitment) : Claim World := (commitmentPosition c).commitment

noncomputable def commitmentFacet (c : Commitment) : Facet World := .value (commitmentPosition c)

/-- organon-map CoreReader.Integration.reasonsBelongToCommitments
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem reasonsBelongToCommitments (c : Commitment) :
    Grounds (commitmentClaim c) canonicalArticulation
      (fun f => f = commitmentFacet c) [commitmentFacet c] ∧
    JointAdoption (commitmentPosition c) ∧
    (commitmentPosition c).relevantCriticism actual ∧
    ¬ ValueProcedure (commitmentPositionFor c .waive) := by
  exact ⟨canonicalGroundsForSingleton (commitmentFacet c) (positionProcedure c),
    (positionProcedure c).2.1, (criticismWithinScope c).2, oppositeProcedureRejected c⟩

/- This claim concerns the Grounds rule for arbitrary claim/facet packages, not a single capability duty. -/
theorem groundsCommitmentIsProvision : commitmentClaim .grounds = (fun w => GroundsProvision w.2) := by
  funext w
  apply propext
  exact (groundsProvisionMeaning w.2).symm

/-- organon-map CoreReader.Integration.groundsSelfAssessment
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem groundsSelfAssessment :
    Grounds (fun w => GroundsProvision w.2) canonicalArticulation
      (fun f => f = commitmentFacet .grounds) [commitmentFacet .grounds] ∧
    (commitmentPosition .grounds).limits actual ∧
    (commitmentPosition .grounds).relevantCriticism actual ∧
    ¬ ValueProcedure (commitmentPositionFor .grounds .waive) := by
  rw [← groundsCommitmentIsProvision]
  exact ⟨(reasonsBelongToCommitments .grounds).1,
    (criticismWithinScope .grounds).1, (criticismWithinScope .grounds).2,
    oppositeProcedureRejected .grounds⟩

/- This existing principle form implements the same system's choice rule on two actual proposals.
Input 0 names the identity proposal; input 1 names the cheap successor proposal. -/
structure PhilosophyMethod where
  form : Form
  mode : Mode

def currentPhilosophy (s : System) (w : World) : PhilosophyMethod :=
  ⟨s.principleForm, s.governance w⟩

noncomputable def PhilosophyMethod.review (p : PhilosophyMethod) (input : Nat) : Nat :=
  if input = 0 then
    if choiceDecision p.mode identityImpl objectiveReason then 1 else 0
  else if choiceDecision p.mode cheapSuccessor [.method .simplicity] then 1 else 0

noncomputable def PhilosophyMethod.implementation (p : PhilosophyMethod) : Implementation where
  name := "Current philosophy's proposal review"
  conventional := true
  established := true
  run := p.review
  cost := 1
  domain n := n = 0 ∨ n = 1
  explanation := p.review
  trace n := [n, p.review n]

def proposalRequirements : Requirements where
  inputs n := n = 0 ∨ n = 1
  expected n := if n = 0 then 1 else 0
  budget := 1
  values _ := True

theorem currentReviewCorrect : ∀ n, proposalRequirements.inputs n →
    (currentPhilosophy actualSystem actual).review n = proposalRequirements.expected n := by
  intro n hn
  rcases hn with rfl | rfl <;>
    simp [PhilosophyMethod.review, currentPhilosophy, actualSystem, actual,
      proposalRequirements, decisionsApply.2.2.2.1, decisionsApply.2.2.2.2]

/- Status alone fails for this actual principle method; its demonstrated proposal decisions give a relevant reason. -/
/-- organon-map CoreReader.Integration.existingPhilosophyNotPrivileged
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem existingPhilosophyNotPrivileged :
    (currentPhilosophy actualSystem actual).form = actualSystem.principleForm ∧
    (currentPhilosophy actualSystem actual).mode = actualSystem.governance actual ∧
    ¬ JustifiedChoice proposalRequirements
      (currentPhilosophy actualSystem actual).implementation [.status .standing] ∧
    JustifiedChoice proposalRequirements
      (currentPhilosophy actualSystem actual).implementation [.method .output] ∧
    (currentPhilosophy actualSystem actual).review 0 = 1 ∧
    (currentPhilosophy actualSystem actual).review 1 = 0 := by
  refine ⟨rfl, rfl, statusOnlyFails _ _ _, ?_, currentReviewCorrect 0 (Or.inl rfl),
    currentReviewCorrect 1 (Or.inr rfl)⟩
  exact ⟨⟨currentReviewCorrect, by change 1 ≤ 1; decide⟩,
    .method .output, by simp, trivial, currentReviewCorrect⟩

/- Applications choose their contract and requirements; the resulting claim is about this system's actual method. -/
def applicationClaim (s : System) (req : Requirements)
    (contract : Requirements → Implementation → Prop) : Claim World :=
  fun w => contract req (s.method.realize w)

def ApplicationDuties (s : System) (w : World) (req : Requirements)
    (contract : Requirements → Implementation → Prop)
    (articulations : Facet World → Articulation World)
    (applicable : Facet World → Prop) (facets : List (Facet World)) : Prop :=
  Reflexive s.owner (s.rules w) (s.work w) ∧
  Grounds (applicationClaim s req contract) articulations applicable facets

/- These are consequences of an explicitly adopted duty, not a proof that arbitrary applications fulfill it. -/
/-- organon-map CoreReader.Integration.applicationRetainsDuties
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem applicationRetainsDuties (s : System) (w : World) (req : Requirements)
    (contract : Requirements → Implementation → Prop)
    (articulations : Facet World → Articulation World)
    (applicable : Facet World → Prop) (facets : List (Facet World))
    (h : ApplicationDuties s w req contract articulations applicable facets) :
    Reflexive s.owner (s.rules w) (s.work w) ∧
    (∀ f, applicable f → f ∈ facets) ∧
    (∀ f ∈ facets, f.claim = applicationClaim s req contract ∧
      Articulated (articulations f) ∧ FacetArticulated (articulations f) f ∧ FacetDischarged f) :=
  ⟨h.1, h.2.2.1, h.2.2.2⟩

def outputContract (req : Requirements) (i : Implementation) : Prop :=
  ∀ n, req.inputs n → i.run n = req.expected n

def successorRequirements : Requirements :=
  { identityRequirements with expected := fun n => n + 1 }

/- Holding the system and observation fixed while changing the actual objective changes the capability claim. -/
def changedObjectiveFacet : Facet World :=
  .empirical [observation] (fun _ => True)
    (applicationClaim actualSystem successorRequirements outputContract) (fun _ => True)

/-- organon-map CoreReader.Integration.applicationVariation
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem applicationVariation :
    ApplicationDuties actualSystem actual identityRequirements outputContract
      canonicalArticulation (fun f => f = capabilityFacet) [capabilityFacet] ∧
    ¬ applicationClaim actualSystem successorRequirements outputContract actual ∧
    ¬ Grounds (applicationClaim actualSystem successorRequirements outputContract)
      canonicalArticulation (fun f => f = changedObjectiveFacet) [changedObjectiveFacet] := by
  refine ⟨⟨completeOwnWork_reflexive 0, capabilityGrounds⟩, ?_, ?_⟩
  · intro h
    have bad := h 0 trivial
    cases bad
  · intro h
    have discharged := (h.2.2 changedObjectiveFacet (by simp)).2.2.2
    have bad := discharged.2.1 actual ((observationIdentifies actual).2 rfl) trivial 0 trivial
    cases bad

/- The very system satisfies the charter while its true cost evidence fails to establish its output capability. -/
/-- organon-map CoreReader.Integration.charterNotGrounds
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem charterNotGrounds :
    Charter actualSystem actual ∧
    Compatible [costAllowanceRecord] actual ∧
    ¬ Grounds capability canonicalArticulation
      (fun f => f = unsupportedCapabilityFacet) [unsupportedCapabilityFacet] := by
  exact ⟨charterChecked, (by intro r hr; cases List.mem_singleton.mp hr; rfl), unsupportedGrounds⟩

/- A single inhabited system/context carries the charter, its own actual claim and support,
contentful principle work, and separately reasoned governance commitments. -/
/-- organon-map CoreReader.Integration.jointWitness
organon.preamble#p1 sha256 2ff45595af647eddc9fc095b3f3854f284bf3740ae7af1bacdb98773ffa44097
organon.preamble#p2 sha256 2ff45595af647eddc9fc095b3f3854f284bf3740ae7af1bacdb98773ffa44097
organon.charter.overview#p2 sha256 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c
organon.charter.overview#p3 sha256 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem jointWitness :
    ∃ s : System, ∃ w : World,
      Admissible (systemHeld s) (systemContext s) w ∧ Charter s w ∧
      OwnCapabilityDuty s w [capabilityFacet] ∧ systemCapability s w ∧
      JustifiedChoice s.requirements (s.method.realize w) objectiveReason ∧
      (∀ c : Commitment, Grounds (commitmentClaim c) canonicalArticulation
        (fun f => f = commitmentFacet c) [commitmentFacet c]) ∧
      s = actualSystem ∧ w = actual := by
  exact ⟨actualSystem, actual, actualAdmissible, charterChecked,
    ownCapabilityGrounded.1, capabilityActual, identityJustified,
    fun c => (reasonsBelongToCommitments c).1, rfl, rfl⟩

end CoreReader.Integration
```
<!-- /lean-code leanified/CoreReader/Integration.lean -->

<a id="line-code-leanified-corereader-integration-lean-1"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:1 --> **L1** Imports CoreReader.Agency and its dependencies into this module.

<a id="line-code-leanified-corereader-integration-lean-2"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:2 --> **L2** Imports CoreReader.Choice and its dependencies into this module.

<a id="line-code-leanified-corereader-integration-lean-4"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:4 --> **L4** Opens namespace CoreReader.Integration; file boundaries do not change declaration identity.

<a id="line-code-leanified-corereader-integration-lean-5"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:5 --> **L5** Makes the listed namespaces available for unqualified references.

<a id="line-code-leanified-corereader-integration-lean-7"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:7 --> **L7** Documents the following definition or result: Builds Grounds from a nonempty list of discharged facets all targeting one claim, using canonical articulations and list membership itself as applicability.

<a id="line-code-leanified-corereader-integration-lean-8"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:8 --> **L8** Builds Grounds from a nonempty list of discharged facets all targeting one claim, using canonical articulations and list membership itself as applicability.

<a id="line-code-leanified-corereader-integration-lean-9"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:9 --> **L9** Assumes a nonempty facet list, with each facet targeting claim and already discharged.

<a id="line-code-leanified-corereader-integration-lean-10"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:10 --> **L10** Builds Grounds using each facet's own constructed articulation and list membership as the applicability predicate.

<a id="line-code-leanified-corereader-integration-lean-11"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:11 --> **L11** Supplies nonemptiness and tautological membership coverage, then checks each listed facet.

<a id="line-code-leanified-corereader-integration-lean-12"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:12 --> **L12** For each facet, uses checked to establish the same claim and derive a nonempty articulation from its discharge.

<a id="line-code-leanified-corereader-integration-lean-13"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:13 --> **L13** Adds that articulation's exact content correspondence and the supplied discharge proof.

<a id="line-code-leanified-corereader-integration-lean-15"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:15 --> **L15** Builds Grounds for one discharged facet with applicability exactly equality to that facet.

<a id="line-code-leanified-corereader-integration-lean-16"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:16 --> **L16** For a single discharged facet, makes exactly that facet applicable to its own claim.

<a id="line-code-leanified-corereader-integration-lean-17"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:17 --> **L17** Proves the singleton is nonempty and every facet equal to f occurs in it; leaves per-facet content checks.

<a id="line-code-leanified-corereader-integration-lean-18"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:18 --> **L18** Takes any facet g known to belong to the singleton list [f].

<a id="line-code-leanified-corereader-integration-lean-19"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:19 --> **L19** Singleton membership turns hg into the equality g=f.

<a id="line-code-leanified-corereader-integration-lean-20"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:20 --> **L20** Replaces g by the same discharged facet f.

<a id="line-code-leanified-corereader-integration-lean-21"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:21 --> **L21** Uses identical claim, constructed articulability, exact facet-content match and checked discharge to finish its Grounds fields.

<a id="line-code-leanified-corereader-integration-lean-23"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:23 --> **L23** Documents the following definition or result: Separates applying the modeled standards from waiving them; the two modes drive actual policy decisions.

<a id="line-code-leanified-corereader-integration-lean-24"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:24 --> **L24** Separates applying the modeled standards from waiving them; the two modes drive actual policy decisions.

<a id="line-code-leanified-corereader-integration-lean-25"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:25 --> **L25** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-integration-lean-27"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:27 --> **L27** Documents the following definition or result: A world pairs one of two candidate implementations with one of two governance modes; it is a closed four-world model.

<a id="line-code-leanified-corereader-integration-lean-28"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:28 --> **L28** A world pairs one of two candidate implementations with one of two governance modes; it is a closed four-world model.

<a id="line-code-leanified-corereader-integration-lean-30"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:30 --> **L30** Chooses identity implementation under applying governance as the concrete actual world.

<a id="line-code-leanified-corereader-integration-lean-32"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:32 --> **L32** Documents the following definition or result: Binds a revisable form identity to a world-dependent implementation.

<a id="line-code-leanified-corereader-integration-lean-33"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:33 --> **L33** Binds a method form kind/version to its world-dependent implementation; this structure alone does not prove the form is revisable.

<a id="line-code-leanified-corereader-integration-lean-34"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:34 --> **L34** Stores the form kind and version of this method.

<a id="line-code-leanified-corereader-integration-lean-35"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:35 --> **L35** Assigns an actual implementation to every candidate/governance world for this same method.

<a id="line-code-leanified-corereader-integration-lean-37"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:37 --> **L37** Documents the following definition or result: Binds owner, method, principle form, governance selection and application requirements.

<a id="line-code-leanified-corereader-integration-lean-38"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:38 --> **L38** Binds owner, method, principle form, governance selection and application requirements.

<a id="line-code-leanified-corereader-integration-lean-39"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:39 --> **L39** Identifies the owner whose principles and work are used for this system.

<a id="line-code-leanified-corereader-integration-lean-40"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:40 --> **L40** Stores the system's method form together with its world-dependent implementation.

<a id="line-code-leanified-corereader-integration-lean-41"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:41 --> **L41** Stores the current form of the system's own principle.

<a id="line-code-leanified-corereader-integration-lean-42"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:42 --> **L42** Selects whether this system applies or waives governance in each world.

<a id="line-code-leanified-corereader-integration-lean-43"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:43 --> **L43** Fixes the actual input, output, budget and value requirements used to assess this system's implementation.

<a id="line-code-leanified-corereader-integration-lean-45"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:45 --> **L45** Applying governance selects the open policy; waiving selects the policy without expansion valuation.

<a id="line-code-leanified-corereader-integration-lean-46"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:46 --> **L46** Applying governance selects openPolicy, which values expansion and permits revision.

<a id="line-code-leanified-corereader-integration-lean-47"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:47 --> **L47** Waiving governance selects neutralPolicy, which lacks the required expansion valuation.

<a id="line-code-leanified-corereader-integration-lean-49"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:49 --> **L49** Applying governance supplies content-checked own-work records; waiving supplies none.

<a id="line-code-leanified-corereader-integration-lean-50"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:50 --> **L50** Applying governance gives this owner the complete contentful work log.

<a id="line-code-leanified-corereader-integration-lean-51"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:51 --> **L51** Waiving governance gives the same owner an empty work log.

<a id="line-code-leanified-corereader-integration-lean-53"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:53 --> **L53** Uses this same system's governance choice to select its policy.

<a id="line-code-leanified-corereader-integration-lean-54"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:54 --> **L54** Uses the registered generation/assessment rules for this system's owner.

<a id="line-code-leanified-corereader-integration-lean-55"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:55 --> **L55** Uses this owner's governance mode to select the actual work-record list.

<a id="line-code-leanified-corereader-integration-lean-57"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:57 --> **L57** Constructs owner zero with version-zero method/principle forms, candidate-dependent implementation, world-selected governance and identity requirements.

<a id="line-code-leanified-corereader-integration-lean-58"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:58 --> **L58** Assigns owner zero to the shared actual system.

<a id="line-code-leanified-corereader-integration-lean-59"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:59 --> **L59** Uses a version-zero method form whose realization is selected by the world's candidate component.

<a id="line-code-leanified-corereader-integration-lean-60"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:60 --> **L60** Sets this system's current principle form to principle version zero.

<a id="line-code-leanified-corereader-integration-lean-61"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:61 --> **L61** Reads governance from the world's second component, independently of the implementation candidate.

<a id="line-code-leanified-corereader-integration-lean-62"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:62 --> **L62** Assesses the same method against identityRequirements.

<a id="line-code-leanified-corereader-integration-lean-64"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:64 --> **L64** For this system's requested inputs, requires its realized method to match its own expected output.

<a id="line-code-leanified-corereader-integration-lean-65"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:65 --> **L65** Claims that this system's realized method meets its specified output on every required input.

<a id="line-code-leanified-corereader-integration-lean-67"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:67 --> **L67** Checks the same realized implementation's cost against the system's budget.

<a id="line-code-leanified-corereader-integration-lean-68"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:68 --> **L68** Claims that the same realized method's cost fits this system's own budget.

<a id="line-code-leanified-corereader-integration-lean-70"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:70 --> **L70** Records whether the system's actual implementation meets its expected output at input zero.

<a id="line-code-leanified-corereader-integration-lean-71"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:71 --> **L71** Records true for the test that this same method's output at zero equals its required output there.

<a id="line-code-leanified-corereader-integration-lean-73"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:73 --> **L73** Holds this same system's capability and budget claims together.

<a id="line-code-leanified-corereader-integration-lean-74"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:74 --> **L74** The system simultaneously holds its actual output-capability claim and its budget claim.

<a id="line-code-leanified-corereader-integration-lean-76"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:76 --> **L76** Defines the output-correctness and affordability questions used by the context.

<a id="line-code-leanified-corereader-integration-lean-77"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:77 --> **L77** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-integration-lean-79"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:79 --> **L79** Uses the same system's observation as assumption and its capability/budget as meanings; scope requires domain membership at zero and applying governance.

<a id="line-code-leanified-corereader-integration-lean-80"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:80 --> **L80** The context assumes compatibility with this system's actual zero-input observation.

<a id="line-code-leanified-corereader-integration-lean-81"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:81 --> **L81** Interprets correctOutput as this system's capability and affordable as its budget compliance.

<a id="line-code-leanified-corereader-integration-lean-82"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:82 --> **L82** Restricts admissible scope to implementations whose domain includes zero and worlds with governance applied.

<a id="line-code-leanified-corereader-integration-lean-84"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:84 --> **L84** Abbreviates the actual system's parameterized output capability claim.

<a id="line-code-leanified-corereader-integration-lean-85"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:85 --> **L85** Abbreviates the actual system's input-zero observation record.

<a id="line-code-leanified-corereader-integration-lean-86"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:86 --> **L86** Abbreviates the actual system's simultaneously held capability/budget theory.

<a id="line-code-leanified-corereader-integration-lean-87"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:87 --> **L87** Abbreviates the actual system's question/assumption/scope context.

<a id="line-code-leanified-corereader-integration-lean-89"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:89 --> **L89** Documents the following definition or result: Computes that the zero observation identifies the identity candidate while leaving governance mode unconstrained.

<a id="line-code-leanified-corereader-integration-lean-90"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:90 --> **L90** Computes that the zero observation identifies the identity candidate while leaving governance mode unconstrained.

<a id="line-code-leanified-corereader-integration-lean-91"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:91 --> **L91** Separates the candidate algorithm from the independently varied governance mode.

<a id="line-code-leanified-corereader-integration-lean-92"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:92 --> **L92** Checks each of the two actual candidates against the observation's true zero-output test.

<a id="line-code-leanified-corereader-integration-lean-93"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:93 --> **L93** Identity returns required zero while successor returns one, so only identity matches, regardless of governance.

<a id="line-code-leanified-corereader-integration-lean-95"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:95 --> **L95** Proves the actual identity implementation meets every requested identity output by reduction.

<a id="line-code-leanified-corereader-integration-lean-97"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:97 --> **L97** Uses candidate identification and known identity behavior to obtain universal requested-input capability within the closed model.

<a id="line-code-leanified-corereader-integration-lean-98"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:98 --> **L98** Takes an arbitrary world compatible with the same observation.

<a id="line-code-leanified-corereader-integration-lean-99"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:99 --> **L99** Uses observationIdentifies to infer that this world's algorithm candidate is identity.

<a id="line-code-leanified-corereader-integration-lean-100"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:100 --> **L100** Separates the world's algorithm and governance components for substitution.

<a id="line-code-leanified-corereader-integration-lean-101"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:101 --> **L101** Restates the inferred identity equality directly on the candidate variable.

<a id="line-code-leanified-corereader-integration-lean-102"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:102 --> **L102** Replaces the candidate algorithm with identity while retaining its governance mode.

<a id="line-code-leanified-corereader-integration-lean-103"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:103 --> **L103** Identity's run equals the required output at every input by definition, proving capability in this world.

<a id="line-code-leanified-corereader-integration-lean-105"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:105 --> **L105** Packages the actual observation and capability claim in an empirical facet with unrestricted scope and trivial uncertainty.

<a id="line-code-leanified-corereader-integration-lean-107"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:107 --> **L107** Supplies an actual compatible witness, the closed-model support proof and trivial uncertainty.

<a id="line-code-leanified-corereader-integration-lean-108"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:108 --> **L108** Supplies actual as a compatible world in the facet's unrestricted scope, avoiding an empty-world discharge.

<a id="line-code-leanified-corereader-integration-lean-109"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:109 --> **L109** Uses observedCapability for support in every compatible world; the stated uncertainty condition is trivial.

<a id="line-code-leanified-corereader-integration-lean-111"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:111 --> **L111** Builds canonical Grounds for this exact capability facet.

<a id="line-code-leanified-corereader-integration-lean-112"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:112 --> **L112** Makes only the actual output capability facet applicable, with its own singleton evidence package.

<a id="line-code-leanified-corereader-integration-lean-113"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:113 --> **L113** Applies the singleton Grounds constructor to the already discharged capability facet.

<a id="line-code-leanified-corereader-integration-lean-115"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:115 --> **L115** Proves actual identity/apply jointly satisfies capability, budget, observation assumptions and governance/domain scope.

<a id="line-code-leanified-corereader-integration-lean-116"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:116 --> **L116** Builds an admissible actual-world witness, first proving both jointly held claims; capability uses capabilityActual.

<a id="line-code-leanified-corereader-integration-lean-117"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:117 --> **L117** The held budget claim computes to actual cost 1 within budget 1.

<a id="line-code-leanified-corereader-integration-lean-118"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:118 --> **L118** Adds compatibility with the zero observation, domain membership at zero, and actual's apply mode.

<a id="line-code-leanified-corereader-integration-lean-120"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:120 --> **L120** Derives consistency from the explicitly established actual admissible world.

<a id="line-code-leanified-corereader-integration-lean-121"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:121 --> **L121** Applies semantic consequence consistency using actual and its admissibility proof as the required nonempty witness.

<a id="line-code-leanified-corereader-integration-lean-123"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:123 --> **L123** Documents the following definition or result: Conjoins this system's generation policy, contextual consistency, full content-valid reflexivity and current method/principle form membership.

<a id="line-code-leanified-corereader-integration-lean-124"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:124 --> **L124** Conjoins this system's generation policy, contextual consistency, full content-valid reflexivity and current method/principle form membership.

<a id="line-code-leanified-corereader-integration-lean-125"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:125 --> **L125** The Charter requires this system's actual policy to be Generative and its jointly held judgments contextually consistent.

<a id="line-code-leanified-corereader-integration-lean-126"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:126 --> **L126** It also requires full owned-rule reflexivity for this system's actual work log.

<a id="line-code-leanified-corereader-integration-lean-127"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:127 --> **L127** Both the method form and principle form must be current under that same policy.

<a id="line-code-leanified-corereader-integration-lean-129"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:129 --> **L129** Combines evaluated open-policy facts, actual consistency and the content-validated own-work model.

<a id="line-code-leanified-corereader-integration-lean-130"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:130 --> **L130** Combines openPolicy's valuation/revisability, jointConsistent, the complete owned log and both version-zero current forms.

<a id="line-code-leanified-corereader-integration-lean-132"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:132 --> **L132** Documents the following definition or result: Adds the system's zero-input output fact to its existing held theory.

<a id="line-code-leanified-corereader-integration-lean-133"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:133 --> **L133** Adds the system's zero-input output fact to its existing held theory.

<a id="line-code-leanified-corereader-integration-lean-134"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:134 --> **L134** Adds the specific assertion that this same method meets its required output at input zero.

<a id="line-code-leanified-corereader-integration-lean-136"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:136 --> **L136** Stores the actual held theory/context with revision identity zero.

<a id="line-code-leanified-corereader-integration-lean-137"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:137 --> **L137** Stores the extended held theory with the same context and revision identity one.

<a id="line-code-leanified-corereader-integration-lean-139"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:139 --> **L139** Opens provenance metadata binding CoreReader.Integration.revisionKeepsConsistency to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-140"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:140 --> **L140** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-141"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:141 --> **L141** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-142"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:142 --> **L142** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-143"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:143 --> **L143** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-144"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:144 --> **L144** Keeps the same charter and an admissible model after the added fact, then accepts true and rejects false revision reporting.

<a id="line-code-leanified-corereader-integration-lean-145"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:145 --> **L145** The actual system retains its Charter, and adding that supported assertion leaves revisedHeld consistent.

<a id="line-code-leanified-corereader-integration-lean-146"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:146 --> **L146** Reporting the identified revision as true satisfies the one-way change-report condition.

<a id="line-code-leanified-corereader-integration-lean-147"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:147 --> **L147** Reporting that same revision as false violates the condition.

<a id="line-code-leanified-corereader-integration-lean-148"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:148 --> **L148** Keeps charterChecked and proves revised consistency with actual as a concrete admissible witness.

<a id="line-code-leanified-corereader-integration-lean-149"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:149 --> **L149** Actual satisfies old held claims plus the newly added zero-input output assertion.

<a id="line-code-leanified-corereader-integration-lean-150"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:150 --> **L150** Retains actual's existing context/scope proof and verifies a true report; only rejection of a false report remains.

<a id="line-code-leanified-corereader-integration-lean-151"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:151 --> **L151** Assumes the changed snapshots could satisfy TruthfulReport with report=false.

<a id="line-code-leanified-corereader-integration-lean-152"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:152 --> **L152** The revision identifiers 0 and 1 differ, so that assumed obligation forces false=true.

<a id="line-code-leanified-corereader-integration-lean-153"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:153 --> **L153** Eliminates that impossible Boolean equality, rejecting the concealed revision.

<a id="line-code-leanified-corereader-integration-lean-155"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:155 --> **L155** Documents the following definition or result: Requires this system's assessment record and matching Grounds for its own capability claim.

<a id="line-code-leanified-corereader-integration-lean-156"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:156 --> **L156** Requires this system's assessment record and matching Grounds for its own capability claim.

<a id="line-code-leanified-corereader-integration-lean-157"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:157 --> **L157** OwnCapabilityDuty first requires an actual assessment record targeting this system's owner-identical system subject.

<a id="line-code-leanified-corereader-integration-lean-158"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:158 --> **L158** It also requires same-claim Grounds for this system's output capability over all listed applicable facets.

<a id="line-code-leanified-corereader-integration-lean-160"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:160 --> **L160** Opens provenance metadata binding CoreReader.Integration.ownCapabilityGrounded to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-161"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:161 --> **L161** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-162"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:162 --> **L162** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-163"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:163 --> **L163** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-164"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:164 --> **L164** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-165"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:165 --> **L165** Combines the actual content-validated self-assessment record with observation-supported capability Grounds and capability truth.

<a id="line-code-leanified-corereader-integration-lean-166"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:166 --> **L166** States that the actual system's own capability duty is fulfilled and its claimed capability actually holds.

<a id="line-code-leanified-corereader-integration-lean-167"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:167 --> **L167** Supplies capabilityActual immediately, leaving the system-assessment record and corresponding Grounds.

<a id="line-code-leanified-corereader-integration-lean-168"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:168 --> **L168** Uses the complete log's assessment of system zero as the owned-system work witness.

<a id="line-code-leanified-corereader-integration-lean-169"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:169 --> **L169** Builds Grounds from the nonempty singleton capability-facet list.

<a id="line-code-leanified-corereader-integration-lean-170"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:170 --> **L170** The singleton's only facet has exactly the target claim and the already proved discharge.

<a id="line-code-leanified-corereader-integration-lean-172"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:172 --> **L172** Documents the following definition or result: Records cost at most two for the same system implementation; both candidates pass.

<a id="line-code-leanified-corereader-integration-lean-173"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:173 --> **L173** Records cost at most two for the same system implementation; both candidates pass.

<a id="line-code-leanified-corereader-integration-lean-174"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:174 --> **L174** Records that implementation cost is at most two; both algorithm candidates satisfy this weaker cost observation.

<a id="line-code-leanified-corereader-integration-lean-176"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:176 --> **L176** Attempts to support the same output capability from only the permissive cost observation.

<a id="line-code-leanified-corereader-integration-lean-177"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:177 --> **L177** Attempts to support output capability using only cost evidence, with no restrictive scope or uncertainty condition.

<a id="line-code-leanified-corereader-integration-lean-179"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:179 --> **L179** Computes that successor/apply satisfies the cost observation despite failing identity output.

<a id="line-code-leanified-corereader-integration-lean-180"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:180 --> **L180** Takes a record belonging to the singleton cost-observation list.

<a id="line-code-leanified-corereader-integration-lean-181"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:181 --> **L181** Singleton membership identifies that record as costAllowanceRecord.

<a id="line-code-leanified-corereader-integration-lean-182"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:182 --> **L182** Substitutes the actual cost record for r.

<a id="line-code-leanified-corereader-integration-lean-183"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:183 --> **L183** Successor costs two, so the recorded at-most-two observation evaluates true.

<a id="line-code-leanified-corereader-integration-lean-185"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:185 --> **L185** Applies alleged support to the compatible successor counterworld and input zero to derive contradiction.

<a id="line-code-leanified-corereader-integration-lean-186"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:186 --> **L186** Assumes the cost observation supports output capability in every compatible world.

<a id="line-code-leanified-corereader-integration-lean-187"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:187 --> **L187** Applies that assumption to the compatible successor world and input zero, obtaining the false equation 1=0.

<a id="line-code-leanified-corereader-integration-lean-188"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:188 --> **L188** Eliminates the impossible output equality, refuting cost-only support.

<a id="line-code-leanified-corereader-integration-lean-190"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:190 --> **L190** Extracts the bad facet's support obligation from alleged Grounds and contradicts the cost countermodel.

<a id="line-code-leanified-corereader-integration-lean-191"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:191 --> **L191** Tests the singleton package that makes this cost-only capability facet applicable.

<a id="line-code-leanified-corereader-integration-lean-192"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:192 --> **L192** Assumes that inadequate singleton package nonetheless satisfies Grounds.

<a id="line-code-leanified-corereader-integration-lean-193"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:193 --> **L193** Extracts FacetDischarged for its actual cost-only capability facet from the Grounds premise.

<a id="line-code-leanified-corereader-integration-lean-194"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:194 --> **L194** Its support clause would yield cost-only Supports, contradicting costDoesNotSupportOutput.

<a id="line-code-leanified-corereader-integration-lean-196"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:196 --> **L196** Documents the following definition or result: Indexes five individual governance commitments, each with separately interpreted reasons and outcomes.

<a id="line-code-leanified-corereader-integration-lean-197"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:197 --> **L197** Indexes five individual governance commitments, each with separately interpreted reasons and outcomes.

<a id="line-code-leanified-corereader-integration-lean-198"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:198 --> **L198** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-integration-lean-200"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:200 --> **L200** Documents the following definition or result: Applying mode permits a claim bundle only when Grounds holds; waiving mode permits every bundle.

<a id="line-code-leanified-corereader-integration-lean-201"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:201 --> **L201** Applying mode permits a claim bundle only when Grounds holds; waiving mode permits every bundle.

<a id="line-code-leanified-corereader-integration-lean-202"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:202 --> **L202** Accepts an arbitrary applicability predicate and supplied facet package for the same claim/articulations.

<a id="line-code-leanified-corereader-integration-lean-203"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:203 --> **L203** Chooses the permission rule according to the governance mode.

<a id="line-code-leanified-corereader-integration-lean-204"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:204 --> **L204** Apply mode permits a package only when it actually satisfies Grounds.

<a id="line-code-leanified-corereader-integration-lean-205"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:205 --> **L205** Waive mode permits every package without checking Grounds.

<a id="line-code-leanified-corereader-integration-lean-207"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:207 --> **L207** States the general requirement that every permitted claim bundle has Grounds, across all claims, articulations, applicable facets and lists.

<a id="line-code-leanified-corereader-integration-lean-208"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:208 --> **L208** For every actual claim, articulation family and facet package, provision applies to any package the mode permits.

<a id="line-code-leanified-corereader-integration-lean-209"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:209 --> **L209** Every permitted package must satisfy its own corresponding Grounds duties.

<a id="line-code-leanified-corereader-integration-lean-211"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:211 --> **L211** Proves applying mode enforces the general provision, while the concrete unsupported cost bundle refutes waiving mode.

<a id="line-code-leanified-corereader-integration-lean-212"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:212 --> **L212** Checks the general provision separately for apply and waive modes.

<a id="line-code-leanified-corereader-integration-lean-213"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:213 --> **L213** In apply mode permission already is Grounds, so the general provision passes by returning the supplied proof.

<a id="line-code-leanified-corereader-integration-lean-214"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:214 --> **L214** For waive mode, the proof must show that unrestricted permission violates the general provision.

<a id="line-code-leanified-corereader-integration-lean-215"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:215 --> **L215** Proves both directions of the impossible waive-mode equivalence.

<a id="line-code-leanified-corereader-integration-lean-216"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:216 --> **L216** Assumes the general provision holds even though this mode waives checks.

<a id="line-code-leanified-corereader-integration-lean-217"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:217 --> **L217** Applies that universal assumption to the actual unsupported capability package, which would contradict unsupportedGrounds.

<a id="line-code-leanified-corereader-integration-lean-218"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:218 --> **L218** Supplies its exact singleton applicability and package; waive permission is true, forcing the invalid Grounds result.

<a id="line-code-leanified-corereader-integration-lean-219"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:219 --> **L219** The reverse implication starts from waive=apply, an impossible constructor equality.

<a id="line-code-leanified-corereader-integration-lean-221"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:221 --> **L221** Documents the following definition or result: Applying mode requires consistency for a proposed theory/context; waiving mode permits it unconditionally.

<a id="line-code-leanified-corereader-integration-lean-222"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:222 --> **L222** Applying mode requires consistency for a proposed theory/context; waiving mode permits it unconditionally.

<a id="line-code-leanified-corereader-integration-lean-223"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:223 --> **L223** Apply requires whole-theory consistency in context; waive imposes no such constraint.

<a id="line-code-leanified-corereader-integration-lean-225"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:225 --> **L225** Combines the actual capability claim with its negation in one theory.

<a id="line-code-leanified-corereader-integration-lean-227"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:227 --> **L227** Extracts both signed capability consequences from the simultaneously held contradictory claims.

<a id="line-code-leanified-corereader-integration-lean-228"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:228 --> **L228** The conflicting held theory entails positive output correctness under the fixed context.

<a id="line-code-leanified-corereader-integration-lean-229"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:229 --> **L229** The same theory and context also entail its negative judgment.

<a id="line-code-leanified-corereader-integration-lean-230"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:230 --> **L230** An admissible world's model of conflictingHeld must satisfy its explicitly included capability claim.

<a id="line-code-leanified-corereader-integration-lean-231"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:231 --> **L231** That same model must also satisfy the explicitly included negation of capability.

<a id="line-code-leanified-corereader-integration-lean-233"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:233 --> **L233** Uses those same-context opposite consequences to refute consistency.

<a id="line-code-leanified-corereader-integration-lean-234"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:234 --> **L234** Uses the two opposite same-context consequences to refute consistency of the conflicting held theory.

<a id="line-code-leanified-corereader-integration-lean-236"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:236 --> **L236** Documents the following definition or result: Applying governance uses the separate feasible relevant-choice norm; waiving governance accepts every proposed reason list.

<a id="line-code-leanified-corereader-integration-lean-237"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:237 --> **L237** Applying governance uses the separate feasible relevant-choice norm; waiving governance accepts every proposed reason list.

<a id="line-code-leanified-corereader-integration-lean-238"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:238 --> **L238** Apply enforces actual feasibility and reason relevance through JustifiedChoice; waive allows any selection package.

<a id="line-code-leanified-corereader-integration-lean-240"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:240 --> **L240** Documents the following definition or result: Applying mode proposes successor, while waiving proposes the unchanged copy operation.

<a id="line-code-leanified-corereader-integration-lean-241"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:241 --> **L241** Applying mode proposes successor, while waiving proposes the unchanged copy operation.

<a id="line-code-leanified-corereader-integration-lean-242"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:242 --> **L242** Applying the generation rule proposes successor, whose output can differ from copy.

<a id="line-code-leanified-corereader-integration-lean-243"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:243 --> **L243** Waiving that rule proposes the unchanged copy operation.

<a id="line-code-leanified-corereader-integration-lean-245"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:245 --> **L245** Applying mode tests zero and one; waiving mode tests only the passing sample one.

<a id="line-code-leanified-corereader-integration-lean-246"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:246 --> **L246** Applying reflexive assessment checks both zero and one, including the arithmetic counterexample.

<a id="line-code-leanified-corereader-integration-lean-247"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:247 --> **L247** Waiving it checks only one, the sample where the arithmetic principle passes.

<a id="line-code-leanified-corereader-integration-lean-249"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:249 --> **L249** Classically decides the consistency-permission proposition for the concrete conflicting theory; it is noncomputable, not a deployed checker.

<a id="line-code-leanified-corereader-integration-lean-250"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:250 --> **L250** Uses classical propositional decision to turn the whole conflicting-theory permission into a Boolean; no executable decision algorithm is supplied.

<a id="line-code-leanified-corereader-integration-lean-252"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:252 --> **L252** Classically decides whether the chosen mode permits the given exact singleton facet bundle.

<a id="line-code-leanified-corereader-integration-lean-253"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:253 --> **L253** Decides permission for this facet's own claim and its exact singleton assessment package.

<a id="line-code-leanified-corereader-integration-lean-254"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:254 --> **L254** Supplies classical decidability for that potentially noncomputable Grounds proposition.

<a id="line-code-leanified-corereader-integration-lean-256"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:256 --> **L256** Classically decides permission for the specified implementation/reasons under identity requirements.

<a id="line-code-leanified-corereader-integration-lean-257"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:257 --> **L257** Classically decides this implementation's permission under fixed identity requirements and its supplied reasons.

<a id="line-code-leanified-corereader-integration-lean-259"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:259 --> **L259** Proves applying mode rejects contradiction, unsupported capability and infeasible cheap successor while accepting actual capability and identity choice.

<a id="line-code-leanified-corereader-integration-lean-260"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:260 --> **L260** Applying Grounds rejects the cost-only capability package.

<a id="line-code-leanified-corereader-integration-lean-261"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:261 --> **L261** Applying Grounds accepts the properly supported output-observation package.

<a id="line-code-leanified-corereader-integration-lean-262"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:262 --> **L262** Applying choice rejects cheapSuccessor despite its relevant simplicity reason, because its output is infeasible.

<a id="line-code-leanified-corereader-integration-lean-263"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:263 --> **L263** Applying choice accepts identity with its actual output reason.

<a id="line-code-leanified-corereader-integration-lean-264"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:264 --> **L264** Enables the classical decidability instances used in these Boolean permission definitions.

<a id="line-code-leanified-corereader-integration-lean-265"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:265 --> **L265** Unfolds the three Boolean decisions and their apply-mode consistency predicate.

<a id="line-code-leanified-corereader-integration-lean-266"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:266 --> **L266** Also unfolds Grounds and choice permission, exposing the actual propositions each Boolean decides.

<a id="line-code-leanified-corereader-integration-lean-267"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:267 --> **L267** The proved inconsistency forces conflictDecision apply to false.

<a id="line-code-leanified-corereader-integration-lean-268"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:268 --> **L268** The failed cost package decides false, while the discharged observation package decides true.

<a id="line-code-leanified-corereader-integration-lean-269"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:269 --> **L269** The infeasible cheap method decides false; the feasible justified identity decides true.

<a id="line-code-leanified-corereader-integration-lean-271"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:271 --> **L271** Computes that waiving mode accepts the concrete contradiction, unsupported facet and infeasible choice.

<a id="line-code-leanified-corereader-integration-lean-272"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:272 --> **L272** Waive mode accepts even the unsupported cost-only capability package.

<a id="line-code-leanified-corereader-integration-lean-273"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:273 --> **L273** It also accepts cheapSuccessor with simplicity alone despite the wrong output.

<a id="line-code-leanified-corereader-integration-lean-274"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:274 --> **L274** Starts the waiver calculation with consistencyPermission, which is definitionally True in this mode.

<a id="line-code-leanified-corereader-integration-lean-275"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:275 --> **L275** Uses that trivial permission proof to obtain the true Boolean conflict decision.

<a id="line-code-leanified-corereader-integration-lean-276"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:276 --> **L276** Next decides waiver permission for the exact unsupported capability facet's claim.

<a id="line-code-leanified-corereader-integration-lean-277"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:277 --> **L277** Its singleton applicability/package is unchanged; waiver makes permission True and the decision true.

<a id="line-code-leanified-corereader-integration-lean-278"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:278 --> **L278** Finally decides waiver permission for the same cheap method and simplicity-only reasons.

<a id="line-code-leanified-corereader-integration-lean-279"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:279 --> **L279** That permission is again trivially True, completing all three waiver decisions.

<a id="line-code-leanified-corereader-integration-lean-281"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:281 --> **L281** Documents the following definition or result: For each commitment, interprets governance modes as options with its own operational outcome, objective, constraint, actual reasons and scoped criticism response.

<a id="line-code-leanified-corereader-integration-lean-282"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:282 --> **L282** For each commitment, interprets governance modes as options with its own operational outcome, objective, constraint, actual reasons and scoped criticism response.

<a id="line-code-leanified-corereader-integration-lean-283"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:283 --> **L283** Chooses a different operational value-position adapter for each of the five commitments.

<a id="line-code-leanified-corereader-integration-lean-284"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:284 --> **L284** Constructs the value position for the generation commitment.

<a id="line-code-leanified-corereader-integration-lean-285"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:285 --> **L285** Its positions are governance modes, outcomes are operations, and adoption is compared with this same system's selected governance.

<a id="line-code-leanified-corereader-integration-lean-286"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:286 --> **L286** Maps a mode to the actual proposed successor-or-copy operation.

<a id="line-code-leanified-corereader-integration-lean-287"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:287 --> **L287** The adopted generation objective requires output at zero to differ from copy's zero output.

<a id="line-code-leanified-corereader-integration-lean-288"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:288 --> **L288** Also requires the mode's actual policy to satisfy the adopted Generative constraints.

<a id="line-code-leanified-corereader-integration-lean-289"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:289 --> **L289** Explicitly assumes the same system has selected chosenMode; this is a starting commitment, not a derived universal fact.

<a id="line-code-leanified-corereader-integration-lean-290"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:290 --> **L290** Its option-dependent reason compares the proposed operation's 0→1 behavior with copy's 0→0 behavior.

<a id="line-code-leanified-corereader-integration-lean-291"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:291 --> **L291** Limits this generation position to worlds whose implementation candidate is identity.

<a id="line-code-leanified-corereader-integration-lean-292"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:292 --> **L292** Keeps actual inventory inflation without expansion as a relevant criticism of the generation commitment.

<a id="line-code-leanified-corereader-integration-lean-293"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:293 --> **L293** Responds that orientation does not guarantee progress and before/after capabilities need separate assessment; the stored response is nonempty text.

<a id="line-code-leanified-corereader-integration-lean-294"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:294 --> **L294** Constructs the distinct value position for the consistency commitment.

<a id="line-code-leanified-corereader-integration-lean-295"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:295 --> **L295** Uses modes as positions and a Boolean conflict-admission decision as outcome, tied to the same selected governance.

<a id="line-code-leanified-corereader-integration-lean-296"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:296 --> **L296** Its actual outcome is the mode's decision on the whole conflicting theory.

<a id="line-code-leanified-corereader-integration-lean-297"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:297 --> **L297** Requires that decision to reject the conflicting theory.

<a id="line-code-leanified-corereader-integration-lean-298"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:298 --> **L298** Simultaneously requires the actual held theory and context to pass the same mode's consistency permission.

<a id="line-code-leanified-corereader-integration-lean-299"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:299 --> **L299** States adoption of chosenMode by the same system as this position's explicit starting assumption.

<a id="line-code-leanified-corereader-integration-lean-300"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:300 --> **L300** The consistency reason begins with the conflicting theory's positive output-correctness consequence.

<a id="line-code-leanified-corereader-integration-lean-301"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:301 --> **L301** It also includes the opposite consequence under exactly the same question and context.

<a id="line-code-leanified-corereader-integration-lean-302"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:302 --> **L302** Limits this consistency position to identity-candidate worlds.

<a id="line-code-leanified-corereader-integration-lean-303"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:303 --> **L303** Uses the empty Bool theory's failure to entail truth at every world as the live incompleteness criticism.

<a id="line-code-leanified-corereader-integration-lean-304"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:304 --> **L304** Responds that consistency alone does not establish sufficient support and the claim's grounds still need assessment.

<a id="line-code-leanified-corereader-integration-lean-305"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:305 --> **L305** Constructs the value position for reflexive assessment.

<a id="line-code-leanified-corereader-integration-lean-306"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:306 --> **L306** Uses modes as positions and an actual sample-input list as outcome, tied to the same selected governance.

<a id="line-code-leanified-corereader-integration-lean-307"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:307 --> **L307** The mode chooses the sample set [0,1] or [1].

<a id="line-code-leanified-corereader-integration-lean-308"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:308 --> **L308** Requires some actually selected sample to expose a false result of the same arithmetic principle.

<a id="line-code-leanified-corereader-integration-lean-309"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:309 --> **L309** Also requires full owner-zero rule/work reflexivity for that same mode.

<a id="line-code-leanified-corereader-integration-lean-310"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:310 --> **L310** Explicitly adopts chosenMode for this same system as the starting commitment.

<a id="line-code-leanified-corereader-integration-lean-311"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:311 --> **L311** The reason identifies actual arithmetic failure at zero and success at one.

<a id="line-code-leanified-corereader-integration-lean-312"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:312 --> **L312** Restricts this reflexivity position to identity-candidate worlds.

<a id="line-code-leanified-corereader-integration-lean-313"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:313 --> **L313** Retains the passing test at one together with the actual failure at zero as criticism.

<a id="line-code-leanified-corereader-integration-lean-314"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:314 --> **L314** Responds that passing a self-test does not certify the principle and the counterexample's scope must be retained.

<a id="line-code-leanified-corereader-integration-lean-315"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:315 --> **L315** Constructs the value position for the Grounds provision itself.

<a id="line-code-leanified-corereader-integration-lean-316"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:316 --> **L316** Uses modes as positions and a Boolean evidence-package decision as outcome, under the same system's governance.

<a id="line-code-leanified-corereader-integration-lean-317"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:317 --> **L317** The actual outcome tests the unsupported cost-only capability facet.

<a id="line-code-leanified-corereader-integration-lean-318"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:318 --> **L318** Requires rejection of that unsupported evidence package.

<a id="line-code-leanified-corereader-integration-lean-319"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:319 --> **L319** Also requires permission for the actual capability claim with its content-derived articulations.

<a id="line-code-leanified-corereader-integration-lean-320"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:320 --> **L320** That positive constraint uses exactly the properly discharged singleton capabilityFacet package.

<a id="line-code-leanified-corereader-integration-lean-321"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:321 --> **L321** States this same system's adoption of chosenMode as an explicit starting commitment.

<a id="line-code-leanified-corereader-integration-lean-322"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:322 --> **L322** The Grounds reason records that the successor/apply world is compatible with the cost observation.

<a id="line-code-leanified-corereader-integration-lean-323"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:323 --> **L323** It pairs that compatibility with actual failure of the claimed output capability in that same world.

<a id="line-code-leanified-corereader-integration-lean-324"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:324 --> **L324** Restricts this Grounds position to identity-candidate worlds.

<a id="line-code-leanified-corereader-integration-lean-325"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:325 --> **L325** The criticism points to the same process having the output contract without an attached explanation contract.

<a id="line-code-leanified-corereader-integration-lean-326"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:326 --> **L326** Responds that external output assessment can supply Grounds without requiring this process to explain its internal generation.

<a id="line-code-leanified-corereader-integration-lean-327"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:327 --> **L327** Constructs the separate value position for implementation choice.

<a id="line-code-leanified-corereader-integration-lean-328"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:328 --> **L328** Uses modes as positions and a Boolean method-admission decision as outcome, under the same governance selection.

<a id="line-code-leanified-corereader-integration-lean-329"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:329 --> **L329** The tested choice is the cheap successor justified only by its simplicity reason.

<a id="line-code-leanified-corereader-integration-lean-330"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:330 --> **L330** Requires rejection of that wrong-output choice.

<a id="line-code-leanified-corereader-integration-lean-331"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:331 --> **L331** Also requires acceptance of identity under the same requirements with its actual output reason.

<a id="line-code-leanified-corereader-integration-lean-332"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:332 --> **L332** Explicitly adopts chosenMode for this system; the value starting point is not proved from neutral facts.

<a id="line-code-leanified-corereader-integration-lean-333"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:333 --> **L333** The choice reason contrasts cheapSuccessor's output one with the required output zero on the same input.

<a id="line-code-leanified-corereader-integration-lean-334"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:334 --> **L334** Also records that the method fits the budget, so cheapness cannot conceal its output failure.

<a id="line-code-leanified-corereader-integration-lean-335"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:335 --> **L335** Limits this choice position to identity-candidate worlds.

<a id="line-code-leanified-corereader-integration-lean-336"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:336 --> **L336** Keeps identity's actual conventional and established status as a relevant criticism of excluding existing methods.

<a id="line-code-leanified-corereader-integration-lean-337"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:337 --> **L337** Responds that a conventional existing method remains eligible when actual output and budget reasons justify it.

<a id="line-code-leanified-corereader-integration-lean-339"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:339 --> **L339** Specializes each individually interpreted position to adopting applying governance.

<a id="line-code-leanified-corereader-integration-lean-341"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:341 --> **L341** Documents the following definition or result: Checks every listed commitment-specific reason at the same actual world and adopted mode by concrete counterexamples or computation.

<a id="line-code-leanified-corereader-integration-lean-342"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:342 --> **L342** Checks every listed commitment-specific reason at the same actual world and adopted mode by concrete counterexamples or computation.

<a id="line-code-leanified-corereader-integration-lean-343"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:343 --> **L343** Every actual listed reason for commitment c must hold at actual for its adopted apply option.

<a id="line-code-leanified-corereader-integration-lean-344"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:344 --> **L344** Separates the five commitments and unfolds each actual reason list while fixing a listed reason r.

<a id="line-code-leanified-corereader-integration-lean-345"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:345 --> **L345** Each list is a singleton, so the membership premise identifies r with that commitment's concrete reason.

<a id="line-code-leanified-corereader-integration-lean-346"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:346 --> **L346** Generation's reason computes successor 0=1 and copy 0=0.

<a id="line-code-leanified-corereader-integration-lean-347"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:347 --> **L347** Consistency's reason uses the already proved positive and negative consequences of the same conflicting theory.

<a id="line-code-leanified-corereader-integration-lean-348"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:348 --> **L348** Reflexivity's reason computes failure at zero and success at one for the same arithmetic principle.

<a id="line-code-leanified-corereader-integration-lean-349"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:349 --> **L349** For Grounds, supplies the successor world's cost compatibility and leaves its capability failure to prove.

<a id="line-code-leanified-corereader-integration-lean-350"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:350 --> **L350** Assumes that same successor world nevertheless has the required output capability.

<a id="line-code-leanified-corereader-integration-lean-351"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:351 --> **L351** At required input zero, that assumption yields successor's output one equal to required zero.

<a id="line-code-leanified-corereader-integration-lean-352"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:352 --> **L352** Eliminates the impossible 1=0 equality, proving the capability failure part of the reason.

<a id="line-code-leanified-corereader-integration-lean-353"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:353 --> **L353** Choice's reason computes output one, required zero and the cheap method's within-budget cost.

<a id="line-code-leanified-corereader-integration-lean-355"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:355 --> **L355** Documents the following definition or result: Proves each adopted mode has its stated objective and constraint using actual decision and compliance theorems, without asserting ultimate normative validity.

<a id="line-code-leanified-corereader-integration-lean-356"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:356 --> **L356** Proves each adopted mode has its stated objective and constraint using actual decision and compliance theorems, without asserting ultimate normative validity.

<a id="line-code-leanified-corereader-integration-lean-357"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:357 --> **L357** Unfolds each commitment's consequence into its actual objective and mode-dependent constraint.

<a id="line-code-leanified-corereader-integration-lean-358"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:358 --> **L358** Generation's apply option differs from copy at zero and its openPolicy satisfies valuation plus revisability.

<a id="line-code-leanified-corereader-integration-lean-359"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:359 --> **L359** Consistency's apply option rejects the conflicting theory while the actual held theory remains consistent.

<a id="line-code-leanified-corereader-integration-lean-360"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:360 --> **L360** Reflexivity chooses the actual counterexample zero from [0,1] and supplies full contentful owned-work reflexivity.

<a id="line-code-leanified-corereader-integration-lean-361"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:361 --> **L361** Grounds rejects the unsupported cost package while the proper capability package has Grounds.

<a id="line-code-leanified-corereader-integration-lean-362"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:362 --> **L362** Choice rejects cheapSuccessor and retains the justified feasible identity implementation.

<a id="line-code-leanified-corereader-integration-lean-364"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:364 --> **L364** Builds nonempty reason lists, joint adoption, checked option consequences and nonempty responses for every commitment; reason assumptions are not needed by the already proved consequences.

<a id="line-code-leanified-corereader-integration-lean-365"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:365 --> **L365** Splits ValueProcedure into nonempty reasons, joint adoption, the scoped consequence rule and criticism response.

<a id="line-code-leanified-corereader-integration-lean-366"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:366 --> **L366** Checks that every commitment's actual reason list contains its singleton reason.

<a id="line-code-leanified-corereader-integration-lean-367"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:367 --> **L367** Uses the same actual world for JointAdoption and supplies positionReasons c; remaining goals are starting-theory membership, limits and adoption.

<a id="line-code-leanified-corereader-integration-lean-368"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:368 --> **L368** In actual, governance is apply, so the singleton starting theory selecting the adopted mode holds.

<a id="line-code-leanified-corereader-integration-lean-369"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:369 --> **L369** For each commitment, actual's identity candidate satisfies its declared limit.

<a id="line-code-leanified-corereader-integration-lean-370"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:370 --> **L370** For each commitment, actual's selected governance equals the adopted apply option.

<a id="line-code-leanified-corereader-integration-lean-371"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:371 --> **L371** Takes an arbitrary world and the procedure's starting, limit and all-reasons premises for its consequence clause.

<a id="line-code-leanified-corereader-integration-lean-372"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:372 --> **L372** Uses positionConsequence, which already proves that apply option's objective and constraints for every world; these premises are not needed here.

<a id="line-code-leanified-corereader-integration-lean-373"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:373 --> **L373** For the response clause, takes a world with an in-scope relevant criticism.

<a id="line-code-leanified-corereader-integration-lean-374"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:374 --> **L374** Every commitment returns its actual stored nonempty response string, satisfying the response-existence requirement.

<a id="line-code-leanified-corereader-integration-lean-376"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:376 --> **L376** Documents the following definition or result: Provides an actual in-scope criticism case for each commitment, avoiding vacuous response obligations in these examples.

<a id="line-code-leanified-corereader-integration-lean-377"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:377 --> **L377** Provides an actual in-scope criticism case for each commitment, avoiding vacuous response obligations in these examples.

<a id="line-code-leanified-corereader-integration-lean-378"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:378 --> **L378** Requires both that actual is inside this commitment's limits and that its specific criticism really applies there.

<a id="line-code-leanified-corereader-integration-lean-379"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:379 --> **L379** Separates the actual-limit check from the actual-criticism check.

<a id="line-code-leanified-corereader-integration-lean-380"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:380 --> **L380** Every limit asks for identity, which is actual's candidate by definition.

<a id="line-code-leanified-corereader-integration-lean-381"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:381 --> **L381** Checks each commitment's distinct criticism rather than assuming criticism vacuously.

<a id="line-code-leanified-corereader-integration-lean-382"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:382 --> **L382** Generation's criticism holds because inflating baseline lists creates no newly understood or constructed operation.

<a id="line-code-leanified-corereader-integration-lean-383"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:383 --> **L383** Consistency's criticism uses the empty theory's proved failure to entail the selected Bool claim.

<a id="line-code-leanified-corereader-integration-lean-384"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:384 --> **L384** Reflexivity's criticism computes a passing sample at one and failure at zero.

<a id="line-code-leanified-corereader-integration-lean-385"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:385 --> **L385** Grounds' criticism combines actual output correctness of outputOnlyProcess with its absent explanation contract.

<a id="line-code-leanified-corereader-integration-lean-386"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:386 --> **L386** Choice's criticism holds because identity is actually conventional and established.

<a id="line-code-leanified-corereader-integration-lean-388"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:388 --> **L388** Documents the following definition or result: Shows the waiving option fails each unchanged commitment-specific objective or constraint.

<a id="line-code-leanified-corereader-integration-lean-389"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:389 --> **L389** Shows the waiving option fails each unchanged commitment-specific objective or constraint.

<a id="line-code-leanified-corereader-integration-lean-390"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:390 --> **L390** Claims that every commitment's waive option fails its declared objective or constraint in any world.

<a id="line-code-leanified-corereader-integration-lean-391"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:391 --> **L391** Separates the commitments and assumes the corresponding waive consequence, seeking a contradiction.

<a id="line-code-leanified-corereader-integration-lean-392"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:392 --> **L392** Generation's consequence would require Generative neutralPolicy, contradicting permissionNotValuation's proved failure.

<a id="line-code-leanified-corereader-integration-lean-393"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:393 --> **L393** Consistency's assumed objective says waive must reject the conflicting theory.

<a id="line-code-leanified-corereader-integration-lean-394"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:394 --> **L394** But decisionsWaive computes acceptance=true, turning that objective into true=false.

<a id="line-code-leanified-corereader-integration-lean-395"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:395 --> **L395** Rejects that impossible Boolean equality for the consistency option.

<a id="line-code-leanified-corereader-integration-lean-396"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:396 --> **L396** Reflexivity's assumed objective supplies a selected sample n where the arithmetic principle is false.

<a id="line-code-leanified-corereader-integration-lean-397"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:397 --> **L397** Waive mode's selected samples are exactly [1].

<a id="line-code-leanified-corereader-integration-lean-398"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:398 --> **L398** Membership in that singleton forces the supposed failing input n to be one.

<a id="line-code-leanified-corereader-integration-lean-399"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:399 --> **L399** Replaces n with one in the alleged failure proof.

<a id="line-code-leanified-corereader-integration-lean-400"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:400 --> **L400** The principle actually returns true at one, contradicting its alleged false result.

<a id="line-code-leanified-corereader-integration-lean-401"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:401 --> **L401** Grounds' assumed objective says waive rejects the specific unsupported capability package.

<a id="line-code-leanified-corereader-integration-lean-402"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:402 --> **L402** decisionsWaive instead says that same package is accepted, yielding true=false.

<a id="line-code-leanified-corereader-integration-lean-403"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:403 --> **L403** Rejects the impossible equality, so the waived Grounds consequence fails.

<a id="line-code-leanified-corereader-integration-lean-404"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:404 --> **L404** Choice's assumed objective says waive rejects cheapSuccessor with simplicity alone.

<a id="line-code-leanified-corereader-integration-lean-405"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:405 --> **L405** decisionsWaive proves that exact selection is accepted, again yielding true=false.

<a id="line-code-leanified-corereader-integration-lean-406"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:406 --> **L406** Rejects that equality, completing failure of all five waive consequences.

<a id="line-code-leanified-corereader-integration-lean-408"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:408 --> **L408** Combines a hypothetical joint-adoption witness with consequence failure to reject the opposite mode's procedure.

<a id="line-code-leanified-corereader-integration-lean-409"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:409 --> **L409** Assumes the opposite waive value position nevertheless satisfies ValueProcedure.

<a id="line-code-leanified-corereader-integration-lean-410"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:410 --> **L410** Extracts its JointAdoption witness w, starting-theory proof hs, limit proof hl and all-reasons proof hr.

<a id="line-code-leanified-corereader-integration-lean-411"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:411 --> **L411** The assumed procedure's consequence clause applied to that same joint witness produces the waive consequence, which oppositeConsequenceFails c w refutes.

<a id="line-code-leanified-corereader-integration-lean-413"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:413 --> **L413** Documents the following definition or result: Extracts each position's adoption claim; all use the same governance selector but have separately assessed consequences and reasons.

<a id="line-code-leanified-corereader-integration-lean-414"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:414 --> **L414** Extracts each position's adoption claim; all use the same governance selector but have separately assessed consequences and reasons.

<a id="line-code-leanified-corereader-integration-lean-416"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:416 --> **L416** Wraps the specific interpreted commitment position as a value facet.

<a id="line-code-leanified-corereader-integration-lean-418"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:418 --> **L418** Opens provenance metadata binding CoreReader.Integration.reasonsBelongToCommitments to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-419"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:419 --> **L419** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-420"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:420 --> **L420** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-421"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:421 --> **L421** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-422"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:422 --> **L422** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-423"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:423 --> **L423** Provides per-commitment Grounds, a real joint adoption, actual relevant criticism and rejection of the opposite policy under the same interpreted objective.

<a id="line-code-leanified-corereader-integration-lean-424"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:424 --> **L424** Requires Grounds for the actual adoption claim of commitment c, with articulation built from its facet contents.

<a id="line-code-leanified-corereader-integration-lean-425"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:425 --> **L425** Makes exactly commitmentFacet c applicable and supplies only that same facet.

<a id="line-code-leanified-corereader-integration-lean-426"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:426 --> **L426** Additionally requires a nonempty jointly admissible adoption witness for that position.

<a id="line-code-leanified-corereader-integration-lean-427"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:427 --> **L427** Requires this particular commitment's criticism to actually hold at actual.

<a id="line-code-leanified-corereader-integration-lean-428"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:428 --> **L428** Also proves the opposite waive position fails the same value-procedure requirements.

<a id="line-code-leanified-corereader-integration-lean-429"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:429 --> **L429** Constructs singleton Grounds using that commitment's checked positionProcedure.

<a id="line-code-leanified-corereader-integration-lean-430"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:430 --> **L430** Adds its joint witness, actual criticism and the proved rejection of its opposite position.

<a id="line-code-leanified-corereader-integration-lean-432"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:432 --> **L432** Documents the following definition or result: Proves the grounds position's adoption claim is extensionally the general Grounds provision for the selected governance mode.

<a id="line-code-leanified-corereader-integration-lean-433"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:433 --> **L433** Proves the grounds position's adoption claim is extensionally the general Grounds provision for the selected governance mode.

<a id="line-code-leanified-corereader-integration-lean-434"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:434 --> **L434** To equate the two claims, fixes an arbitrary world w and compares their propositions there.

<a id="line-code-leanified-corereader-integration-lean-435"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:435 --> **L435** Uses proposition extensionality: equivalence of the two propositions suffices for their equality.

<a id="line-code-leanified-corereader-integration-lean-436"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:436 --> **L436** groundsProvisionMeaning says the general provision holds exactly in apply mode, matching this adoption claim in reverse direction.

<a id="line-code-leanified-corereader-integration-lean-438"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:438 --> **L438** Opens provenance metadata binding CoreReader.Integration.groundsSelfAssessment to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-439"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:439 --> **L439** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-440"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:440 --> **L440** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-441"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:441 --> **L441** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-442"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:442 --> **L442** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-443"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:443 --> **L443** Applies value Grounds to the general Grounds provision itself, retaining actual scope/criticism and a rejected waiver variant.

<a id="line-code-leanified-corereader-integration-lean-444"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:444 --> **L444** Assesses the general GroundsProvision itself, quantified over claim/facet packages, with content-derived articulation.

<a id="line-code-leanified-corereader-integration-lean-445"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:445 --> **L445** The applicable value aspect is exactly the grounds commitment's own facet.

<a id="line-code-leanified-corereader-integration-lean-446"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:446 --> **L446** Requires actual to satisfy that commitment's declared limit.

<a id="line-code-leanified-corereader-integration-lean-447"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:447 --> **L447** Requires its criticism to actually apply at actual as well.

<a id="line-code-leanified-corereader-integration-lean-448"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:448 --> **L448** Requires the opposite waived Grounds commitment to fail ValueProcedure.

<a id="line-code-leanified-corereader-integration-lean-449"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:449 --> **L449** Rewrites the general provision as the extensionally identical grounds adoption claim.

<a id="line-code-leanified-corereader-integration-lean-450"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:450 --> **L450** Reuses the actual Grounds proof for that same grounds commitment.

<a id="line-code-leanified-corereader-integration-lean-451"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:451 --> **L451** Supplies the separately checked actual limit and actual relevant criticism.

<a id="line-code-leanified-corereader-integration-lean-452"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:452 --> **L452** Supplies the proved failure of the opposite waived Grounds position.

<a id="line-code-leanified-corereader-integration-lean-454"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:454 --> **L454** Documents the following definition or result: Stores the current philosophical principle form and its actual governance mode.

<a id="line-code-leanified-corereader-integration-lean-455"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:455 --> **L455** Documents the following definition or result: Stores the current philosophical principle form and its actual governance mode.

<a id="line-code-leanified-corereader-integration-lean-456"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:456 --> **L456** Stores the current philosophical principle form and its actual governance mode.

<a id="line-code-leanified-corereader-integration-lean-457"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:457 --> **L457** Stores the actual principle form this philosophy method implements.

<a id="line-code-leanified-corereader-integration-lean-458"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:458 --> **L458** Stores whether this same philosophy method applies or waives its governance checks.

<a id="line-code-leanified-corereader-integration-lean-460"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:460 --> **L460** Derives the reviewed philosophy object from this same system's principle form and governance selection.

<a id="line-code-leanified-corereader-integration-lean-461"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:461 --> **L461** Builds the philosophy method from this system's own principle form and its governance in w.

<a id="line-code-leanified-corereader-integration-lean-463"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:463 --> **L463** Returns approval decisions for the identity proposal at zero and the cheap infeasible proposal otherwise, using this philosophy's actual governance mode.

<a id="line-code-leanified-corereader-integration-lean-464"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:464 --> **L464** Input zero identifies the identity-method proposal; every other input follows the cheap-successor proposal branch.

<a id="line-code-leanified-corereader-integration-lean-465"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:465 --> **L465** For identity, runs this philosophy method's actual choice policy and returns 1 for accept, 0 for reject.

<a id="line-code-leanified-corereader-integration-lean-466"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:466 --> **L466** For other inputs, applies the same policy to cheapSuccessor with simplicity alone, again encoding accept/reject as 1/0.

<a id="line-code-leanified-corereader-integration-lean-468"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:468 --> **L468** Exposes that actual philosophical review procedure as an implementation with domain zero/one and matching output/trace proxies.

<a id="line-code-leanified-corereader-integration-lean-469"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:469 --> **L469** Names the implementation as the current philosophy's actual proposal-review method.

<a id="line-code-leanified-corereader-integration-lean-470"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:470 --> **L470** Marks this proposal-review implementation as conventional.

<a id="line-code-leanified-corereader-integration-lean-471"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:471 --> **L471** Also marks the same implementation as established; later proof tests whether that alone justifies priority.

<a id="line-code-leanified-corereader-integration-lean-472"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:472 --> **L472** The implementation's actual run is precisely this philosophy method's review function.

<a id="line-code-leanified-corereader-integration-lean-473"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:473 --> **L473** Assigns cost one to this review implementation.

<a id="line-code-leanified-corereader-integration-lean-474"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:474 --> **L474** Declares only proposal identifiers zero and one within its application domain.

<a id="line-code-leanified-corereader-integration-lean-475"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:475 --> **L475** Provides the same review function as the implementation's explanation field.

<a id="line-code-leanified-corereader-integration-lean-476"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:476 --> **L476** Records a two-entry trace containing the proposal identifier and its actual review result.

<a id="line-code-leanified-corereader-integration-lean-478"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:478 --> **L478** Requires accepting proposal zero and rejecting proposal one within budget one.

<a id="line-code-leanified-corereader-integration-lean-479"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:479 --> **L479** The application tests exactly proposal identifiers zero and one.

<a id="line-code-leanified-corereader-integration-lean-480"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:480 --> **L480** Requires identity's proposal zero to be accepted as 1 and the other tested proposal to be rejected as 0.

<a id="line-code-leanified-corereader-integration-lean-481"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:481 --> **L481** Allows this review method a cost budget of one.

<a id="line-code-leanified-corereader-integration-lean-482"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:482 --> **L482** Imposes no additional restriction through the requirements' values predicate in this example.

<a id="line-code-leanified-corereader-integration-lean-484"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:484 --> **L484** Computes both requested proposal decisions from applying-governance results.

<a id="line-code-leanified-corereader-integration-lean-485"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:485 --> **L485** For each required proposal, the actual system's current philosophy review must equal the application's expected verdict.

<a id="line-code-leanified-corereader-integration-lean-486"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:486 --> **L486** Takes a proposal n with proof hn that it is one of the required inputs.

<a id="line-code-leanified-corereader-integration-lean-487"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:487 --> **L487** Uses hn to restrict n to the concrete identity or cheap-successor proposal identifier.

<a id="line-code-leanified-corereader-integration-lean-488"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:488 --> **L488** Unfolds the same current philosophy method and actual system to expose the real proposal decisions.

<a id="line-code-leanified-corereader-integration-lean-489"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:489 --> **L489** Uses decisionsApply to match accepted identity and rejected cheap successor against their required verdicts.

<a id="line-code-leanified-corereader-integration-lean-491"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:491 --> **L491** Documents the following definition or result: Binds the implementation to the current principle/governance object, rejects status-only priority and justifies it by its two actual proposal decisions.

<a id="line-code-leanified-corereader-integration-lean-492"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:492 --> **L492** Opens provenance metadata binding CoreReader.Integration.existingPhilosophyNotPrivileged to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-493"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:493 --> **L493** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-494"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:494 --> **L494** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-495"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:495 --> **L495** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-496"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:496 --> **L496** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-497"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:497 --> **L497** Binds the implementation to the current principle/governance object, rejects status-only priority and justifies it by its two actual proposal decisions.

<a id="line-code-leanified-corereader-integration-lean-498"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:498 --> **L498** Checks this philosophy method's form is exactly the actual system's current principle form.

<a id="line-code-leanified-corereader-integration-lean-499"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:499 --> **L499** Checks its governance mode is exactly the same system's mode at actual.

<a id="line-code-leanified-corereader-integration-lean-500"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:500 --> **L500** Begins the claim that status alone cannot justify choosing this actual review implementation.

<a id="line-code-leanified-corereader-integration-lean-501"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:501 --> **L501** The rejected reason list is exactly [.status .standing] for that same philosophy implementation.

<a id="line-code-leanified-corereader-integration-lean-502"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:502 --> **L502** By contrast, asserts this implementation has a justified choice under the actual proposal requirements.

<a id="line-code-leanified-corereader-integration-lean-503"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:503 --> **L503** That positive choice uses its actual output reason, not merely its name or established flag.

<a id="line-code-leanified-corereader-integration-lean-504"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:504 --> **L504** The same philosophy review actually accepts identity's proposal zero with result one.

<a id="line-code-leanified-corereader-integration-lean-505"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:505 --> **L505** It actually rejects cheap successor's proposal one with result zero.

<a id="line-code-leanified-corereader-integration-lean-506"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:506 --> **L506** Provides same-form/mode identities, status-only rejection and correct proposal-zero evaluation; leaves positive output-based choice to prove.

<a id="line-code-leanified-corereader-integration-lean-507"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:507 --> **L507** Also supplies currentReviewCorrect for required proposal one, proving its actual rejection.

<a id="line-code-leanified-corereader-integration-lean-508"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:508 --> **L508** Builds the positive choice's feasibility from both correct proposal outputs and cost 1≤budget 1.

<a id="line-code-leanified-corereader-integration-lean-509"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:509 --> **L509** Uses the listed .method .output reason and currentReviewCorrect as its actual relevance witness.

<a id="line-code-leanified-corereader-integration-lean-511"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:511 --> **L511** Documents the following definition or result: Applies any supplied application contract and requirements to this system's actual world-dependent method.

<a id="line-code-leanified-corereader-integration-lean-512"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:512 --> **L512** Applies any supplied application contract and requirements to this system's actual world-dependent method.

<a id="line-code-leanified-corereader-integration-lean-513"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:513 --> **L513** Accepts an arbitrary application contract relating Requirements to the implementation being assessed.

<a id="line-code-leanified-corereader-integration-lean-514"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:514 --> **L514** At each world, applies that same contract and requirements to this system's actual method realization.

<a id="line-code-leanified-corereader-integration-lean-516"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:516 --> **L516** Conjoins full same-system reflexivity with Grounds for the exact parameterized application claim.

<a id="line-code-leanified-corereader-integration-lean-517"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:517 --> **L517** ApplicationDuties keeps the chosen application contract as an explicit parameter.

<a id="line-code-leanified-corereader-integration-lean-518"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:518 --> **L518** Also accepts the articulation supplied for each potentially relevant facet.

<a id="line-code-leanified-corereader-integration-lean-519"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:519 --> **L519** Keeps the actual applicability predicate separate from the supplied facet list.

<a id="line-code-leanified-corereader-integration-lean-520"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:520 --> **L520** Requires full reflexivity of the same system owner's actual rules and work at w.

<a id="line-code-leanified-corereader-integration-lean-521"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:521 --> **L521** Requires matching Grounds for the claim produced by this system, these requirements and this contract.

<a id="line-code-leanified-corereader-integration-lean-523"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:523 --> **L523** Documents the following definition or result: Projects an explicitly assumed application-compliance interface into reflexivity, applicability coverage and matching discharged facets; it does not invent compliance.

<a id="line-code-leanified-corereader-integration-lean-524"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:524 --> **L524** Opens provenance metadata binding CoreReader.Integration.applicationRetainsDuties to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-525"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:525 --> **L525** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-526"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:526 --> **L526** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-527"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:527 --> **L527** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-528"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:528 --> **L528** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-529"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:529 --> **L529** Projects an explicitly assumed application-compliance interface into reflexivity, applicability coverage and matching discharged facets; it does not invent compliance.

<a id="line-code-leanified-corereader-integration-lean-530"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:530 --> **L530** The theorem retains the arbitrary application contract rather than fixing a single capability definition.

<a id="line-code-leanified-corereader-integration-lean-531"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:531 --> **L531** Retains the actual articulation family for that application's facets.

<a id="line-code-leanified-corereader-integration-lean-532"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:532 --> **L532** Retains the application's own applicability predicate and supplied facet list.

<a id="line-code-leanified-corereader-integration-lean-533"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:533 --> **L533** Crucially assumes ApplicationDuties already holds for these exact objects; the theorem does not create compliance.

<a id="line-code-leanified-corereader-integration-lean-534"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:534 --> **L534** The conclusion retains full same-owner rule/work reflexivity from that assumed duty.

<a id="line-code-leanified-corereader-integration-lean-535"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:535 --> **L535** It requires every actually applicable facet to occur in the supplied list, regardless of labels.

<a id="line-code-leanified-corereader-integration-lean-536"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:536 --> **L536** For every listed facet, its assessed claim must equal this system's actual parameterized application claim.

<a id="line-code-leanified-corereader-integration-lean-537"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:537 --> **L537** That same facet must have an articulable, content-matching articulation and actually satisfy its discharge conditions.

<a id="line-code-leanified-corereader-integration-lean-538"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:538 --> **L538** Projects h.1 as reflexivity, h.2.2.1 as applicability coverage, and h.2.2.2 as each listed facet's same-claim, articulation and discharge checks.

<a id="line-code-leanified-corereader-integration-lean-540"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:540 --> **L540** Requires the implementation to meet the application's expected output on every requested input.

<a id="line-code-leanified-corereader-integration-lean-541"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:541 --> **L541** The output contract checks this implementation's actual run against the chosen expected output on every required input.

<a id="line-code-leanified-corereader-integration-lean-543"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:543 --> **L543** Changes the same application requirements from identity to successor output while retaining other fields.

<a id="line-code-leanified-corereader-integration-lean-544"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:544 --> **L544** Keeps identityRequirements' inputs and other fields but changes expected output to n+1.

<a id="line-code-leanified-corereader-integration-lean-546"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:546 --> **L546** Documents the following definition or result: Reuses the old observation while changing the assessed claim to the successor objective, setting up a same-object scope test.

<a id="line-code-leanified-corereader-integration-lean-547"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:547 --> **L547** Reuses the old observation while changing the assessed claim to the successor objective, setting up a same-object scope test.

<a id="line-code-leanified-corereader-integration-lean-548"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:548 --> **L548** Reuses the old actual observation for an empirical facet with unrestricted scope.

<a id="line-code-leanified-corereader-integration-lean-549"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:549 --> **L549** Changes its assessed claim to this same system meeting successorRequirements; the uncertainty predicate remains trivial.

<a id="line-code-leanified-corereader-integration-lean-551"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:551 --> **L551** Opens provenance metadata binding CoreReader.Integration.applicationVariation to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-552"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:552 --> **L552** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-553"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:553 --> **L553** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-554"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:554 --> **L554** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-555"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:555 --> **L555** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-556"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:556 --> **L556** In this example, the original identity contract retains its fulfilled duties; the changed successor contract fails for the same actual method, and the specified retained-observation package cannot ground it.

<a id="line-code-leanified-corereader-integration-lean-557"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:557 --> **L557** The original identity-output application fulfills ApplicationDuties for the actual system and world.

<a id="line-code-leanified-corereader-integration-lean-558"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:558 --> **L558** That positive instance uses the already supported capabilityFacet and its own constructed articulation.

<a id="line-code-leanified-corereader-integration-lean-559"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:559 --> **L559** But the same actual system does not meet the changed successor-output contract.

<a id="line-code-leanified-corereader-integration-lean-560"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:560 --> **L560** Nor does the changed claim acquire Grounds from the retained observation package.

<a id="line-code-leanified-corereader-integration-lean-561"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:561 --> **L561** This failure concerns exactly changedObjectiveFacet's singleton package, not every possible evidence package.

<a id="line-code-leanified-corereader-integration-lean-562"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:562 --> **L562** Builds the original duty from full owned reflexivity and capabilityGrounds, then leaves changed behavior and changed evidence failures.

<a id="line-code-leanified-corereader-integration-lean-563"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:563 --> **L563** Assumes the actual identity method meets the new successor contract.

<a id="line-code-leanified-corereader-integration-lean-564"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:564 --> **L564** At required input zero, this would force actual output zero to equal expected one.

<a id="line-code-leanified-corereader-integration-lean-565"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:565 --> **L565** Eliminates the impossible 0=1 equality, refuting the changed actual capability claim.

<a id="line-code-leanified-corereader-integration-lean-566"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:566 --> **L566** Assumes the retained observation singleton nevertheless gives Grounds for that changed claim.

<a id="line-code-leanified-corereader-integration-lean-567"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:567 --> **L567** Extracts the actual changedObjectiveFacet's discharge from that assumed Grounds package.

<a id="line-code-leanified-corereader-integration-lean-568"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:568 --> **L568** Its support rule applied to the compatible actual world and input zero yields the same false output equality 0=1.

<a id="line-code-leanified-corereader-integration-lean-569"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:569 --> **L569** Rejects that equality, proving the specified retained-observation package cannot ground the new claim.

<a id="line-code-leanified-corereader-integration-lean-571"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:571 --> **L571** Documents the following definition or result: Exhibits this actual charter-compliant system with compatible cost evidence whose specified capability facet is unsupported; other valid grounds can still exist.

<a id="line-code-leanified-corereader-integration-lean-572"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:572 --> **L572** Opens provenance metadata binding CoreReader.Integration.charterNotGrounds to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-573"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:573 --> **L573** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-574"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:574 --> **L574** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-575"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:575 --> **L575** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-576"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:576 --> **L576** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-577"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:577 --> **L577** Exhibits this actual charter-compliant system with compatible cost evidence whose specified capability facet is unsupported; other valid grounds can still exist.

<a id="line-code-leanified-corereader-integration-lean-578"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:578 --> **L578** The same actual system satisfies all represented Charter conditions.

<a id="line-code-leanified-corereader-integration-lean-579"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:579 --> **L579** Its actual world is compatible with the true at-most-two cost observation.

<a id="line-code-leanified-corereader-integration-lean-580"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:580 --> **L580** Nevertheless, that cost evidence does not provide Grounds for its output capability.

<a id="line-code-leanified-corereader-integration-lean-581"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:581 --> **L581** The denied Grounds is the particular unsupportedCapabilityFacet singleton, not every possible assessment bundle.

<a id="line-code-leanified-corereader-integration-lean-582"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:582 --> **L582** Combines charterChecked, direct compatibility of actual with the cost record, and the already proved unsupportedGrounds counterexample.

<a id="line-code-leanified-corereader-integration-lean-584"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:584 --> **L584** Documents the following definition or result: Constructs one shared system/world satisfying actual judgments, full reflexivity, capability evidence, feasible choice and each interpreted commitment's Grounds; it is a bounded model, not universal philosophical correctness.

<a id="line-code-leanified-corereader-integration-lean-585"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:585 --> **L585** Documents the following definition or result: Constructs one shared system/world satisfying actual judgments, full reflexivity, capability evidence, feasible choice and each interpreted commitment's Grounds; it is a bounded model, not universal philosophical correctness.

<a id="line-code-leanified-corereader-integration-lean-586"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:586 --> **L586** Opens provenance metadata binding CoreReader.Integration.jointWitness to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-integration-lean-587"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:587 --> **L587** Records source reference organon.preamble#p1 with content digest 2ff45595af647eddc9fc095b3f3854f284bf3740ae7af1bacdb98773ffa44097; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-588"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:588 --> **L588** Records source reference organon.preamble#p2 with content digest 2ff45595af647eddc9fc095b3f3854f284bf3740ae7af1bacdb98773ffa44097; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-589"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:589 --> **L589** Records source reference organon.charter.overview#p2 with content digest 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-590"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:590 --> **L590** Records source reference organon.charter.overview#p3 with content digest 75d7d941d3c07ea748c4a9261d36a75fbd5664ff9c817c4034a9a36a3a12664c; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-591"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:591 --> **L591** Records source reference organon.relationships.roles#p1 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-592"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:592 --> **L592** Records source reference organon.relationships.roles#p2 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-593"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:593 --> **L593** Records source reference organon.relationships.roles#p3 with content digest 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-integration-lean-594"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:594 --> **L594** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-integration-lean-595"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:595 --> **L595** Constructs one shared system/world satisfying actual judgments, full reflexivity, capability evidence, feasible choice and each interpreted commitment's Grounds; it is a bounded model, not universal philosophical correctness.

<a id="line-code-leanified-corereader-integration-lean-596"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:596 --> **L596** Requires an actual system/world pair as the joint witness, so the combined claim is nonempty.

<a id="line-code-leanified-corereader-integration-lean-597"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:597 --> **L597** That same pair must be admissible for its jointly held/contextual claims and satisfy its Charter.

<a id="line-code-leanified-corereader-integration-lean-598"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:598 --> **L598** It must also have its own capability duty fulfilled by capabilityFacet and possess the claimed capability.

<a id="line-code-leanified-corereader-integration-lean-599"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:599 --> **L599** The same realized method must be feasibly chosen under its own requirements using objectiveReason.

<a id="line-code-leanified-corereader-integration-lean-600"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:600 --> **L600** For every one of the five commitments, the corresponding actual adoption claim must have Grounds.

<a id="line-code-leanified-corereader-integration-lean-601"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:601 --> **L601** Each commitment uses its own exact singleton value facet and corresponding applicability.

<a id="line-code-leanified-corereader-integration-lean-602"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:602 --> **L602** Finally identifies the witnesses with actualSystem and actual, preventing unrelated existential substitutions.

<a id="line-code-leanified-corereader-integration-lean-603"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:603 --> **L603** Chooses that exact pair and supplies its actual admissibility and checked Charter.

<a id="line-code-leanified-corereader-integration-lean-604"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:604 --> **L604** Adds this same system's owned capability duty, actual capability and justified identity choice.

<a id="line-code-leanified-corereader-integration-lean-605"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:605 --> **L605** Uses each commitment's existing Grounds proof, then closes the two witness-identity equalities by construction.

<a id="line-code-leanified-corereader-integration-lean-607"></a>
<!-- lean-line leanified/CoreReader/Integration.lean:607 --> **L607** Closes the current namespace.

<a id="code-leanified-corereader-logic-lean"></a>
### `leanified/CoreReader/Logic.lean`

<!-- lean-code leanified/CoreReader/Logic.lean -->
```lean
namespace CoreReader.Logic

/- A claim denotes the worlds in which its content holds. -/
abbrev Claim (W : Type) := W → Prop
/- A theory is a collection of simultaneously held claims. -/
abbrev Theory (W : Type) := Claim W → Prop
/- A model satisfies every member of the whole theory. -/
def Models {W : Type} (t : Theory W) (w : W) : Prop := ∀ p, t p → p w
/- Semantic entailment quantifies over all models. -/
def Entails {W : Type} (t : Theory W) (p : Claim W) : Prop := ∀ w, Models t w → p w
/- Satisfiability requires an actual witness. -/
def Satisfiable {W : Type} (t : Theory W) : Prop := ∃ w, Models t w
/- Assumptions, meanings and scope are distinct components; questions remain explicit. -/
structure Context (W Q : Type) where
  assumptions : Theory W
  meaning : Q → Claim W
  scope : Claim W
/- Admissible worlds satisfy held claims, assumptions and scope jointly. -/
def Admissible {W Q : Type} (t : Theory W) (c : Context W Q) (w : W) : Prop :=
  Models t w ∧ Models c.assumptions w ∧ c.scope w
/- A negative judgment denies the very same question under the same meaning. -/
def Consequence {W Q : Type} (t : Theory W) (c : Context W Q) (q : Q) (positive : Bool) : Prop :=
  ∀ w, Admissible t c w → if positive then c.meaning q w else ¬ c.meaning q w
/- The consistency obligation prohibits both consequences at one comparison basis. -/
def Consistent {W Q : Type} (t : Theory W) (c : Context W Q) : Prop :=
  ∀ q, ¬ (Consequence t c q true ∧ Consequence t c q false)
/- An inhabited joint interpretation prevents opposite semantic consequences. -/
/-- organon-map CoreReader.Logic.consequenceConsistency
organon.charter.consistency#p1 sha256 c6960c590c096d33250599cf418e3c6a1dc26bfc7d7800c82b8efde656950f42
-/
theorem consequenceConsistency {W Q : Type} (t : Theory W) (c : Context W Q)
    (inhabited : ∃ w, Admissible t c w) : Consistent t c := by
  intro q h
  obtain ⟨w, hw⟩ := inhabited
  exact (h.2 w hw) (h.1 w hw)
/- Empty and singleton theories provide concrete semantic contexts. -/
def emptyTheory {W : Type} : Theory W := fun _ => False
def singleton {W : Type} (p : Claim W) : Theory W := fun q => q = p
def union {W : Type} (a b : Theory W) : Theory W := fun p => a p ∨ b p
theorem modelsSingleton {W : Type} (p : Claim W) (w : W) : Models (singleton p) w ↔ p w := by
  constructor
  · intro h; exact h p rfl
  · intro h q hq; cases hq; exact h
theorem modelsUnion {W : Type} (a b : Theory W) (w : W) :
    Models (union a b) w ↔ Models a w ∧ Models b w := by
  constructor
  · intro h; exact ⟨fun p hp => h p (Or.inl hp), fun p hp => h p (Or.inr hp)⟩
  · rintro ⟨ha,hb⟩ p (hp|hp); exact ha p hp; exact hb p hp
/- The paired world records independent truth values for two questions. -/
def premiseP : Claim (Bool × Bool) := fun w => w.1 = true
def premiseRule : Claim (Bool × Bool) := fun w => w.1 = true → w.2 = true
def premiseNotQ : Claim (Bool × Bool) := fun w => w.2 ≠ true
def jointTheory : Theory (Bool × Bool) :=
  union (singleton premiseP) (union (singleton premiseRule) (singleton premiseNotQ))
/- Each premise has a model, but their joint implication makes the union unsatisfiable. -/
/-- organon-map CoreReader.Logic.jointConflict
organon.charter.consistency#p1 sha256 c6960c590c096d33250599cf418e3c6a1dc26bfc7d7800c82b8efde656950f42
-/
theorem jointConflict :
    Satisfiable (singleton premiseP) ∧ Satisfiable (singleton premiseRule) ∧
    Satisfiable (singleton premiseNotQ) ∧ ¬ Satisfiable jointTheory := by
  refine ⟨⟨(true,true), (modelsSingleton _ _).2 rfl⟩,
    ⟨(false,false), (modelsSingleton _ _).2 (by intro h; cases h)⟩,
    ⟨(false,false), (modelsSingleton _ _).2 (by intro h; cases h)⟩, ?_⟩
  rintro ⟨w, hw⟩
  have hp := hw premiseP (Or.inl rfl)
  have hr := hw premiseRule (Or.inr (Or.inl rfl))
  have hn := hw premiseNotQ (Or.inr (Or.inr rfl))
  exact hn (hr hp)
/- A retraction replaces the old singleton, rather than retaining both at the same time. -/
def revisionSlice (time : Nat) : Theory Bool :=
  singleton (fun w => w = (time == 0))
/- The initial and revised slices have models; keeping both would create a conflict. -/
/-- organon-map CoreReader.Logic.revisionCanReverse
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem revisionCanReverse :
    Satisfiable (revisionSlice 0) ∧ Satisfiable (revisionSlice 1) ∧
    ¬ Satisfiable (union (revisionSlice 0) (revisionSlice 1)) := by
  refine ⟨⟨true, (modelsSingleton _ _).2 rfl⟩,
    ⟨false, (modelsSingleton _ _).2 rfl⟩, ?_⟩
  rintro ⟨w, hw⟩
  have hs := (modelsUnion _ _ _).1 hw
  have hp := (modelsSingleton _ _).1 hs.1
  have hn := (modelsSingleton _ _).1 hs.2
  have bad : true = false := hp.symm.trans hn
  cases bad
/- This basic question asks whether the represented switch is on. -/
def onQuestion : Unit → Claim Bool := fun _ w => w = true
def assumptionContext (b : Bool) : Context Bool Unit :=
  ⟨singleton (fun w => w = b), onQuestion, fun _ => True⟩
def meaningContext (b : Bool) : Context Bool Unit :=
  ⟨singleton (fun w => w = true), (fun _ w => w = b), fun _ => True⟩
def scopeContext (b : Bool) : Context Bool Unit :=
  ⟨emptyTheory, onQuestion, fun w => w = b⟩
/- Distinct assumptions, meanings and scopes each admit opposite judgments without same-context conflict. -/
/-- organon-map CoreReader.Logic.contextDifferences
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem contextDifferences :
    (Consequence emptyTheory (assumptionContext true) () true ∧
      Consequence emptyTheory (assumptionContext false) () false) ∧
    (Consequence emptyTheory (meaningContext true) () true ∧
      Consequence emptyTheory (meaningContext false) () false) ∧
    (Consequence emptyTheory (scopeContext true) () true ∧
      Consequence emptyTheory (scopeContext false) () false) ∧
    (∀ b, ∃ w, Admissible emptyTheory (assumptionContext b) w) ∧
    (∀ b, ∃ w, Admissible emptyTheory (meaningContext b) w) ∧
    (∀ b, ∃ w, Admissible emptyTheory (scopeContext b) w) := by
  have empty : ∀ w : Bool, Models emptyTheory w := by intro w p hp; cases hp
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩, ⟨?_, ?_⟩, ?_, ?_, ?_⟩
  · intro w h; change w = true; exact (modelsSingleton (fun x : Bool => x = true) w).1 h.2.1
  · intro w h hp; have hn := (modelsSingleton _ _).1 h.2.1; cases hp.symm.trans hn
  · intro w h; change w = true; exact (modelsSingleton (fun x : Bool => x = true) w).1 h.2.1
  · intro w h hn; have hp := (modelsSingleton _ _).1 h.2.1; cases hp.symm.trans hn
  · intro w h; exact h.2.2
  · intro w h hp; cases hp.symm.trans h.2.2
  · intro b; exact ⟨b, empty b, (modelsSingleton _ _).2 rfl, trivial⟩
  · intro b; exact ⟨true, empty true, (modelsSingleton _ _).2 rfl, trivial⟩
  · intro b; exact ⟨b, empty b, empty b, rfl⟩
/- Snapshots preserve identifiable adopted-form revisions even when semantic content agrees. -/
structure Snapshot (W Q : Type) where
  held : Theory W
  context : Context W Q
  revisionIdentity : Nat
/- Semantic equivalence compares represented content, not its list ordering. -/
def SameContent {W Q : Type} (a b : Snapshot W Q) : Prop :=
  (∀ p, a.held p ↔ b.held p) ∧
  (∀ p, a.context.assumptions p ↔ b.context.assumptions p) ∧
  (∀ q w, a.context.meaning q w ↔ b.context.meaning q w) ∧
  (∀ w, a.context.scope w ↔ b.context.scope w)
/- The reporting norm covers both semantic change and independently identified revisions. -/
def TruthfulReport {W Q : Type} (a b : Snapshot W Q) (reported : Bool) : Prop :=
  (¬ SameContent a b ∨ a.revisionIdentity ≠ b.revisionIdentity) → reported = true
/- A real represented change and compliance entail an acknowledged change. -/
/-- organon-map CoreReader.Logic.semanticChangeMustBeReported
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem semanticChangeMustBeReported {W Q : Type} (a b : Snapshot W Q) (reported : Bool)
    (changed : ¬ SameContent a b ∨ a.revisionIdentity ≠ b.revisionIdentity)
    (h : TruthfulReport a b reported) : reported = true := h changed
/- Reordering a two-claim presentation preserves the held theory extension. -/
/-- organon-map CoreReader.Logic.representationOrderIrrelevant
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem representationOrderIrrelevant {W : Type} (p q : Claim W) :
    ∀ r, union (singleton p) (singleton q) r ↔ union (singleton q) (singleton p) r := by
  intro r; exact or_comm
def contextSnapshot (c : Context Bool Unit) (revision : Nat := 0) : Snapshot Bool Unit :=
  ⟨emptyTheory, c, revision⟩
/- Hiding each kind of contextual change violates the reporting interface; reporting alone supplies no truth guarantee. -/
/-- organon-map CoreReader.Logic.hiddenContextChangeRejected
organon.charter.consistency.meaning#p1 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
organon.charter.consistency.meaning#p2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem hiddenContextChangeRejected :
    ¬ TruthfulReport (contextSnapshot (assumptionContext true)) (contextSnapshot (assumptionContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (meaningContext true)) (contextSnapshot (meaningContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (scopeContext true)) (contextSnapshot (scopeContext false)) false ∧
    ¬ TruthfulReport (contextSnapshot (scopeContext true) 0) (contextSnapshot (scopeContext true) 1) false ∧
    (TruthfulReport (contextSnapshot (assumptionContext true)) (contextSnapshot (assumptionContext false)) true ∧
      ¬ Models (assumptionContext false).assumptions true) := by
  have neq : (fun w : Bool => w = true) ≠ (fun w : Bool => w = false) := by
    intro h; have k := congrFun h true; have z : true = false := k.mp rfl; cases z
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro h
    have bad := h (Or.inl (by intro s; exact neq ((s.2.1 _).mp rfl)))
    cases bad
  · intro h
    have bad := h (Or.inl (by intro s; have z := (s.2.2.1 () true).mp rfl; cases z))
    cases bad
  · intro h
    have bad := h (Or.inl (by intro s; have z := (s.2.2.2 true).mp rfl; cases z))
    cases bad
  · intro h; have bad := h (Or.inr (by decide)); cases bad
  · refine ⟨fun _ => rfl, ?_⟩
    intro h; have z := (modelsSingleton _ _).1 h; cases z
/- Two nonidentical resource objectives can share a feasible allocation. -/
/-- organon-map CoreReader.Logic.tensionWithoutContradiction
organon.charter.consistency.limits#p1 sha256 4fa1c29bf95ad6ef04c6d27671a832c0af8ba31b9c0d8018a8d09c4f33c38e75
-/
theorem tensionWithoutContradiction :
    (∃ budget : Nat, 4 ≤ budget ∧ budget ≤ 6) ∧
    ¬ ((fun n : Nat => 4 ≤ n) = (fun n : Nat => n ≤ 6)) := by
  refine ⟨⟨5, by decide, by decide⟩, ?_⟩
  intro h; have k := congrFun h 0; have bad : 4 ≤ 0 := k.mpr (by decide); cases bad
/- Conflicting conclusions cannot be retained under the same consistency obligation. -/
/-- organon-map CoreReader.Logic.conflictRequiresChange
organon.charter.consistency.limits#p1 sha256 4fa1c29bf95ad6ef04c6d27671a832c0af8ba31b9c0d8018a8d09c4f33c38e75
-/
theorem conflictRequiresChange {W Q : Type} (t : Theory W) (c : Context W Q) (q : Q)
    (positive : Consequence t c q true) (negative : Consequence t c q false) :
    ¬ Consistent t c := fun h => h q ⟨positive,negative⟩
/- A satisfiable theory can have a false assumption at a specified actual world. -/
/-- organon-map CoreReader.Logic.consistentFalse
organon.charter.consistency.limits#p1 sha256 4fa1c29bf95ad6ef04c6d27671a832c0af8ba31b9c0d8018a8d09c4f33c38e75
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem consistentFalse : Satisfiable (singleton (fun w : Bool => w = true)) ∧
    ¬ Models (singleton (fun w : Bool => w = true)) false := by
  refine ⟨⟨true, (modelsSingleton _ _).2 rfl⟩, ?_⟩
  intro h; have bad := (modelsSingleton _ _).1 h; cases bad
/- The explicitly asked on/off question is undecided by the empty but inhabited theory. -/
/-- organon-map CoreReader.Logic.consistentIncomplete
organon.charter.consistency.limits#p1 sha256 4fa1c29bf95ad6ef04c6d27671a832c0af8ba31b9c0d8018a8d09c4f33c38e75
organon.relationships.roles#p1 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p2 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
organon.relationships.roles#p3 sha256 24b533c77fe93d0570da65ee361893f2c445842f48ee6f315f99f8abc06a0e5e
-/
theorem consistentIncomplete : Satisfiable (emptyTheory : Theory Bool) ∧
    ¬ Entails emptyTheory (fun w : Bool => w = true) ∧
    ¬ Entails emptyTheory (fun w : Bool => w ≠ true) := by
  have empty : ∀ w : Bool, Models emptyTheory w := by intro w p hp; cases hp
  refine ⟨⟨true, empty true⟩, ?_, ?_⟩
  · intro h; have bad := h false (empty false); cases bad
  · intro h; exact h true (empty true) rfl
/- A claim can share a model with a theory without following in every model. -/
/-- organon-map CoreReader.Logic.compatibilityNotEntailment
organon.grounds.assessment#p1 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p2 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
organon.grounds.assessment#p3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem compatibilityNotEntailment :
    Satisfiable (union emptyTheory (singleton (fun w : Bool => w = true))) ∧
    ¬ Entails emptyTheory (fun w : Bool => w = true) := by
  refine ⟨⟨true, (modelsUnion _ _ _).2 ⟨?_, (modelsSingleton _ _).2 rfl⟩⟩,
    consistentIncomplete.2.1⟩
  intro p hp; cases hp

end CoreReader.Logic
```
<!-- /lean-code leanified/CoreReader/Logic.lean -->

<a id="line-code-leanified-corereader-logic-lean-1"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:1 --> **L1** Open namespace CoreReader.Logic so subsequent declarations receive this module-qualified name.

<a id="line-code-leanified-corereader-logic-lean-3"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:3 --> **L3** Document the intended scope of Claim. The corresponding declaration concerns: A claim is a proposition-valued function on a supplied world type W; the world type is not restricted to a real-world interpretation. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-4"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:4 --> **L4** Introduce the type abbreviation Claim. A claim is a proposition-valued function on a supplied world type W; the world type is not restricted to a real-world interpretation.

<a id="line-code-leanified-corereader-logic-lean-5"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:5 --> **L5** Document the intended scope of Theory. The corresponding declaration concerns: A theory is a predicate selecting claims, rather than a finite syntax or executable theory representation. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-6"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:6 --> **L6** Introduce the type abbreviation Theory. A theory is a predicate selecting claims, rather than a finite syntax or executable theory representation.

<a id="line-code-leanified-corereader-logic-lean-7"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:7 --> **L7** Document the intended scope of Models. The corresponding declaration concerns: A world models a theory exactly when every selected claim holds at that world. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-8"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:8 --> **L8** Define Models. A world models a theory exactly when every selected claim holds at that world.

<a id="line-code-leanified-corereader-logic-lean-9"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:9 --> **L9** Document the intended scope of Entails. The corresponding declaration concerns: Semantic entailment universally quantifies over worlds satisfying the theory. With no model it is vacuous. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-10"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:10 --> **L10** Define Entails. Semantic entailment universally quantifies over worlds satisfying the theory. With no model it is vacuous.

<a id="line-code-leanified-corereader-logic-lean-11"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:11 --> **L11** Document the intended scope of Satisfiable. The corresponding declaration concerns: Satisfiability requires an actual witness world together with a proof that it models the theory. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-12"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:12 --> **L12** Define Satisfiable. Satisfiability requires an actual witness world together with a proof that it models the theory.

<a id="line-code-leanified-corereader-logic-lean-13"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:13 --> **L13** Document the intended scope of Context. The corresponding declaration concerns: Packages contextual assumptions, question meanings, and a scope predicate; the interface does not validate these choices. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-14"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:14 --> **L14** Declare the data interface Context. Packages contextual assumptions, question meanings, and a scope predicate; the interface does not validate these choices.

<a id="line-code-leanified-corereader-logic-lean-15"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:15 --> **L15** Store the actual contextual assumption theory, separately from the held theory.

<a id="line-code-leanified-corereader-logic-lean-16"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:16 --> **L16** Interpret each question as a proposition about each world.

<a id="line-code-leanified-corereader-logic-lean-17"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:17 --> **L17** Store the predicate selecting the admitted application scope.

<a id="line-code-leanified-corereader-logic-lean-18"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:18 --> **L18** Document the intended scope of Admissible. The corresponding declaration concerns: A world is admissible when the held theory, contextual assumptions, and scope all hold simultaneously. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-19"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:19 --> **L19** Define Admissible. A world is admissible when the held theory, contextual assumptions, and scope all hold simultaneously.

<a id="line-code-leanified-corereader-logic-lean-20"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:20 --> **L20** Require this same world to model both theories and satisfy the contextual scope simultaneously.

<a id="line-code-leanified-corereader-logic-lean-21"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:21 --> **L21** Document the intended scope of Consequence. The corresponding declaration concerns: A signed consequence must hold in every admissible world: positive selects the question meaning and negative selects its negation. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-22"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:22 --> **L22** Define Consequence. A signed consequence must hold in every admissible world: positive selects the question meaning and negative selects its negation.

<a id="line-code-leanified-corereader-logic-lean-23"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:23 --> **L23** Quantify over every admissible world; the sign selects either this question’s meaning or its negation.

<a id="line-code-leanified-corereader-logic-lean-24"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:24 --> **L24** Document the intended scope of Consistent. The corresponding declaration concerns: Consistency rules out simultaneously entailing a question and its negation for every question in Q. Empty Q makes this condition vacuous. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-25"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:25 --> **L25** Define Consistent. Consistency rules out simultaneously entailing a question and its negation for every question in Q. Empty Q makes this condition vacuous.

<a id="line-code-leanified-corereader-logic-lean-26"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:26 --> **L26** For every question, prohibit the conjunction of its positive and negative consequences in this same context.

<a id="line-code-leanified-corereader-logic-lean-27"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:27 --> **L27** Document the intended scope of consequenceConsistency. The corresponding declaration concerns: Given an admissible witness, proves that no question can have both signed consequences. The witness is an explicit premise. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-28"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:28 --> **L28** Begin provenance metadata for CoreReader.Logic.consequenceConsistency; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-29"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:29 --> **L29** Register source unit organon.charter.consistency#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-30"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:30 --> **L30** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-31"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:31 --> **L31** State the checked result consequenceConsistency. Given an admissible witness, proves that no question can have both signed consequences. The witness is an explicit premise.

<a id="line-code-leanified-corereader-logic-lean-32"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:32 --> **L32** Assume an admissible witness for the whole context and conclude its consistency; begin the proof.

<a id="line-code-leanified-corereader-logic-lean-33"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:33 --> **L33** Introduce an arbitrary question q and the hypothetical pair h of its positive and negative consequences in the same context.

<a id="line-code-leanified-corereader-logic-lean-34"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:34 --> **L34** Extract the common admissible world w and its entire theory/assumptions/scope proof hw from the explicit inhabited premise.

<a id="line-code-leanified-corereader-logic-lean-35"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:35 --> **L35** Evaluate both halves of h at the same w and hw; the negative consequence contradicts the positive consequence.

<a id="line-code-leanified-corereader-logic-lean-36"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:36 --> **L36** Document the intended scope of emptyTheory. The corresponding declaration concerns: Selects no claims, so every world models this theory. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-37"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:37 --> **L37** Define emptyTheory. Selects no claims, so every world models this theory.

<a id="line-code-leanified-corereader-logic-lean-38"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:38 --> **L38** Define singleton. Selects exactly the claim equal to p; this uses equality of predicate functions.

<a id="line-code-leanified-corereader-logic-lean-39"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:39 --> **L39** Define union. Combines two sets of claims by disjunction of membership.

<a id="line-code-leanified-corereader-logic-lean-40"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:40 --> **L40** State the checked result modelsSingleton. Proves that modeling the singleton theory is equivalent to satisfying its sole claim. The following tactic block proves this explicit type.

<a id="line-code-leanified-corereader-logic-lean-41"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:41 --> **L41** Split the equivalence between satisfying the singleton theory and satisfying its sole claim into two implications.

<a id="line-code-leanified-corereader-logic-lean-42"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:42 --> **L42** Use the assumed singleton model h on p, whose membership follows from reflexive equality.

<a id="line-code-leanified-corereader-logic-lean-43"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:43 --> **L43** For any selected claim q, singleton membership identifies q with p; substitute that identity and return the assumed truth h of p.

<a id="line-code-leanified-corereader-logic-lean-44"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:44 --> **L44** State the checked result modelsUnion. Proves that modeling the union is equivalent to modeling both constituent theories at the same world.

<a id="line-code-leanified-corereader-logic-lean-45"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:45 --> **L45** State that the same world models the theory union exactly when it models both constituent theories.

<a id="line-code-leanified-corereader-logic-lean-46"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:46 --> **L46** Prove the model-of-union equivalence in its forward and reverse directions.

<a id="line-code-leanified-corereader-logic-lean-47"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:47 --> **L47** Restrict the union model h to each theory by embedding its membership proof into the left or right disjunct.

<a id="line-code-leanified-corereader-logic-lean-48"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:48 --> **L48** Unpack both constituent models, split a union membership into its two alternatives, and use the corresponding model on the same claim and world.

<a id="line-code-leanified-corereader-logic-lean-49"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:49 --> **L49** Document the intended scope of premiseP. The corresponding declaration concerns: Reads the first Boolean coordinate as true. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-50"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:50 --> **L50** Define premiseP. Reads the first Boolean coordinate as true.

<a id="line-code-leanified-corereader-logic-lean-51"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:51 --> **L51** Define premiseRule. Makes truth of the first Boolean imply truth of the second.

<a id="line-code-leanified-corereader-logic-lean-52"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:52 --> **L52** Define premiseNotQ. Requires the second Boolean not to be true.

<a id="line-code-leanified-corereader-logic-lean-53"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:53 --> **L53** Define jointTheory. Combines the first-coordinate fact, the implication, and the negated second-coordinate fact.

<a id="line-code-leanified-corereader-logic-lean-54"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:54 --> **L54** Hold P, the rule P implies Q, and not Q together through nested theory unions.

<a id="line-code-leanified-corereader-logic-lean-55"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:55 --> **L55** Document the intended scope of jointConflict. The corresponding declaration concerns: Exhibits individual models of each of three claims, then proves their conjunction has no model. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-56"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:56 --> **L56** Begin provenance metadata for CoreReader.Logic.jointConflict; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-57"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:57 --> **L57** Register source unit organon.charter.consistency#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-58"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:58 --> **L58** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-59"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:59 --> **L59** State the checked result jointConflict. Exhibits individual models of each of three claims, then proves their conjunction has no model.

<a id="line-code-leanified-corereader-logic-lean-60"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:60 --> **L60** The first two conclusions provide separate models for P and its implication rule.

<a id="line-code-leanified-corereader-logic-lean-61"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:61 --> **L61** Also require a separate model for not Q, but deny any model of the entire joint theory.

<a id="line-code-leanified-corereader-logic-lean-62"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:62 --> **L62** Supply (true,true) as the model of P, using modelsSingleton to turn its first-coordinate equality into the required model proof.

<a id="line-code-leanified-corereader-logic-lean-63"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:63 --> **L63** Supply (false,false) for the implication premise: assuming its false first coordinate is true is impossible.

<a id="line-code-leanified-corereader-logic-lean-64"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:64 --> **L64** Supply (false,false) for not Q and leave the joint unsatisfiability branch to be proved.

<a id="line-code-leanified-corereader-logic-lean-65"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:65 --> **L65** Assume a joint model w with proof hw in order to refute its existence.

<a id="line-code-leanified-corereader-logic-lean-66"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:66 --> **L66** Extract the actual first-coordinate fact P from its left membership in the joint theory.

<a id="line-code-leanified-corereader-logic-lean-67"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:67 --> **L67** Extract P implies Q from the nested union membership of the rule.

<a id="line-code-leanified-corereader-logic-lean-68"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:68 --> **L68** Extract not Q from the other nested union branch at the same world.

<a id="line-code-leanified-corereader-logic-lean-69"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:69 --> **L69** Apply the rule to P to derive Q and contradict the extracted not Q.

<a id="line-code-leanified-corereader-logic-lean-70"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:70 --> **L70** Document the intended scope of revisionSlice. The corresponding declaration concerns: At time zero requires a true world; at every other natural time requires a false world. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-71"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:71 --> **L71** Define revisionSlice. At time zero requires a true world; at every other natural time requires a false world.

<a id="line-code-leanified-corereader-logic-lean-72"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:72 --> **L72** Select the single claim that the world equals the Boolean result of testing time=0.

<a id="line-code-leanified-corereader-logic-lean-73"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:73 --> **L73** Document the intended scope of revisionCanReverse. The corresponding declaration concerns: Exhibits satisfiable time-zero and time-one slices whose union is unsatisfiable. No temporal update mechanism is implemented. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-74"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:74 --> **L74** Begin provenance metadata for CoreReader.Logic.revisionCanReverse; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-75"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:75 --> **L75** Register source unit organon.charter.consistency.meaning#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-76"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:76 --> **L76** Register source unit organon.charter.consistency.meaning#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-77"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:77 --> **L77** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-78"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:78 --> **L78** State the checked result revisionCanReverse. Exhibits satisfiable time-zero and time-one slices whose union is unsatisfiable. No temporal update mechanism is implemented.

<a id="line-code-leanified-corereader-logic-lean-79"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:79 --> **L79** Require time slices 0 and 1 to have separate model witnesses.

<a id="line-code-leanified-corereader-logic-lean-80"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:80 --> **L80** Deny a model of their simultaneous union; this does not deny either separate witness.

<a id="line-code-leanified-corereader-logic-lean-81"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:81 --> **L81** Give true as the witness for the time-zero singleton theory.

<a id="line-code-leanified-corereader-logic-lean-82"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:82 --> **L82** Give false as the witness for time one, and leave the impossibility of holding both slices together.

<a id="line-code-leanified-corereader-logic-lean-83"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:83 --> **L83** Assume a world satisfies both time slices simultaneously.

<a id="line-code-leanified-corereader-logic-lean-84"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:84 --> **L84** Split this union model into models of the time-zero and time-one theories at the same world.

<a id="line-code-leanified-corereader-logic-lean-85"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:85 --> **L85** Extract that the common world equals true from the time-zero singleton.

<a id="line-code-leanified-corereader-logic-lean-86"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:86 --> **L86** Extract that the same world equals false from the time-one singleton.

<a id="line-code-leanified-corereader-logic-lean-87"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:87 --> **L87** Compose the two equalities through the same world to derive the impossible equality true = false.

<a id="line-code-leanified-corereader-logic-lean-88"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:88 --> **L88** Eliminate the impossible equality between distinct Boolean constructors.

<a id="line-code-leanified-corereader-logic-lean-89"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:89 --> **L89** Document the intended scope of onQuestion. The corresponding declaration concerns: The sole Unit question asks whether the Boolean world is true. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-90"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:90 --> **L90** Define onQuestion. The sole Unit question asks whether the Boolean world is true.

<a id="line-code-leanified-corereader-logic-lean-91"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:91 --> **L91** Define assumptionContext. Varies the assumption selecting the world while fixing its question meaning and unrestricted scope.

<a id="line-code-leanified-corereader-logic-lean-92"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:92 --> **L92** Select world b through assumptions, retain the same on-question, and allow every world in scope.

<a id="line-code-leanified-corereader-logic-lean-93"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:93 --> **L93** Define meaningContext. Fixes the world assumption to true but varies whether the question means equality to true or false.

<a id="line-code-leanified-corereader-logic-lean-94"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:94 --> **L94** Keep the true-world assumption while changing the question to equality with b; scope remains unrestricted.

<a id="line-code-leanified-corereader-logic-lean-95"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:95 --> **L95** Define scopeContext. Keeps assumptions empty and the question fixed while selecting the world through scope.

<a id="line-code-leanified-corereader-logic-lean-96"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:96 --> **L96** Leave assumptions empty and the question fixed, but let scope select world b.

<a id="line-code-leanified-corereader-logic-lean-97"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:97 --> **L97** Document the intended scope of contextDifferences. The corresponding declaration concerns: Proves that changing any one of assumptions, meaning, or scope can reverse polarity, with explicit admissible witnesses in all displayed contexts. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-98"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:98 --> **L98** Begin provenance metadata for CoreReader.Logic.contextDifferences; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-99"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:99 --> **L99** Register source unit organon.charter.consistency.meaning#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-100"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:100 --> **L100** Register source unit organon.charter.consistency.meaning#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-101"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:101 --> **L101** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-102"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:102 --> **L102** State the checked result contextDifferences. Proves that changing any one of assumptions, meaning, or scope can reverse polarity, with explicit admissible witnesses in all displayed contexts.

<a id="line-code-leanified-corereader-logic-lean-103"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:103 --> **L103** Require a positive answer under true-valued assumptions.

<a id="line-code-leanified-corereader-logic-lean-104"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:104 --> **L104** Require the negative answer under false-valued assumptions; the contexts differ.

<a id="line-code-leanified-corereader-logic-lean-105"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:105 --> **L105** Require a positive answer for the question meaning equality to true.

<a id="line-code-leanified-corereader-logic-lean-106"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:106 --> **L106** Require the negative answer when that question instead means equality to false.

<a id="line-code-leanified-corereader-logic-lean-107"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:107 --> **L107** Require the positive answer in the scope restricted to true.

<a id="line-code-leanified-corereader-logic-lean-108"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:108 --> **L108** Require the negative answer in the different scope restricted to false.

<a id="line-code-leanified-corereader-logic-lean-109"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:109 --> **L109** For either assumption selector, require an actual admissible world.

<a id="line-code-leanified-corereader-logic-lean-110"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:110 --> **L110** For either question meaning, require an actual admissible world.

<a id="line-code-leanified-corereader-logic-lean-111"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:111 --> **L111** For either scope selector, require an actual admissible world and begin the combined proof.

<a id="line-code-leanified-corereader-logic-lean-112"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:112 --> **L112** Show every Boolean world satisfies emptyTheory because membership in that theory is False.

<a id="line-code-leanified-corereader-logic-lean-113"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:113 --> **L113** Separate the positive/negative answer pairs for changed assumptions, meaning and scope, then the three nonempty-context witness obligations.

<a id="line-code-leanified-corereader-logic-lean-114"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:114 --> **L114** For the true-assumption context, read w = true from the contextual singleton assumptions.

<a id="line-code-leanified-corereader-logic-lean-115"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:115 --> **L115** For the false-assumption context, a proposed positive answer contradicts the singleton assumption w = false.

<a id="line-code-leanified-corereader-logic-lean-116"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:116 --> **L116** For the true meaning of the question, use the fixed true-world assumption to establish the positive answer.

<a id="line-code-leanified-corereader-logic-lean-117"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:117 --> **L117** For the changed false meaning, its proposed truth conflicts with the unchanged true-world assumption.

<a id="line-code-leanified-corereader-logic-lean-118"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:118 --> **L118** In the true-scope context, the scope component itself states the required positive answer.

<a id="line-code-leanified-corereader-logic-lean-119"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:119 --> **L119** In the false-scope context, a positive answer contradicts the scope component at the same world.

<a id="line-code-leanified-corereader-logic-lean-120"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:120 --> **L120** For either chosen assumption b, witness world b satisfies the empty held theory, that singleton assumption and unrestricted scope.

<a id="line-code-leanified-corereader-logic-lean-121"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:121 --> **L121** For either question meaning b, true remains a witness because the assumptions are fixed to true and scope is unrestricted.

<a id="line-code-leanified-corereader-logic-lean-122"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:122 --> **L122** For either scope selector b, world b satisfies both empty theories and the selected scope by equality.

<a id="line-code-leanified-corereader-logic-lean-123"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:123 --> **L123** Document the intended scope of Snapshot. The corresponding declaration concerns: Packages held claims, context and a natural-number revision identity; there is no history validation. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-124"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:124 --> **L124** Declare the data interface Snapshot. Packages held claims, context and a natural-number revision identity; there is no history validation.

<a id="line-code-leanified-corereader-logic-lean-125"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:125 --> **L125** Store the theory of simultaneously held claims in the snapshot.

<a id="line-code-leanified-corereader-logic-lean-126"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:126 --> **L126** Store the snapshot’s assumptions, question meanings and scope as one Context.

<a id="line-code-leanified-corereader-logic-lean-127"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:127 --> **L127** Store a separate natural-number revision identifier; no history validation is implied.

<a id="line-code-leanified-corereader-logic-lean-128"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:128 --> **L128** Document the intended scope of SameContent. The corresponding declaration concerns: Defines sameness using claim-membership equivalence, contextual-assumption membership equivalence, pointwise meaning equivalence, and pointwise scope equivalence. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-129"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:129 --> **L129** Define SameContent. Defines sameness using claim-membership equivalence, contextual-assumption membership equivalence, pointwise meaning equivalence, and pointwise scope equivalence.

<a id="line-code-leanified-corereader-logic-lean-130"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:130 --> **L130** Require identical held-claim membership for every claim in both snapshots.

<a id="line-code-leanified-corereader-logic-lean-131"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:131 --> **L131** Require identical membership for every contextual assumption.

<a id="line-code-leanified-corereader-logic-lean-132"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:132 --> **L132** Require equivalent question meanings for every question at every world.

<a id="line-code-leanified-corereader-logic-lean-133"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:133 --> **L133** Require equivalent scope predicates at every world.

<a id="line-code-leanified-corereader-logic-lean-134"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:134 --> **L134** Document the intended scope of TruthfulReport. The corresponding declaration concerns: Requires a true report if semantic content or revision identity differs. It allows a true report when neither differs and implements no detector. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-135"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:135 --> **L135** Define TruthfulReport. Requires a true report if semantic content or revision identity differs. It allows a true report when neither differs and implements no detector.

<a id="line-code-leanified-corereader-logic-lean-136"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:136 --> **L136** Define truthful reporting as a positive flag whenever content differs or the independent revision identifiers differ.

<a id="line-code-leanified-corereader-logic-lean-137"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:137 --> **L137** Document the intended scope of semanticChangeMustBeReported. The corresponding declaration concerns: Instantiates the reporting interface with a supplied change proof; it cannot discover changes on its own. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-138"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:138 --> **L138** Begin provenance metadata for CoreReader.Logic.semanticChangeMustBeReported; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-139"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:139 --> **L139** Register source unit organon.charter.consistency.meaning#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-140"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:140 --> **L140** Register source unit organon.charter.consistency.meaning#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-141"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:141 --> **L141** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-142"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:142 --> **L142** State the checked result semanticChangeMustBeReported. Instantiates the reporting interface with a supplied change proof; it cannot discover changes on its own.

<a id="line-code-leanified-corereader-logic-lean-143"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:143 --> **L143** Assume an actual change: either content differs or the revision identifiers differ.

<a id="line-code-leanified-corereader-logic-lean-144"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:144 --> **L144** Assume the reporting obligation and apply it to the preceding change premise to obtain reported=true.

<a id="line-code-leanified-corereader-logic-lean-145"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:145 --> **L145** Document the intended scope of representationOrderIrrelevant. The corresponding declaration concerns: Proves swapping the order of two singleton components leaves theory membership unchanged. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-146"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:146 --> **L146** Begin provenance metadata for CoreReader.Logic.representationOrderIrrelevant; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-147"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:147 --> **L147** Register source unit organon.charter.consistency.meaning#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-148"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:148 --> **L148** Register source unit organon.charter.consistency.meaning#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-149"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:149 --> **L149** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-150"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:150 --> **L150** State the checked result representationOrderIrrelevant. Proves swapping the order of two singleton components leaves theory membership unchanged.

<a id="line-code-leanified-corereader-logic-lean-151"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:151 --> **L151** For any claim r, swapping p and q preserves membership in their singleton-theory union.

<a id="line-code-leanified-corereader-logic-lean-152"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:152 --> **L152** For an arbitrary candidate claim r, use commutativity of disjunction to preserve union membership after reordering p and q.

<a id="line-code-leanified-corereader-logic-lean-153"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:153 --> **L153** Define contextSnapshot. Wraps a Boolean/Unit context in a snapshot with empty held theory and a default revision of zero.

<a id="line-code-leanified-corereader-logic-lean-154"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:154 --> **L154** Construct a snapshot with no held claims, the supplied context, and the supplied revision identifier.

<a id="line-code-leanified-corereader-logic-lean-155"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:155 --> **L155** Document the intended scope of hiddenContextChangeRejected. The corresponding declaration concerns: Rejects false reports for three concrete context changes and a revision-only change; also shows reporting true does not make an incompatible assumption hold. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-156"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:156 --> **L156** Begin provenance metadata for CoreReader.Logic.hiddenContextChangeRejected; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-157"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:157 --> **L157** Register source unit organon.charter.consistency.meaning#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-158"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:158 --> **L158** Register source unit organon.charter.consistency.meaning#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-159"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:159 --> **L159** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-160"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:160 --> **L160** State the checked result hiddenContextChangeRejected. Rejects false reports for three concrete context changes and a revision-only change; also shows reporting true does not make an incompatible assumption hold.

<a id="line-code-leanified-corereader-logic-lean-161"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:161 --> **L161** Reject a false report when actual contextual assumptions change from true to false.

<a id="line-code-leanified-corereader-logic-lean-162"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:162 --> **L162** Reject a false report when the question’s actual meaning changes.

<a id="line-code-leanified-corereader-logic-lean-163"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:163 --> **L163** Reject a false report when the actual application scope changes.

<a id="line-code-leanified-corereader-logic-lean-164"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:164 --> **L164** Reject a false report when revision identity changes from 0 to 1 despite unchanged context.

<a id="line-code-leanified-corereader-logic-lean-165"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:165 --> **L165** Permit truthful acknowledgement of the changed assumptions with a true report.

<a id="line-code-leanified-corereader-logic-lean-166"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:166 --> **L166** Nevertheless deny that those revised false-world assumptions hold at actual true.

<a id="line-code-leanified-corereader-logic-lean-167"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:167 --> **L167** Prepare a semantic inequality: the predicates selecting true and selecting false are distinct functions.

<a id="line-code-leanified-corereader-logic-lean-168"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:168 --> **L168** Evaluate any alleged predicate equality at true; it would turn reflexive truth into true = false.

<a id="line-code-leanified-corereader-logic-lean-169"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:169 --> **L169** Split the four rejected hidden changes from the final acknowledged-but-false-assumption example.

<a id="line-code-leanified-corereader-logic-lean-170"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:170 --> **L170** Assume the hidden assumption change with report=false satisfied TruthfulReport, in order to refute that claim.

<a id="line-code-leanified-corereader-logic-lean-171"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:171 --> **L171** A claimed SameContent would equate the changed assumption predicates; their established inequality activates TruthfulReport and forces the false flag to be true.

<a id="line-code-leanified-corereader-logic-lean-172"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:172 --> **L172** Close this hidden-change branch because the required true report contradicts the specified false flag.

<a id="line-code-leanified-corereader-logic-lean-173"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:173 --> **L173** Assume the changed question meaning could be truthfully reported as unchanged.

<a id="line-code-leanified-corereader-logic-lean-174"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:174 --> **L174** At the sole question and world true, the changed meaning contradicts SameContent; the reporting obligation then forces a positive report.

<a id="line-code-leanified-corereader-logic-lean-175"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:175 --> **L175** Close this hidden-change branch because the required true report contradicts the specified false flag.

<a id="line-code-leanified-corereader-logic-lean-176"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:176 --> **L176** Assume the changed application scope could satisfy the reporting rule with a false change flag.

<a id="line-code-leanified-corereader-logic-lean-177"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:177 --> **L177** Compare the two scopes at true to refute SameContent, then apply the reporting obligation to this real scope change.

<a id="line-code-leanified-corereader-logic-lean-178"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:178 --> **L178** Close this hidden-change branch because the required true report contradicts the specified false flag.

<a id="line-code-leanified-corereader-logic-lean-179"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:179 --> **L179** The distinct revision identities alone activate the reporting rule, contradicting the false report even without a content change.

<a id="line-code-leanified-corereader-logic-lean-180"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:180 --> **L180** Construct an always-positive truthful report, while leaving the separate truth of the revised assumption to be refuted.

<a id="line-code-leanified-corereader-logic-lean-181"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:181 --> **L181** Extract the revised false-world assumption at actual true; its impossible equality shows acknowledgement did not make it true.

<a id="line-code-leanified-corereader-logic-lean-182"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:182 --> **L182** Document the intended scope of tensionWithoutContradiction. The corresponding declaration concerns: Exhibits overlapping lower/upper budget bounds while proving that the two predicates differ. This is a concrete compatible-constraints example. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-183"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:183 --> **L183** Begin provenance metadata for CoreReader.Logic.tensionWithoutContradiction; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-184"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:184 --> **L184** Register source unit organon.charter.consistency.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-185"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:185 --> **L185** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-186"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:186 --> **L186** State the checked result tensionWithoutContradiction. Exhibits overlapping lower/upper budget bounds while proving that the two predicates differ. This is a concrete compatible-constraints example.

<a id="line-code-leanified-corereader-logic-lean-187"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:187 --> **L187** Ask for a natural-number budget satisfying both lower bound 4 and upper bound 6.

<a id="line-code-leanified-corereader-logic-lean-188"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:188 --> **L188** Also assert that the two bound predicates are not identical, even though jointly satisfiable.

<a id="line-code-leanified-corereader-logic-lean-189"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:189 --> **L189** Choose budget 5, check both numeric bounds, and leave the inequality of the two objective predicates.

<a id="line-code-leanified-corereader-logic-lean-190"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:190 --> **L190** At budget 0, the upper bound holds but the lower bound cannot; therefore the objective predicates cannot be equal.

<a id="line-code-leanified-corereader-logic-lean-191"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:191 --> **L191** Document the intended scope of conflictRequiresChange. The corresponding declaration concerns: Given both signed consequences for one question, proves inconsistency as defined. It does not construct a repair or establish which premise should change. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-192"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:192 --> **L192** Begin provenance metadata for CoreReader.Logic.conflictRequiresChange; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-193"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:193 --> **L193** Register source unit organon.charter.consistency.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-194"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:194 --> **L194** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-195"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:195 --> **L195** State the checked result conflictRequiresChange. Given both signed consequences for one question, proves inconsistency as defined. It does not construct a repair or establish which premise should change.

<a id="line-code-leanified-corereader-logic-lean-196"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:196 --> **L196** Assume both opposed consequences for exactly the same theory, context and question.

<a id="line-code-leanified-corereader-logic-lean-197"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:197 --> **L197** Any Consistent proof would forbid that given pair; apply it to refute consistency, without constructing a revision.

<a id="line-code-leanified-corereader-logic-lean-198"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:198 --> **L198** Document the intended scope of consistentFalse. The corresponding declaration concerns: Exhibits a satisfiable Boolean singleton theory that fails at the separately chosen world false; satisfiability is not truth at every world. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-199"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:199 --> **L199** Begin provenance metadata for CoreReader.Logic.consistentFalse; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-200"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:200 --> **L200** Register source unit organon.charter.consistency.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-201"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:201 --> **L201** Register source unit organon.relationships.roles#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-202"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:202 --> **L202** Register source unit organon.relationships.roles#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-203"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:203 --> **L203** Register source unit organon.relationships.roles#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-204"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:204 --> **L204** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-205"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:205 --> **L205** State the checked result consistentFalse. Exhibits a satisfiable Boolean singleton theory that fails at the separately chosen world false; satisfiability is not truth at every world.

<a id="line-code-leanified-corereader-logic-lean-206"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:206 --> **L206** Deny that actual false models the theory whose sole claim is world=true.

<a id="line-code-leanified-corereader-logic-lean-207"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:207 --> **L207** Provide true as a model of the singleton theory and separately refute modeling it at actual false.

<a id="line-code-leanified-corereader-logic-lean-208"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:208 --> **L208** Singleton modeling at false would force false = true, an impossible Boolean equality.

<a id="line-code-leanified-corereader-logic-lean-209"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:209 --> **L209** Document the intended scope of consistentIncomplete. The corresponding declaration concerns: Shows the empty Boolean theory is satisfiable while entailing neither the true-world claim nor its negation. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-210"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:210 --> **L210** Begin provenance metadata for CoreReader.Logic.consistentIncomplete; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-211"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:211 --> **L211** Register source unit organon.charter.consistency.limits#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-212"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:212 --> **L212** Register source unit organon.relationships.roles#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-213"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:213 --> **L213** Register source unit organon.relationships.roles#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-214"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:214 --> **L214** Register source unit organon.relationships.roles#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-215"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:215 --> **L215** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-216"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:216 --> **L216** State the checked result consistentIncomplete. Shows the empty Boolean theory is satisfiable while entailing neither the true-world claim nor its negation.

<a id="line-code-leanified-corereader-logic-lean-217"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:217 --> **L217** The inhabited empty theory does not entail the positive true-world answer.

<a id="line-code-leanified-corereader-logic-lean-218"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:218 --> **L218** It also does not entail the negative true-world answer; prove these two failures separately.

<a id="line-code-leanified-corereader-logic-lean-219"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:219 --> **L219** Show every Boolean world satisfies emptyTheory because membership in that theory is False.

<a id="line-code-leanified-corereader-logic-lean-220"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:220 --> **L220** Provide an inhabited empty theory and leave both positive and negative entailments to be refuted.

<a id="line-code-leanified-corereader-logic-lean-221"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:221 --> **L221** A purported entailment of world=true fails at the empty theory model false.

<a id="line-code-leanified-corereader-logic-lean-222"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:222 --> **L222** A purported entailment of world≠true fails at the empty theory model true.

<a id="line-code-leanified-corereader-logic-lean-223"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:223 --> **L223** Document the intended scope of compatibilityNotEntailment. The corresponding declaration concerns: Shows that adding a claim can remain satisfiable even though the original empty theory did not entail that claim. This comment is explanatory, not a proof premise.

<a id="line-code-leanified-corereader-logic-lean-224"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:224 --> **L224** Begin provenance metadata for CoreReader.Logic.compatibilityNotEntailment; the mapping identifies the source-correspondence object, not a Lean premise or correctness certificate.

<a id="line-code-leanified-corereader-logic-lean-225"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:225 --> **L225** Register source unit organon.grounds.assessment#p1 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-226"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:226 --> **L226** Register source unit organon.grounds.assessment#p2 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-227"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:227 --> **L227** Register source unit organon.grounds.assessment#p3 with the displayed SHA-256 content identity. This is traceability metadata, not part of the theorem’s proof.

<a id="line-code-leanified-corereader-logic-lean-228"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:228 --> **L228** Close the preceding documentation/provenance comment; no executable or logical clause is added.

<a id="line-code-leanified-corereader-logic-lean-229"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:229 --> **L229** State the checked result compatibilityNotEntailment. Shows that adding a claim can remain satisfiable even though the original empty theory did not entail that claim.

<a id="line-code-leanified-corereader-logic-lean-230"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:230 --> **L230** Require a model where emptyTheory and the positive singleton claim hold together.

<a id="line-code-leanified-corereader-logic-lean-231"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:231 --> **L231** Still deny that emptyTheory by itself entails that positive claim.

<a id="line-code-leanified-corereader-logic-lean-232"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:232 --> **L232** Use world true to witness compatibility of the empty theory with the positive singleton claim.

<a id="line-code-leanified-corereader-logic-lean-233"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:233 --> **L233** Reuse the previously proved failure of positive entailment from the empty theory.

<a id="line-code-leanified-corereader-logic-lean-234"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:234 --> **L234** Finish the model witness: no claim can actually belong to emptyTheory.

<a id="line-code-leanified-corereader-logic-lean-236"></a>
<!-- lean-line leanified/CoreReader/Logic.lean:236 --> **L236** Close namespace CoreReader.Logic; this adds no proof or premise.

<a id="code-leanified-corereader-reflexivity-lean"></a>
### `leanified/CoreReader/Reflexivity.lean`

<!-- lean-code leanified/CoreReader/Reflexivity.lean -->
```lean
import Std

namespace CoreReader.Agency

inductive Phase | formation | application | revision
  deriving DecidableEq, Repr

structure PrincipleKey where
  owner : Nat
  localId : Nat
  deriving DecidableEq, Repr

inductive Subject
  | system (owner : Nat)
  | principle (owner id : Nat)
  | process (owner id : Nat) (phase : Phase)
  deriving DecidableEq, Repr

def Subject.owner : Subject → Nat
  | .system n => n
  | .principle n _ => n
  | .process n _ _ => n

inductive Activity | generation | assessment
  deriving DecidableEq, Repr

inductive QuestionKind | conformity | formationBasis | applicability | revisionGrounds
  deriving DecidableEq, Repr

inductive SampleProgram | alwaysTrue | onlyAtZero
  deriving DecidableEq, Repr

def SampleProgram.run : SampleProgram → Nat → Bool
  | .alwaysTrue, _ => true
  | .onlyAtZero, n => n == 0

/- A generated candidate specifies both the inputs it tests and the scope it proposes to license. -/
structure MethodDraft where
  testedInputs : List Nat
  claimedScope : List Nat
  deriving DecidableEq, Repr

def MethodDraft.accepts (draft : MethodDraft) (program : SampleProgram) : Bool :=
  draft.testedInputs.all program.run

/- This finite application asks whether a proposed rule's observed inputs support its claimed input scope. -/
structure Inquiry where
  target : Subject
  kind : QuestionKind
  requestedScope : List Nat
  currentMethod : MethodDraft
  deriving DecidableEq, Repr

inductive ReasonContent
  | purpose (inputs : List Nat)
  | declaredScope (inputs : List Nat)
  | observation (input : Nat) (output : Bool)
  | counterexample (program : SampleProgram) (input : Nat)
  deriving DecidableEq, Repr

def ReasonContent.identifier : ReasonContent → Nat
  | .purpose _ => 0
  | .declaredScope _ => 1
  | .observation _ _ => 2
  | .counterexample _ _ => 3

/- Reasons have independently supplied contents, a stable local reference and the actual target they concern. -/
structure ReasonObject where
  reference : Nat
  target : Subject
  content : ReasonContent
  deriving DecidableEq, Repr

inductive AssessmentResult | supportedWithinScope | insufficient | notApplicable | undetermined
  deriving DecidableEq, Repr

inductive WorkOutcome
  | assessment (result : AssessmentResult)
  | generated (draft : MethodDraft)
  deriving DecidableEq, Repr

/- A method's question, source reasons and limits are determined before looking at its activity records.
The meaning relation describes application of that method, not its universal adequacy. -/
structure Principle where
  key : PrincipleKey
  activity : Activity
  declaredMethod : MethodDraft
  applicable : Subject → Prop
  inquiry : Subject → Inquiry
  reasons : Subject → List ReasonObject
  limits : Subject → List Nat
  meaning : Inquiry → List ReasonObject → List Nat → WorkOutcome → Prop

structure WorkRecord where
  usedPrinciple : PrincipleKey
  target : Subject
  activity : Activity
  inquiry : Inquiry
  reasons : List ReasonObject
  limits : List Nat
  outcome : WorkOutcome
  deriving DecidableEq, Repr

def RegistryCoherent (rules : List Principle) : Prop :=
  ∀ p ∈ rules, ∀ q ∈ rules, p.key = q.key → p = q

def TargetResolved (rules : List Principle) : Subject → Prop
  | .system owner => ∃ p ∈ rules, p.key.owner = owner
  | .principle owner id | .process owner id _ => ∃ p ∈ rules, p.key = ⟨owner,id⟩

/- The inquiry names the registered target's declared method contract, not an unrelated candidate.
For a system inquiry this finite model uses the registered generation contract as its assessed artifact. -/
def TargetContentResolved (rules : List Principle) (question : Inquiry) : Prop :=
  match question.target with
  | .system owner => ∃ p ∈ rules, p.key = ⟨owner,0⟩ ∧ question.currentMethod = p.declaredMethod
  | .principle owner id | .process owner id _ =>
      ∃ p ∈ rules, p.key = ⟨owner,id⟩ ∧ question.currentMethod = p.declaredMethod

def Performed (records : List WorkRecord) (s : Subject) (a : Activity) : Prop :=
  ∃ record ∈ records, record.target = s ∧ record.activity = a

/- The old scope condition remains available without conflating scope with content completion. -/
def ReflexiveScope (owner : Nat) (rules : List Principle) (records : List WorkRecord) : Prop :=
  ∀ rule ∈ rules, ∀ s, s.owner = owner → rule.applicable s → Performed records s rule.activity

/- A record uses a registered principle on the same resolvable target, question, reasons and limits,
and its result must actually follow that principle's method. A negative result can satisfy this relation. -/
structure ValidApplication (rules : List Principle) (rule : Principle) (s : Subject)
    (record : WorkRecord) : Prop where
  registered : rule ∈ rules
  applicable : rule.applicable s
  usedIdentity : record.usedPrinciple = rule.key
  targetIdentity : record.target = s
  targetResolved : TargetResolved rules s
  activityIdentity : record.activity = rule.activity
  inquiryIdentity : record.inquiry = rule.inquiry s
  inquiryTarget : record.inquiry.target = s
  targetContent : TargetContentResolved rules record.inquiry
  reasonsIdentity : record.reasons = rule.reasons s
  reasonsNonempty : record.reasons ≠ []
  reasonTargets : ∀ reason ∈ record.reasons, reason.target = s
  limitsIdentity : record.limits = rule.limits s
  followsMeaning : rule.meaning record.inquiry record.reasons record.limits record.outcome

/- The registered normative interface requires contentful application, not just activity labels. -/
/-- organon-map CoreReader.Agency.Reflexive
organon.charter.reflexivity#p1 sha256 13293b45c2fa89068c68ae7ef3c5df38f0efadb3ef3873d78a5ba67d9691a757
organon.charter.reflexivity.meaning#p1 sha256 8a2caede01a43d8b6c60b54c78ac089c51868e9956f316948077ccee2e45c9cc
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
def Reflexive (owner : Nat) (rules : List Principle) (records : List WorkRecord) : Prop :=
  RegistryCoherent rules ∧
  ∀ rule ∈ rules, ∀ s, s.owner = owner → rule.applicable s →
    ∃ record ∈ records, ValidApplication rules rule s record

theorem Reflexive.toScope {owner : Nat} {rules : List Principle} {records : List WorkRecord}
    (h : Reflexive owner rules records) : ReflexiveScope owner rules records := by
  intro rule hr s hs ha
  obtain ⟨record, hm, hv⟩ := h.2 rule hr s hs ha
  exact ⟨record, hm, hv.targetIdentity, hv.activityIdentity⟩

/-- organon-map CoreReader.Agency.noSelfExemption
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem noSelfExemption (owner : Nat) (rules : List Principle) (records : List WorkRecord)
    (h : Reflexive owner rules records) (rule : Principle) (hr : rule ∈ rules)
    (s : Subject) (hs : s.owner = owner) (ha : rule.applicable s) :
    Performed records s rule.activity := h.toScope rule hr s hs ha

def localMethod : MethodDraft := ⟨[0],[0]⟩

def inquiryFor (s : Subject) : Inquiry :=
  match s with
  | .process _ _ .formation => ⟨s, .formationBasis, [0], localMethod⟩
  | .process _ _ .application => ⟨s, .applicability, [0], localMethod⟩
  | .process _ _ .revision => ⟨s, .revisionGrounds, [0,1], localMethod⟩
  | _ => ⟨s, .conformity, [0], localMethod⟩

/- These original inquiry inputs do not depend on which work records happen to be present. -/
def sourceReasonContents : QuestionKind → List ReasonContent
  | .formationBasis => [.purpose [0], .declaredScope [0], .observation 0 true]
  | .applicability | .conformity => [.declaredScope [0], .observation 0 true]
  | .revisionGrounds => [.purpose [0,1], .declaredScope [0], .observation 0 true,
      .counterexample .onlyAtZero 1]

def reasonsFor (s : Subject) : List ReasonObject :=
  (sourceReasonContents (inquiryFor s).kind).map fun content => ⟨content.identifier,s,content⟩

/- The application-specific evaluator examines actual scope and sample/counterexample contents.
It is a finite inferential method, not a universal standard for empirical or value claims. -/
def assessInquiry (question : Inquiry) (reasons : List ReasonObject) (limits : List Nat) : AssessmentResult :=
  let contents := reasons.map ReasonObject.content
  if limits ≠ question.currentMethod.claimedScope then .undetermined else
  match question.kind with
  | .formationBasis =>
      if ReasonContent.purpose question.requestedScope ∈ contents ∧
          ReasonContent.declaredScope limits ∈ contents ∧ question.requestedScope = limits
      then .supportedWithinScope else .undetermined
  | .applicability | .conformity =>
      if question.requestedScope.all (fun n => limits.contains n) then
        if ReasonContent.declaredScope limits ∈ contents ∧
            ReasonContent.observation 0 true ∈ contents ∧ question.requestedScope = [0]
        then .supportedWithinScope else .undetermined
      else .notApplicable
  | .revisionGrounds =>
      if ReasonContent.purpose question.requestedScope ∈ contents ∧
          ReasonContent.declaredScope limits ∈ contents ∧
          ReasonContent.observation 0 true ∈ contents ∧
          contents.any (fun reason => match reason with
            | .counterexample program input => question.requestedScope.contains input &&
                question.currentMethod.accepts program &&
                !(program.run input)
            | _ => false)
      then .insufficient else .undetermined

def finiteMethodResult (activity : Activity) (question : Inquiry)
    (reasons : List ReasonObject) (limits : List Nat) : WorkOutcome :=
  match activity with
  | .generation => .generated ⟨question.currentMethod.testedInputs,question.requestedScope⟩
  | .assessment => .assessment (assessInquiry question reasons limits)

def finiteMethodMeaning (activity : Activity) (question : Inquiry)
    (reasons : List ReasonObject) (limits : List Nat) (outcome : WorkOutcome) : Prop :=
  outcome = finiteMethodResult activity question reasons limits

def ownSubjects (owner : Nat) : List Subject :=
  [.system owner, .principle owner 0, .principle owner 1,
   .process owner 0 .formation, .process owner 0 .application, .process owner 0 .revision,
   .process owner 1 .formation, .process owner 1 .application, .process owner 1 .revision]

/- Applying an existing rule is not a generation event in this application. -/
def generationEligible : Subject → Bool
  | .process _ _ .application => false
  | _ => true

def generatingRule (owner : Nat) : Principle where
  key := ⟨owner,0⟩
  activity := .generation
  declaredMethod := localMethod
  applicable s := s ∈ ownSubjects owner ∧ generationEligible s = true
  inquiry := inquiryFor
  reasons := reasonsFor
  limits _ := [0]
  meaning := finiteMethodMeaning .generation

def assessingRule (owner : Nat) : Principle where
  key := ⟨owner,1⟩
  activity := .assessment
  declaredMethod := localMethod
  applicable s := s ∈ ownSubjects owner
  inquiry := inquiryFor
  reasons := reasonsFor
  limits _ := [0]
  meaning := finiteMethodMeaning .assessment

def ownRules (owner : Nat) : List Principle := [generatingRule owner, assessingRule owner]

/- Recorded verdicts are stated separately from the evaluator, so agreement has to be proved. -/
def statedOutcome (activity : Activity) (s : Subject) : WorkOutcome :=
  match activity with
  | .generation => .generated ⟨(inquiryFor s).currentMethod.testedInputs,(inquiryFor s).requestedScope⟩
  | .assessment => .assessment (match (inquiryFor s).kind with
      | .revisionGrounds => .insufficient
      | _ => .supportedWithinScope)

def recordFor (rule : Principle) (s : Subject) : WorkRecord :=
  ⟨rule.key,s,rule.activity,rule.inquiry s,rule.reasons s,rule.limits s,statedOutcome rule.activity s⟩

theorem reasonsFor_nonempty (s : Subject) : reasonsFor s ≠ [] := by
  cases s with
  | system owner => simp [reasonsFor, inquiryFor, sourceReasonContents]
  | principle owner id => simp [reasonsFor, inquiryFor, sourceReasonContents]
  | process owner id phase => cases phase <;> simp [reasonsFor, inquiryFor, sourceReasonContents]

theorem reasonsFor_target (s : Subject) : ∀ reason ∈ reasonsFor s, reason.target = s := by
  intro reason h
  obtain ⟨content, _, rfl⟩ := List.mem_map.mp h
  rfl

theorem inquiryFor_target (s : Subject) : (inquiryFor s).target = s := by
  cases s with
  | system owner => rfl
  | principle owner id => rfl
  | process owner id phase => cases phase <;> rfl

/- This proof includes the actual negative revision evaluation for both principle identities. -/
theorem ownContentEvaluates (activity : Activity) (s : Subject) :
    statedOutcome activity s = finiteMethodResult activity (inquiryFor s) (reasonsFor s) [0] := by
  cases activity with
  | generation => rfl
  | assessment =>
      cases s with
      | system owner => rfl
      | principle owner id => rfl
      | process owner id phase => cases phase <;> rfl

theorem ownRegistryCoherent (owner : Nat) : RegistryCoherent (ownRules owner) := by
  intro p hp q hq hkey
  simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hp hq
  rcases hp with rfl | rfl <;> rcases hq with rfl | rfl
  · rfl
  · have bad := congrArg PrincipleKey.localId hkey; contradiction
  · have bad := congrArg PrincipleKey.localId hkey; contradiction
  · rfl

theorem ownTargetResolved (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner) :
    TargetResolved (ownRules owner) s := by
  simp only [ownSubjects, List.mem_cons, List.not_mem_nil, or_false] at hs
  rcases hs with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    simp [TargetResolved, ownRules, generatingRule, assessingRule]

theorem ownTargetContent (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner) :
    TargetContentResolved (ownRules owner) (inquiryFor s) := by
  simp only [ownSubjects, List.mem_cons, List.not_mem_nil, or_false] at hs
  rcases hs with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    simp [TargetContentResolved, inquiryFor, ownRules, generatingRule, assessingRule]

theorem ownRecordValid (owner : Nat) (rule : Principle) (hr : rule ∈ ownRules owner)
    (s : Subject) (ha : rule.applicable s) :
    ValidApplication (ownRules owner) rule s (recordFor rule s) := by
  have hs : s ∈ ownSubjects owner := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl
    · exact ha.1
    · exact ha
  have hq : rule.inquiry = inquiryFor := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl <;> rfl
  have hg : rule.reasons = reasonsFor := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl <;> rfl
  have hl : rule.limits s = [0] := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl <;> rfl
  have hm : rule.meaning = finiteMethodMeaning rule.activity := by
    simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl <;> rfl
  refine ⟨hr, ha, rfl, rfl, ownTargetResolved owner s hs, rfl, rfl, ?_, ?_, rfl, ?_, ?_, rfl, ?_⟩
  · change (rule.inquiry s).target = s
    rw [hq]; exact inquiryFor_target s
  · change TargetContentResolved (ownRules owner) (rule.inquiry s)
    rw [hq]; exact ownTargetContent owner s hs
  · change rule.reasons s ≠ []
    rw [hg]; exact reasonsFor_nonempty s
  · change ∀ reason ∈ rule.reasons s, reason.target = s
    rw [hg]; exact reasonsFor_target s
  · change rule.meaning (rule.inquiry s) (rule.reasons s) (rule.limits s) (statedOutcome rule.activity s)
    rw [hm, hq, hg, hl]
    exact ownContentEvaluates rule.activity s

def completeOwnWork (owner : Nat) : List WorkRecord :=
  (ownSubjects owner).flatMap fun s =>
    if generationEligible s then [recordFor (generatingRule owner) s, recordFor (assessingRule owner) s]
    else [recordFor (assessingRule owner) s]

theorem assessingRecord_member (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner) :
    recordFor (assessingRule owner) s ∈ completeOwnWork owner := by
  apply List.mem_flatMap.mpr
  refine ⟨s,hs,?_⟩
  cases generationEligible s <;> simp

theorem generatingRecord_member (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner)
    (hg : generationEligible s = true) : recordFor (generatingRule owner) s ∈ completeOwnWork owner := by
  exact List.mem_flatMap.mpr ⟨s,hs,by simp [hg]⟩

theorem completeOwnWork_reflexive (owner : Nat) :
    Reflexive owner (ownRules owner) (completeOwnWork owner) := by
  refine ⟨ownRegistryCoherent owner, ?_⟩
  intro rule hr s _ ha
  refine ⟨recordFor rule s, ?_, ownRecordValid owner rule hr s ha⟩
  simp only [ownRules, List.mem_cons, List.not_mem_nil, or_false] at hr
  rcases hr with rfl | rfl
  · exact generatingRecord_member owner s ha.1 ha.2
  · exact assessingRecord_member owner s ha

theorem ownAssessmentPerformed (owner : Nat) (s : Subject) (hs : s ∈ ownSubjects owner) :
    Performed (completeOwnWork owner) s .assessment :=
  ⟨recordFor (assessingRule owner) s, assessingRecord_member owner s hs, rfl, rfl⟩

def applicationRule : Principle :=
  { assessingRule 0 with key := ⟨0,0⟩, applicable := fun s => s = .process 0 0 .application }

def applicationWork : List WorkRecord := [recordFor applicationRule (.process 0 0 .application)]

theorem applicationWork_reflexive : Reflexive 0 [applicationRule] applicationWork := by
  constructor
  · intro p hp q hq _
    simp only [List.mem_singleton] at hp hq
    rw [hp,hq]
  · intro rule hr s _ ha
    simp only [List.mem_singleton] at hr
    subst rule
    change s = .process 0 0 .application at ha
    subst s
    refine ⟨recordFor applicationRule (.process 0 0 .application), by simp [applicationWork], ?_⟩
    refine ⟨by simp, rfl, rfl, rfl, ?_, rfl, rfl, rfl, ?_, rfl, ?_, ?_, rfl, ?_⟩
    · exact ⟨applicationRule, by simp, rfl⟩
    · exact ⟨applicationRule, by simp, rfl, rfl⟩
    · exact reasonsFor_nonempty _
    · exact reasonsFor_target _
    · change statedOutcome .assessment (.process 0 0 .application) = finiteMethodResult .assessment (inquiryFor (.process 0 0 .application)) (reasonsFor (.process 0 0 .application)) [0]
      exact ownContentEvaluates .assessment _

/-- organon-map CoreReader.Agency.applicabilityRetained
organon.charter.reflexivity.limits#p1 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem applicabilityRetained (owner : Nat) (rules : List Principle) (records : List WorkRecord) :
    (Reflexive owner rules records → ReflexiveScope owner rules records) ∧
    (ReflexiveScope owner rules records ↔
      ∀ rule ∈ rules, ∀ s, s.owner = owner → (¬ rule.applicable s ∨ Performed records s rule.activity)) ∧
    (Reflexive 0 [applicationRule] applicationWork ∧
      ¬ Performed applicationWork (.system 0) .assessment) := by
  classical
  refine ⟨Reflexive.toScope, ?_, applicationWork_reflexive, ?_⟩
  · constructor
    · intro h rule hr s hs
      by_cases ha : rule.applicable s
      · exact Or.inr (h rule hr s hs ha)
      · exact Or.inl ha
    · intro h rule hr s hs ha
      exact (h rule hr s hs).resolve_left (not_not_intro ha)
  · rintro ⟨record, hm, ht, _⟩
    simp only [applicationWork, List.mem_singleton] at hm
    subst record
    cases ht

end CoreReader.Agency
```
<!-- /lean-code leanified/CoreReader/Reflexivity.lean -->

<a id="line-code-leanified-corereader-reflexivity-lean-1"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:1 --> **L1** Imports Std and its dependencies into this module.

<a id="line-code-leanified-corereader-reflexivity-lean-3"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:3 --> **L3** Opens namespace CoreReader.Agency; file boundaries do not change declaration identity.

<a id="line-code-leanified-corereader-reflexivity-lean-5"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:5 --> **L5** Defines formation, application and revision phase tags.

<a id="line-code-leanified-corereader-reflexivity-lean-6"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:6 --> **L6** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-8"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:8 --> **L8** Identifies a registered principle by owner and local identifier.

<a id="line-code-leanified-corereader-reflexivity-lean-9"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:9 --> **L9** Stores the owning subject identifier.

<a id="line-code-leanified-corereader-reflexivity-lean-10"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:10 --> **L10** Stores the principle identifier within its owner.

<a id="line-code-leanified-corereader-reflexivity-lean-11"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:11 --> **L11** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-13"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:13 --> **L13** Distinguishes system, principle and phase-indexed principle-process objects.

<a id="line-code-leanified-corereader-reflexivity-lean-14"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:14 --> **L14** Represents the system itself, identified by its owner number.

<a id="line-code-leanified-corereader-reflexivity-lean-15"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:15 --> **L15** Represents a particular principle by owner and local principle identifier.

<a id="line-code-leanified-corereader-reflexivity-lean-16"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:16 --> **L16** Represents that principle's formation, application or revision process as a separate subject.

<a id="line-code-leanified-corereader-reflexivity-lean-17"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:17 --> **L17** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-19"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:19 --> **L19** Extracts the owner's identifier from every subject constructor.

<a id="line-code-leanified-corereader-reflexivity-lean-20"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:20 --> **L20** Extracts the owner directly from a system subject.

<a id="line-code-leanified-corereader-reflexivity-lean-21"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:21 --> **L21** Extracts a principle's owner while ignoring its local identifier.

<a id="line-code-leanified-corereader-reflexivity-lean-22"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:22 --> **L22** Extracts a process subject's owner independently of its principle identifier and phase.

<a id="line-code-leanified-corereader-reflexivity-lean-24"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:24 --> **L24** Distinguishes generation work from assessment work.

<a id="line-code-leanified-corereader-reflexivity-lean-25"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:25 --> **L25** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-27"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:27 --> **L27** Separates conformity, formation basis, applicability and revision-ground questions.

<a id="line-code-leanified-corereader-reflexivity-lean-28"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:28 --> **L28** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-30"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:30 --> **L30** Provides a constant-true program and a program true only at zero.

<a id="line-code-leanified-corereader-reflexivity-lean-31"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:31 --> **L31** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-33"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:33 --> **L33** Evaluates those two programs on natural inputs.

<a id="line-code-leanified-corereader-reflexivity-lean-34"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:34 --> **L34** The alwaysTrue sample program accepts every natural-number input.

<a id="line-code-leanified-corereader-reflexivity-lean-35"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:35 --> **L35** The onlyAtZero program returns true precisely at input zero.

<a id="line-code-leanified-corereader-reflexivity-lean-37"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:37 --> **L37** Documents the following definition or result: Stores tested inputs separately from the claimed scope, allowing overextended claims.

<a id="line-code-leanified-corereader-reflexivity-lean-38"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:38 --> **L38** Stores tested inputs separately from the claimed scope, allowing overextended claims.

<a id="line-code-leanified-corereader-reflexivity-lean-39"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:39 --> **L39** Records the inputs on which this method draft actually tests a program.

<a id="line-code-leanified-corereader-reflexivity-lean-40"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:40 --> **L40** Separately records the input scope the draft proposes to authorize.

<a id="line-code-leanified-corereader-reflexivity-lean-41"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:41 --> **L41** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-43"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:43 --> **L43** Accepts a program when it succeeds on all listed test inputs; untested inputs are unchecked.

<a id="line-code-leanified-corereader-reflexivity-lean-44"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:44 --> **L44** Accepts a program when every tested input returns true; claimedScope is not checked here.

<a id="line-code-leanified-corereader-reflexivity-lean-46"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:46 --> **L46** Documents the following definition or result: Binds a target and question kind to requested scope and the target's current method content.

<a id="line-code-leanified-corereader-reflexivity-lean-47"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:47 --> **L47** Binds a target and question kind to requested scope and the target's current method content.

<a id="line-code-leanified-corereader-reflexivity-lean-48"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:48 --> **L48** Identifies the exact subject whose method is being examined.

<a id="line-code-leanified-corereader-reflexivity-lean-49"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:49 --> **L49** Distinguishes conformity, formation reasons, applicability and revision reasons as inquiry purposes.

<a id="line-code-leanified-corereader-reflexivity-lean-50"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:50 --> **L50** Records the input scope this particular inquiry asks the method to cover.

<a id="line-code-leanified-corereader-reflexivity-lean-51"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:51 --> **L51** Attaches the actual method draft under examination, including its tested and claimed inputs.

<a id="line-code-leanified-corereader-reflexivity-lean-52"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:52 --> **L52** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-54"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:54 --> **L54** Represents purposes, declared scopes, observations and concrete program/input counterexamples.

<a id="line-code-leanified-corereader-reflexivity-lean-55"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:55 --> **L55** A purpose reason names the inputs the method is intended to address.

<a id="line-code-leanified-corereader-reflexivity-lean-56"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:56 --> **L56** A scope reason states the method's declared input limits.

<a id="line-code-leanified-corereader-reflexivity-lean-57"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:57 --> **L57** An observation reason records a specific input and Boolean output.

<a id="line-code-leanified-corereader-reflexivity-lean-58"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:58 --> **L58** A counterexample reason names an actual sample program and input to check.

<a id="line-code-leanified-corereader-reflexivity-lean-59"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:59 --> **L59** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-61"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:61 --> **L61** Assigns a small code to each reason constructor; the code alone is not evidential content.

<a id="line-code-leanified-corereader-reflexivity-lean-62"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:62 --> **L62** Uses local reference 0 for purpose reasons; this is a category identifier, not a unique global identity.

<a id="line-code-leanified-corereader-reflexivity-lean-63"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:63 --> **L63** Uses local reference 1 for declared-scope reasons.

<a id="line-code-leanified-corereader-reflexivity-lean-64"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:64 --> **L64** Uses local reference 2 for observation reasons.

<a id="line-code-leanified-corereader-reflexivity-lean-65"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:65 --> **L65** Uses local reference 3 for counterexample reasons.

<a id="line-code-leanified-corereader-reflexivity-lean-67"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:67 --> **L67** Documents the following definition or result: Attaches a reason's content and reference to the subject it concerns.

<a id="line-code-leanified-corereader-reflexivity-lean-68"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:68 --> **L68** Attaches a reason's content and reference to the subject it concerns.

<a id="line-code-leanified-corereader-reflexivity-lean-69"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:69 --> **L69** Stores a local reference identifying this reason in the modeled inquiry.

<a id="line-code-leanified-corereader-reflexivity-lean-70"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:70 --> **L70** Identifies the subject this reason actually concerns.

<a id="line-code-leanified-corereader-reflexivity-lean-71"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:71 --> **L71** Stores the purpose, scope, observation or counterexample contents of the reason.

<a id="line-code-leanified-corereader-reflexivity-lean-72"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:72 --> **L72** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-74"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:74 --> **L74** Allows scoped support, insufficiency, nonapplicability and undetermined results.

<a id="line-code-leanified-corereader-reflexivity-lean-75"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:75 --> **L75** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-77"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:77 --> **L77** Separates an assessment result from a generated method draft.

<a id="line-code-leanified-corereader-reflexivity-lean-78"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:78 --> **L78** Packages a verdict as an assessment outcome; a negative verdict is still an assessment.

<a id="line-code-leanified-corereader-reflexivity-lean-79"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:79 --> **L79** Packages a newly generated method draft, without asserting that the draft is correct.

<a id="line-code-leanified-corereader-reflexivity-lean-80"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:80 --> **L80** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-82"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:82 --> **L82** Documents the following definition or result: Registers a rule's identity, activity, declared method, applicability, inquiries, reasons, limits and explicit outcome semantics.

<a id="line-code-leanified-corereader-reflexivity-lean-83"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:83 --> **L83** Documents the following definition or result: Registers a rule's identity, activity, declared method, applicability, inquiries, reasons, limits and explicit outcome semantics.

<a id="line-code-leanified-corereader-reflexivity-lean-84"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:84 --> **L84** Registers a rule's identity, activity, declared method, applicability, inquiries, reasons, limits and explicit outcome semantics.

<a id="line-code-leanified-corereader-reflexivity-lean-85"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:85 --> **L85** Gives the principle an owner/local identifier used to resolve its records.

<a id="line-code-leanified-corereader-reflexivity-lean-86"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:86 --> **L86** Specifies whether this principle governs generation or assessment activity.

<a id="line-code-leanified-corereader-reflexivity-lean-87"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:87 --> **L87** States the method draft belonging to this registered principle.

<a id="line-code-leanified-corereader-reflexivity-lean-88"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:88 --> **L88** States the subjects on which this principle is applicable.

<a id="line-code-leanified-corereader-reflexivity-lean-89"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:89 --> **L89** Assigns the actual question to examine for each subject.

<a id="line-code-leanified-corereader-reflexivity-lean-90"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:90 --> **L90** Assigns the reasons supplied for each subject's question.

<a id="line-code-leanified-corereader-reflexivity-lean-91"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:91 --> **L91** Assigns the retained input limits for each subject's application.

<a id="line-code-leanified-corereader-reflexivity-lean-92"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:92 --> **L92** Defines when an outcome follows this principle's question, reasons and limits; no adequacy law is imposed by this field alone.

<a id="line-code-leanified-corereader-reflexivity-lean-94"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:94 --> **L94** Stores the actual rule identity, target, activity, inquiry, reasons, limits and outcome used by an application.

<a id="line-code-leanified-corereader-reflexivity-lean-95"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:95 --> **L95** Records the exact registered principle key claimed to have been used.

<a id="line-code-leanified-corereader-reflexivity-lean-96"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:96 --> **L96** Records the subject on which this work was performed.

<a id="line-code-leanified-corereader-reflexivity-lean-97"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:97 --> **L97** Records whether this work was generation or assessment.

<a id="line-code-leanified-corereader-reflexivity-lean-98"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:98 --> **L98** Stores the concrete inquiry actually recorded for this work.

<a id="line-code-leanified-corereader-reflexivity-lean-99"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:99 --> **L99** Stores the concrete reasons used in this work record.

<a id="line-code-leanified-corereader-reflexivity-lean-100"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:100 --> **L100** Stores the input limits retained in this work record.

<a id="line-code-leanified-corereader-reflexivity-lean-101"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:101 --> **L101** Stores the recorded assessment verdict or generated method draft.

<a id="line-code-leanified-corereader-reflexivity-lean-102"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:102 --> **L102** Generates decidable equality and display instances for the preceding datatype.

<a id="line-code-leanified-corereader-reflexivity-lean-104"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:104 --> **L104** Requires equal registered keys to identify the same principle, preventing ambiguous duplicate identities.

<a id="line-code-leanified-corereader-reflexivity-lean-105"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:105 --> **L105** Two registered principles sharing one key must be the same principle, preventing ambiguous lookup.

<a id="line-code-leanified-corereader-reflexivity-lean-107"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:107 --> **L107** Requires each assessed target to resolve to a registered owner or exact principle key.

<a id="line-code-leanified-corereader-reflexivity-lean-108"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:108 --> **L108** A system subject is resolved when the registry contains some principle with that owner.

<a id="line-code-leanified-corereader-reflexivity-lean-109"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:109 --> **L109** Principle and process subjects require a registry entry with their exact owner and local identifier.

<a id="line-code-leanified-corereader-reflexivity-lean-111"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:111 --> **L111** Documents the following definition or result: Connects the inquiry's current method to the registered target principle's declared method.

<a id="line-code-leanified-corereader-reflexivity-lean-112"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:112 --> **L112** Documents the following definition or result: Connects the inquiry's current method to the registered target principle's declared method.

<a id="line-code-leanified-corereader-reflexivity-lean-113"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:113 --> **L113** Connects the inquiry's current method to the registered target principle's declared method.

<a id="line-code-leanified-corereader-reflexivity-lean-114"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:114 --> **L114** Chooses the lookup rule from the inquiry's actual target kind.

<a id="line-code-leanified-corereader-reflexivity-lean-115"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:115 --> **L115** A system inquiry examines the declared method of its owner's registered principle zero.

<a id="line-code-leanified-corereader-reflexivity-lean-116"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:116 --> **L116** For a principle or its process, retain that target's actual owner and identifier for lookup.

<a id="line-code-leanified-corereader-reflexivity-lean-117"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:117 --> **L117** Requires both exact key lookup and equality between the inquiry's method and that registered principle's method.

<a id="line-code-leanified-corereader-reflexivity-lean-119"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:119 --> **L119** Requires an actual stored record with the requested target and activity; validity is checked separately.

<a id="line-code-leanified-corereader-reflexivity-lean-120"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:120 --> **L120** Performed means a listed record has this exact subject and activity; by itself it checks no reason contents.

<a id="line-code-leanified-corereader-reflexivity-lean-122"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:122 --> **L122** Documents the following definition or result: Retains the owner-and-applicability-conditioned record-coverage interface.

<a id="line-code-leanified-corereader-reflexivity-lean-123"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:123 --> **L123** Retains the owner-and-applicability-conditioned record-coverage interface.

<a id="line-code-leanified-corereader-reflexivity-lean-124"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:124 --> **L124** Every applicable registered rule must have a performed activity on subjects belonging to the specified owner.

<a id="line-code-leanified-corereader-reflexivity-lean-126"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:126 --> **L126** Documents the following definition or result: Checks rule registration, applicability, object identities, resolved method content, nonempty targeted reasons, exact limits and agreement with the rule's semantics.

<a id="line-code-leanified-corereader-reflexivity-lean-127"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:127 --> **L127** Documents the following definition or result: Checks rule registration, applicability, object identities, resolved method content, nonempty targeted reasons, exact limits and agreement with the rule's semantics.

<a id="line-code-leanified-corereader-reflexivity-lean-128"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:128 --> **L128** Checks rule registration, applicability, object identities, resolved method content, nonempty targeted reasons, exact limits and agreement with the rule's semantics.

<a id="line-code-leanified-corereader-reflexivity-lean-129"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:129 --> **L129** The following proof fields certify one particular work record as a valid use of rule on s.

<a id="line-code-leanified-corereader-reflexivity-lean-130"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:130 --> **L130** Requires the rule used by the record to belong to this registry.

<a id="line-code-leanified-corereader-reflexivity-lean-131"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:131 --> **L131** Requires that same rule to be applicable to the assessed subject.

<a id="line-code-leanified-corereader-reflexivity-lean-132"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:132 --> **L132** Checks the record's used-principle key against this rule's exact key.

<a id="line-code-leanified-corereader-reflexivity-lean-133"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:133 --> **L133** Checks that the work record targets this exact subject s.

<a id="line-code-leanified-corereader-reflexivity-lean-134"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:134 --> **L134** Requires the record's subject to resolve within the same rule registry.

<a id="line-code-leanified-corereader-reflexivity-lean-135"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:135 --> **L135** Checks that the recorded activity is the activity governed by this rule.

<a id="line-code-leanified-corereader-reflexivity-lean-136"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:136 --> **L136** Checks that the recorded inquiry equals the inquiry this rule assigns to s.

<a id="line-code-leanified-corereader-reflexivity-lean-137"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:137 --> **L137** Separately checks that the inquiry itself targets s, rather than an unrelated subject.

<a id="line-code-leanified-corereader-reflexivity-lean-138"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:138 --> **L138** Checks that the inquiry's method belongs to its resolved registered target.

<a id="line-code-leanified-corereader-reflexivity-lean-139"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:139 --> **L139** Checks the recorded reasons equal those specified by this rule for s.

<a id="line-code-leanified-corereader-reflexivity-lean-140"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:140 --> **L140** Requires at least one actual reason in this record.

<a id="line-code-leanified-corereader-reflexivity-lean-141"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:141 --> **L141** Requires every recorded reason to concern the same subject s.

<a id="line-code-leanified-corereader-reflexivity-lean-142"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:142 --> **L142** Checks that recorded limits equal the rule's limits for s.

<a id="line-code-leanified-corereader-reflexivity-lean-143"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:143 --> **L143** Requires the record's outcome to satisfy the rule's actual meaning relation on its inquiry, reasons and limits.

<a id="line-code-leanified-corereader-reflexivity-lean-145"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:145 --> **L145** Documents the following definition or result: Requires a coherent registry and a valid recorded application for every applicable same-owner subject and registered rule; this remains a model compliance condition.

<a id="line-code-leanified-corereader-reflexivity-lean-146"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:146 --> **L146** Opens provenance metadata binding CoreReader.Agency.Reflexive to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-reflexivity-lean-147"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:147 --> **L147** Records source reference organon.charter.reflexivity#p1 with content digest 13293b45c2fa89068c68ae7ef3c5df38f0efadb3ef3873d78a5ba67d9691a757; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-reflexivity-lean-148"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:148 --> **L148** Records source reference organon.charter.reflexivity.meaning#p1 with content digest 8a2caede01a43d8b6c60b54c78ac089c51868e9956f316948077ccee2e45c9cc; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-reflexivity-lean-149"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:149 --> **L149** Records source reference organon.charter.reflexivity.limits#p1 with content digest ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-reflexivity-lean-150"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:150 --> **L150** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-reflexivity-lean-151"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:151 --> **L151** Requires a coherent registry and a valid recorded application for every applicable same-owner subject and registered rule; this remains a model compliance condition.

<a id="line-code-leanified-corereader-reflexivity-lean-152"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:152 --> **L152** Reflexive first requires unambiguous principle registration.

<a id="line-code-leanified-corereader-reflexivity-lean-153"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:153 --> **L153** It then ranges over each registered rule and owned subject where that rule is applicable.

<a id="line-code-leanified-corereader-reflexivity-lean-154"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:154 --> **L154** For each such application, some listed record must satisfy all ValidApplication content checks.

<a id="line-code-leanified-corereader-reflexivity-lean-156"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:156 --> **L156** Forgets content-validity details while extracting target/activity record coverage from full reflexivity.

<a id="line-code-leanified-corereader-reflexivity-lean-157"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:157 --> **L157** Assumes full contentful Reflexive compliance and derives its weaker scope-only coverage.

<a id="line-code-leanified-corereader-reflexivity-lean-158"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:158 --> **L158** Takes a registered rule, an owned subject and its applicability premise for the scope obligation.

<a id="line-code-leanified-corereader-reflexivity-lean-159"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:159 --> **L159** Uses full Reflexive compliance to obtain the actual listed record and its ValidApplication proof.

<a id="line-code-leanified-corereader-reflexivity-lean-160"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:160 --> **L160** Keeps that record's membership, target identity and activity identity to prove Performed.

<a id="line-code-leanified-corereader-reflexivity-lean-162"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:162 --> **L162** Opens provenance metadata binding CoreReader.Agency.noSelfExemption to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-reflexivity-lean-163"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:163 --> **L163** Records source reference organon.charter.reflexivity.limits#p1 with content digest ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-reflexivity-lean-164"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:164 --> **L164** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-reflexivity-lean-165"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:165 --> **L165** Instantiates full reflexivity at a registered applicable same-owner subject, then extracts its performance record.

<a id="line-code-leanified-corereader-reflexivity-lean-166"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:166 --> **L166** Requires full Reflexive compliance and actual membership of the rule in the registry.

<a id="line-code-leanified-corereader-reflexivity-lean-167"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:167 --> **L167** Also requires the target's owner to match and the rule to be applicable to it.

<a id="line-code-leanified-corereader-reflexivity-lean-168"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:168 --> **L168** Specializes the derived scope obligation to those premises, yielding this target's performed activity.

<a id="line-code-leanified-corereader-reflexivity-lean-170"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:170 --> **L170** Tests input zero and declares scope zero.

<a id="line-code-leanified-corereader-reflexivity-lean-172"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:172 --> **L172** Maps formation to basis, application to applicability, revision to grounds over zero and one, and other objects to conformity.

<a id="line-code-leanified-corereader-reflexivity-lean-173"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:173 --> **L173** Chooses the inquiry from the subject's process phase, retaining the same subject as target.

<a id="line-code-leanified-corereader-reflexivity-lean-174"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:174 --> **L174** For formation, asks about the basis for a method covering input zero.

<a id="line-code-leanified-corereader-reflexivity-lean-175"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:175 --> **L175** For application, asks whether the local method applies on input zero.

<a id="line-code-leanified-corereader-reflexivity-lean-176"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:176 --> **L176** For revision, asks about extending the same local method's scope to inputs zero and one.

<a id="line-code-leanified-corereader-reflexivity-lean-177"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:177 --> **L177** For a system or principle itself, asks conformity on the local scope {0}.

<a id="line-code-leanified-corereader-reflexivity-lean-179"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:179 --> **L179** Documents the following definition or result: Supplies question-specific purpose/scope/observation data, adding a failing untested-input program for revision review.

<a id="line-code-leanified-corereader-reflexivity-lean-180"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:180 --> **L180** Supplies question-specific purpose/scope/observation data, adding a failing untested-input program for revision review.

<a id="line-code-leanified-corereader-reflexivity-lean-181"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:181 --> **L181** Formation reasons state the purpose {0}, declared scope {0}, and the observed true result at zero.

<a id="line-code-leanified-corereader-reflexivity-lean-182"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:182 --> **L182** Applicability and conformity use the declared local scope plus the same observation at zero.

<a id="line-code-leanified-corereader-reflexivity-lean-183"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:183 --> **L183** Revision reasons request {0,1} while acknowledging a declared scope of {0} and only a zero observation.

<a id="line-code-leanified-corereader-reflexivity-lean-184"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:184 --> **L184** Adds the concrete onlyAtZero program at input one as a revision counterexample.

<a id="line-code-leanified-corereader-reflexivity-lean-186"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:186 --> **L186** Attaches every chosen reason's content to this exact inquiry target.

<a id="line-code-leanified-corereader-reflexivity-lean-187"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:187 --> **L187** Wraps each source reason with its category reference and the same subject s, preserving its actual content.

<a id="line-code-leanified-corereader-reflexivity-lean-189"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:189 --> **L189** Documents the following definition or result: Computes scoped results from actual reason contents and method scope; a program passing current tests but failing a requested input yields insufficiency for revision.

<a id="line-code-leanified-corereader-reflexivity-lean-190"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:190 --> **L190** Documents the following definition or result: Computes scoped results from actual reason contents and method scope; a program passing current tests but failing a requested input yields insufficiency for revision.

<a id="line-code-leanified-corereader-reflexivity-lean-191"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:191 --> **L191** Computes scoped results from actual reason contents and method scope; a program passing current tests but failing a requested input yields insufficiency for revision.

<a id="line-code-leanified-corereader-reflexivity-lean-192"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:192 --> **L192** Extracts reason contents for checking their substantive purpose, scope, observations and counterexamples.

<a id="line-code-leanified-corereader-reflexivity-lean-193"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:193 --> **L193** Returns undetermined if supplied limits differ from the examined method's declared scope.

<a id="line-code-leanified-corereader-reflexivity-lean-194"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:194 --> **L194** After checking limits, evaluates the specific kind of question asked.

<a id="line-code-leanified-corereader-reflexivity-lean-195"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:195 --> **L195** Selects the formation-basis assessment branch.

<a id="line-code-leanified-corereader-reflexivity-lean-196"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:196 --> **L196** Requires a purpose reason covering the inquiry's requested inputs.

<a id="line-code-leanified-corereader-reflexivity-lean-197"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:197 --> **L197** Also requires an explicit limit declaration and equality of requested and declared scopes.

<a id="line-code-leanified-corereader-reflexivity-lean-198"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:198 --> **L198** Formation is supportedWithinScope only when those content checks pass; otherwise it is undetermined.

<a id="line-code-leanified-corereader-reflexivity-lean-199"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:199 --> **L199** Uses the same local checks for applicability and conformity questions.

<a id="line-code-leanified-corereader-reflexivity-lean-200"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:200 --> **L200** First tests that every requested input belongs to the supplied limits.

<a id="line-code-leanified-corereader-reflexivity-lean-201"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:201 --> **L201** Within those limits, requires a reason explicitly declaring that same scope.

<a id="line-code-leanified-corereader-reflexivity-lean-202"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:202 --> **L202** Also requires the true observation at zero and a requested scope exactly equal to [0].

<a id="line-code-leanified-corereader-reflexivity-lean-203"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:203 --> **L203** Passing these local checks yields supportedWithinScope; incomplete evidence yields undetermined.

<a id="line-code-leanified-corereader-reflexivity-lean-204"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:204 --> **L204** A requested input outside the supplied limits yields notApplicable.

<a id="line-code-leanified-corereader-reflexivity-lean-205"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:205 --> **L205** Selects the revision-grounds branch, which searches for an actual scope counterexample.

<a id="line-code-leanified-corereader-reflexivity-lean-206"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:206 --> **L206** Requires a reason stating the revised requested scope as the intended purpose.

<a id="line-code-leanified-corereader-reflexivity-lean-207"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:207 --> **L207** Requires the old limits to be explicitly present as a declared-scope reason.

<a id="line-code-leanified-corereader-reflexivity-lean-208"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:208 --> **L208** Requires the original successful observation at input zero.

<a id="line-code-leanified-corereader-reflexivity-lean-209"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:209 --> **L209** Searches the supplied reason contents for a counterexample satisfying the following concrete checks.

<a id="line-code-leanified-corereader-reflexivity-lean-210"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:210 --> **L210** A counterexample's input must be inside the newly requested scope.

<a id="line-code-leanified-corereader-reflexivity-lean-211"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:211 --> **L211** Its program must nevertheless pass the current method's tested inputs.

<a id="line-code-leanified-corereader-reflexivity-lean-212"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:212 --> **L212** That same program must fail at the counterexample input.

<a id="line-code-leanified-corereader-reflexivity-lean-213"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:213 --> **L213** Other reason kinds cannot themselves satisfy this counterexample search.

<a id="line-code-leanified-corereader-reflexivity-lean-214"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:214 --> **L214** A witnessed testing/scope gap yields insufficient; without those contents, the result is undetermined.

<a id="line-code-leanified-corereader-reflexivity-lean-216"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:216 --> **L216** Generation keeps tested inputs and adopts requested scope; assessment executes the reason-sensitive inquiry evaluator.

<a id="line-code-leanified-corereader-reflexivity-lean-217"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:217 --> **L217** Supplies the same reasons and limits to the activity-specific result function.

<a id="line-code-leanified-corereader-reflexivity-lean-218"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:218 --> **L218** Chooses between generating a draft and evaluating an inquiry.

<a id="line-code-leanified-corereader-reflexivity-lean-219"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:219 --> **L219** Generation keeps the method's tested inputs but proposes the inquiry's requested scope; correctness is not certified.

<a id="line-code-leanified-corereader-reflexivity-lean-220"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:220 --> **L220** Assessment computes assessInquiry from this question's actual reasons and limits.

<a id="line-code-leanified-corereader-reflexivity-lean-222"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:222 --> **L222** Defines acceptable outcome by equality with the disclosed finite evaluation algorithm, not an assumed successful result.

<a id="line-code-leanified-corereader-reflexivity-lean-223"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:223 --> **L223** Receives the specific recorded outcome whose compliance with this activity's method is checked.

<a id="line-code-leanified-corereader-reflexivity-lean-224"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:224 --> **L224** An outcome follows the method exactly when it equals the computed finiteMethodResult.

<a id="line-code-leanified-corereader-reflexivity-lean-226"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:226 --> **L226** Enumerates the owner system, both registered principles and all three phases of each principle.

<a id="line-code-leanified-corereader-reflexivity-lean-227"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:227 --> **L227** Includes the system itself and its two principle identities as owned subjects.

<a id="line-code-leanified-corereader-reflexivity-lean-228"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:228 --> **L228** Includes formation, application and revision of principle zero as separate subjects.

<a id="line-code-leanified-corereader-reflexivity-lean-229"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:229 --> **L229** Also includes all three phases of principle one, giving nine owned subjects total.

<a id="line-code-leanified-corereader-reflexivity-lean-231"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:231 --> **L231** Documents the following definition or result: Excludes application-phase processes from this particular generation rule while retaining the other objects.

<a id="line-code-leanified-corereader-reflexivity-lean-232"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:232 --> **L232** Excludes application-phase processes from this particular generation rule while retaining the other objects.

<a id="line-code-leanified-corereader-reflexivity-lean-233"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:233 --> **L233** Treats applying an already existing principle as ineligible for generation in this application model.

<a id="line-code-leanified-corereader-reflexivity-lean-234"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:234 --> **L234** All other represented subject kinds remain eligible for generation.

<a id="line-code-leanified-corereader-reflexivity-lean-236"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:236 --> **L236** Registers principle zero for generation with the local method, explicit inquiries/reasons and restricted applicability.

<a id="line-code-leanified-corereader-reflexivity-lean-237"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:237 --> **L237** Registers the generation principle under local key zero for this owner.

<a id="line-code-leanified-corereader-reflexivity-lean-238"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:238 --> **L238** Makes this rule govern generation work.

<a id="line-code-leanified-corereader-reflexivity-lean-239"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:239 --> **L239** Assigns the local test-and-scope draft [0]/[0] to the generation rule.

<a id="line-code-leanified-corereader-reflexivity-lean-240"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:240 --> **L240** Generation requires both membership in this owner's nine subjects and generation eligibility.

<a id="line-code-leanified-corereader-reflexivity-lean-241"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:241 --> **L241** Uses inquiryFor to supply the subject's actual phase-sensitive question.

<a id="line-code-leanified-corereader-reflexivity-lean-242"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:242 --> **L242** Uses reasonsFor to supply the original target-linked reason contents.

<a id="line-code-leanified-corereader-reflexivity-lean-243"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:243 --> **L243** Retains [0] as the generation rule's limit for every subject.

<a id="line-code-leanified-corereader-reflexivity-lean-244"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:244 --> **L244** Requires the generated outcome to match finiteMethodResult's generation branch.

<a id="line-code-leanified-corereader-reflexivity-lean-246"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:246 --> **L246** Registers principle one for assessment of every enumerated own subject with explicit finite evaluation semantics.

<a id="line-code-leanified-corereader-reflexivity-lean-247"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:247 --> **L247** Registers the assessment principle under distinct local key one.

<a id="line-code-leanified-corereader-reflexivity-lean-248"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:248 --> **L248** Makes this rule govern assessment work.

<a id="line-code-leanified-corereader-reflexivity-lean-249"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:249 --> **L249** The assessment principle declares the same local [0]/[0] method contract.

<a id="line-code-leanified-corereader-reflexivity-lean-250"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:250 --> **L250** Assessment applies to all nine subjects belonging to this owner.

<a id="line-code-leanified-corereader-reflexivity-lean-251"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:251 --> **L251** Assigns the same phase-sensitive inquiry function to the assessment rule.

<a id="line-code-leanified-corereader-reflexivity-lean-252"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:252 --> **L252** Assigns the same original target-linked reasons to its assessments.

<a id="line-code-leanified-corereader-reflexivity-lean-253"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:253 --> **L253** Retains [0] as the assessment rule's declared limit.

<a id="line-code-leanified-corereader-reflexivity-lean-254"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:254 --> **L254** Requires assessment outcomes to equal the evaluator's actual result.

<a id="line-code-leanified-corereader-reflexivity-lean-256"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:256 --> **L256** Returns the two distinct registered generation and assessment principles.

<a id="line-code-leanified-corereader-reflexivity-lean-258"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:258 --> **L258** Documents the following definition or result: Constructs expected generated drafts and scoped/insufficient assessment results, which are subsequently checked against evaluation.

<a id="line-code-leanified-corereader-reflexivity-lean-259"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:259 --> **L259** Constructs expected generated drafts and scoped/insufficient assessment results, which are subsequently checked against evaluation.

<a id="line-code-leanified-corereader-reflexivity-lean-260"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:260 --> **L260** Chooses the independently stated record outcome by activity.

<a id="line-code-leanified-corereader-reflexivity-lean-261"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:261 --> **L261** The recorded generated draft retains tested inputs and adopts the inquiry's requested scope.

<a id="line-code-leanified-corereader-reflexivity-lean-262"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:262 --> **L262** For assessment records, chooses a stated verdict from the inquiry kind rather than calling assessInquiry here.

<a id="line-code-leanified-corereader-reflexivity-lean-263"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:263 --> **L263** Revision inquiries are recorded as insufficient.

<a id="line-code-leanified-corereader-reflexivity-lean-264"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:264 --> **L264** The remaining represented inquiries are recorded as supportedWithinScope.

<a id="line-code-leanified-corereader-reflexivity-lean-266"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:266 --> **L266** Builds a record from the supplied rule and subject; registry membership and content validity require the later ValidApplication proof.

<a id="line-code-leanified-corereader-reflexivity-lean-267"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:267 --> **L267** Builds a record from this rule's identity, inquiry, reasons and limits, but uses the separately stated outcome.

<a id="line-code-leanified-corereader-reflexivity-lean-269"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:269 --> **L269** Exhausts subject/phase constructors to prove each concrete inquiry has reasons.

<a id="line-code-leanified-corereader-reflexivity-lean-270"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:270 --> **L270** Checks reason-list nonemptiness for each kind of subject.

<a id="line-code-leanified-corereader-reflexivity-lean-271"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:271 --> **L271** System inquiries use the conformity reasons, which contain scope and observation entries.

<a id="line-code-leanified-corereader-reflexivity-lean-272"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:272 --> **L272** Principle inquiries likewise have the nonempty scope-and-observation list.

<a id="line-code-leanified-corereader-reflexivity-lean-273"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:273 --> **L273** Each process phase reduces to its actual nonempty formation, application or revision reason list.

<a id="line-code-leanified-corereader-reflexivity-lean-275"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:275 --> **L275** Uses the reason-list map construction to prove every reason targets the same subject.

<a id="line-code-leanified-corereader-reflexivity-lean-276"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:276 --> **L276** Takes any reason known to occur in this subject's constructed reason list.

<a id="line-code-leanified-corereader-reflexivity-lean-277"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:277 --> **L277** Inverts the map construction to recover the source content and replace the reason with its target-tagged wrapper.

<a id="line-code-leanified-corereader-reflexivity-lean-278"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:278 --> **L278** That wrapper's target is s by construction, so target equality is reflexive.

<a id="line-code-leanified-corereader-reflexivity-lean-280"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:280 --> **L280** Checks each constructor to prove the generated inquiry retains its subject identity.

<a id="line-code-leanified-corereader-reflexivity-lean-281"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:281 --> **L281** Checks the inquiry target for system, principle and process subjects separately.

<a id="line-code-leanified-corereader-reflexivity-lean-282"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:282 --> **L282** The system inquiry was constructed with that same system as target.

<a id="line-code-leanified-corereader-reflexivity-lean-283"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:283 --> **L283** The principle inquiry likewise retains that same principle target.

<a id="line-code-leanified-corereader-reflexivity-lean-284"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:284 --> **L284** Every process phase uses the original process subject as its inquiry target.

<a id="line-code-leanified-corereader-reflexivity-lean-286"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:286 --> **L286** Documents the following definition or result: Computes every subject/phase assessment and generation case, showing stored expected outcomes agree with the actual algorithm, including insufficiency.

<a id="line-code-leanified-corereader-reflexivity-lean-287"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:287 --> **L287** Computes every subject/phase assessment and generation case, showing stored expected outcomes agree with the actual algorithm, including insufficiency.

<a id="line-code-leanified-corereader-reflexivity-lean-288"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:288 --> **L288** Requires the independently stated outcome to equal actual evaluation of this subject's question, reasons and [0] limits.

<a id="line-code-leanified-corereader-reflexivity-lean-289"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:289 --> **L289** Splits this equality check between generated drafts and assessment verdicts.

<a id="line-code-leanified-corereader-reflexivity-lean-290"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:290 --> **L290** Both generation definitions construct the identical tested-input/requested-scope draft.

<a id="line-code-leanified-corereader-reflexivity-lean-291"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:291 --> **L291** For assessment, the stated verdict must now be checked against the actual evaluator.

<a id="line-code-leanified-corereader-reflexivity-lean-292"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:292 --> **L292** Separates the finite assessment check by subject kind.

<a id="line-code-leanified-corereader-reflexivity-lean-293"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:293 --> **L293** The system's conformity contents compute to the stated supportedWithinScope verdict.

<a id="line-code-leanified-corereader-reflexivity-lean-294"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:294 --> **L294** The principle's conformity contents compute to that same supportedWithinScope verdict.

<a id="line-code-leanified-corereader-reflexivity-lean-295"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:295 --> **L295** Formation/application compute support; revision computes insufficient from the program passing zero but failing one.

<a id="line-code-leanified-corereader-reflexivity-lean-297"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:297 --> **L297** Separates local identifiers zero and one to prove the two-rule registry has no ambiguous key.

<a id="line-code-leanified-corereader-reflexivity-lean-298"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:298 --> **L298** Takes two registered principles whose keys are assumed equal.

<a id="line-code-leanified-corereader-reflexivity-lean-299"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:299 --> **L299** Restricts both registry memberships to the actual generation or assessment rule.

<a id="line-code-leanified-corereader-reflexivity-lean-300"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:300 --> **L300** Examines the four resulting pairs of concrete rules.

<a id="line-code-leanified-corereader-reflexivity-lean-301"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:301 --> **L301** When both are the generation rule, principle equality holds directly.

<a id="line-code-leanified-corereader-reflexivity-lean-302"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:302 --> **L302** Generation key 0 cannot equal assessment key 1; projecting localId produces a contradiction.

<a id="line-code-leanified-corereader-reflexivity-lean-303"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:303 --> **L303** The reverse mixed pair would require localId 1=0, also impossible.

<a id="line-code-leanified-corereader-reflexivity-lean-304"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:304 --> **L304** When both are the assessment rule, principle equality holds directly.

<a id="line-code-leanified-corereader-reflexivity-lean-306"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:306 --> **L306** Checks all nine enumerated subjects resolve to an actual registered owner/principle.

<a id="line-code-leanified-corereader-reflexivity-lean-307"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:307 --> **L307** The subject selected from ownSubjects must resolve to this owner's actual registry.

<a id="line-code-leanified-corereader-reflexivity-lean-308"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:308 --> **L308** Expands membership hs into the nine concrete owned subjects.

<a id="line-code-leanified-corereader-reflexivity-lean-309"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:309 --> **L309** Handles each of those nine subjects with its original owner and principle identifier fixed.

<a id="line-code-leanified-corereader-reflexivity-lean-310"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:310 --> **L310** Finds the generation or assessment registry entry matching each target key.

<a id="line-code-leanified-corereader-reflexivity-lean-312"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:312 --> **L312** Checks each inquiry's method matches its registered target's declared local method.

<a id="line-code-leanified-corereader-reflexivity-lean-313"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:313 --> **L313** Requires the selected subject's inquiry to examine its own registered declared method.

<a id="line-code-leanified-corereader-reflexivity-lean-314"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:314 --> **L314** Again enumerates the nine concrete subjects from the actual membership premise.

<a id="line-code-leanified-corereader-reflexivity-lean-315"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:315 --> **L315** Checks target-method correspondence separately for each system, principle and phase subject.

<a id="line-code-leanified-corereader-reflexivity-lean-316"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:316 --> **L316** Both registered rules declare localMethod, exactly the method inquiryFor assigns to every enumerated target.

<a id="line-code-leanified-corereader-reflexivity-lean-318"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:318 --> **L318** Combines identity, reason-target, scope, registry and actual evaluation facts to validate each applicable generated record.

<a id="line-code-leanified-corereader-reflexivity-lean-319"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:319 --> **L319** Assumes the chosen registered rule is applicable to this subject s.

<a id="line-code-leanified-corereader-reflexivity-lean-320"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:320 --> **L320** Proves the concrete recordFor rule s satisfies every ValidApplication field.

<a id="line-code-leanified-corereader-reflexivity-lean-321"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:321 --> **L321** First derives that applicability places s in this owner's subject list.

<a id="line-code-leanified-corereader-reflexivity-lean-322"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:322 --> **L322** Uses registry membership to restrict rule to one of the two owned rules.

<a id="line-code-leanified-corereader-reflexivity-lean-323"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:323 --> **L323** Separates the generation and assessment applicability conditions.

<a id="line-code-leanified-corereader-reflexivity-lean-324"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:324 --> **L324** Generation applicability includes owned-subject membership as its first conjunct.

<a id="line-code-leanified-corereader-reflexivity-lean-325"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:325 --> **L325** Assessment applicability is exactly that owned-subject membership.

<a id="line-code-leanified-corereader-reflexivity-lean-326"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:326 --> **L326** Establishes that this actual rule uses inquiryFor as its inquiry function.

<a id="line-code-leanified-corereader-reflexivity-lean-327"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:327 --> **L327** Reduces registered-rule membership to generation or assessment to inspect its inquiry field.

<a id="line-code-leanified-corereader-reflexivity-lean-328"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:328 --> **L328** Both possible rules define their inquiry field as inquiryFor.

<a id="line-code-leanified-corereader-reflexivity-lean-329"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:329 --> **L329** Establishes that the chosen rule uses reasonsFor as its reason provider.

<a id="line-code-leanified-corereader-reflexivity-lean-330"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:330 --> **L330** Again restricts the rule to the two actual registry entries before inspecting reasons.

<a id="line-code-leanified-corereader-reflexivity-lean-331"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:331 --> **L331** Both entries supply exactly reasonsFor.

<a id="line-code-leanified-corereader-reflexivity-lean-332"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:332 --> **L332** Establishes that this rule's limits for s are exactly [0].

<a id="line-code-leanified-corereader-reflexivity-lean-333"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:333 --> **L333** Resolves registry membership before inspecting the selected rule's limits.

<a id="line-code-leanified-corereader-reflexivity-lean-334"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:334 --> **L334** Both owned rules retain [0] as their limit.

<a id="line-code-leanified-corereader-reflexivity-lean-335"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:335 --> **L335** Establishes that the chosen rule's meaning is the result function for its own activity.

<a id="line-code-leanified-corereader-reflexivity-lean-336"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:336 --> **L336** Resolves registry membership to inspect generation versus assessment meaning.

<a id="line-code-leanified-corereader-reflexivity-lean-337"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:337 --> **L337** In either case, the rule's meaning is finiteMethodMeaning specialized to that rule's activity.

<a id="line-code-leanified-corereader-reflexivity-lean-338"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:338 --> **L338** Builds ValidApplication using registry/applicability premises, record identities and resolved target; leaves inquiry, reasons and computed meaning checks to follow.

<a id="line-code-leanified-corereader-reflexivity-lean-339"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:339 --> **L339** The remaining inquiry-target goal is about this rule's actual inquiry on s.

<a id="line-code-leanified-corereader-reflexivity-lean-340"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:340 --> **L340** Replaces the rule's inquiry with inquiryFor, whose target-preservation theorem proves it targets s.

<a id="line-code-leanified-corereader-reflexivity-lean-341"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:341 --> **L341** The remaining method-identity goal checks the registered target of this rule's inquiry.

<a id="line-code-leanified-corereader-reflexivity-lean-342"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:342 --> **L342** Rewrites to inquiryFor and uses the concrete owned-target method-resolution theorem.

<a id="line-code-leanified-corereader-reflexivity-lean-343"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:343 --> **L343** Reduces record reason nonemptiness to nonemptiness of this rule's supplied reasons.

<a id="line-code-leanified-corereader-reflexivity-lean-344"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:344 --> **L344** Rewrites those reasons to reasonsFor and applies its nonempty-list theorem.

<a id="line-code-leanified-corereader-reflexivity-lean-345"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:345 --> **L345** Reduces reason-target consistency to every supplied reason targeting s.

<a id="line-code-leanified-corereader-reflexivity-lean-346"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:346 --> **L346** Rewrites to reasonsFor and uses its target-preserving construction theorem.

<a id="line-code-leanified-corereader-reflexivity-lean-347"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:347 --> **L347** The final obligation compares the separately stated outcome against this rule's actual inquiry, reasons, limits and meaning.

<a id="line-code-leanified-corereader-reflexivity-lean-348"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:348 --> **L348** Substitutes the four established identities for meaning, inquiry, reasons and [0] limits.

<a id="line-code-leanified-corereader-reflexivity-lean-349"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:349 --> **L349** Uses ownContentEvaluates to prove the recorded outcome equals the actual method result.

<a id="line-code-leanified-corereader-reflexivity-lean-351"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:351 --> **L351** Constructs records for all nine subjects, including generation only where its eligibility condition holds.

<a id="line-code-leanified-corereader-reflexivity-lean-352"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:352 --> **L352** Builds the full log by concatenating the records assigned to each owned subject.

<a id="line-code-leanified-corereader-reflexivity-lean-353"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:353 --> **L353** Eligible subjects receive both a generation record and an assessment record.

<a id="line-code-leanified-corereader-reflexivity-lean-354"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:354 --> **L354** Application-phase subjects receive assessment only, matching generation's explicit applicability restriction.

<a id="line-code-leanified-corereader-reflexivity-lean-356"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:356 --> **L356** Places each subject's assessment record in the flat-mapped complete work list.

<a id="line-code-leanified-corereader-reflexivity-lean-357"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:357 --> **L357** Claims this owned subject's assessment record occurs in the constructed full log.

<a id="line-code-leanified-corereader-reflexivity-lean-358"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:358 --> **L358** Uses flatMap membership: choose a subject whose assigned record list contains the desired record.

<a id="line-code-leanified-corereader-reflexivity-lean-359"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:359 --> **L359** Chooses the same s and its supplied owned-subject membership hs.

<a id="line-code-leanified-corereader-reflexivity-lean-360"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:360 --> **L360** Whether generation is eligible or not, the assigned list contains s's assessment record.

<a id="line-code-leanified-corereader-reflexivity-lean-362"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:362 --> **L362** Places a subject's generation record in the work list under explicit generation eligibility.

<a id="line-code-leanified-corereader-reflexivity-lean-363"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:363 --> **L363** Adds generation eligibility to owned membership before claiming a generation record in the full log.

<a id="line-code-leanified-corereader-reflexivity-lean-364"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:364 --> **L364** Selects s's flatMap branch; hg makes that branch include the requested generation record.

<a id="line-code-leanified-corereader-reflexivity-lean-366"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:366 --> **L366** Combines coherent registry, membership and content-valid applications to establish the concrete nonempty reflexivity model.

<a id="line-code-leanified-corereader-reflexivity-lean-367"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:367 --> **L367** States full contentful reflexivity for the actual two-rule registry and constructed work log.

<a id="line-code-leanified-corereader-reflexivity-lean-368"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:368 --> **L368** Provides the proved registry coherence and leaves contentful coverage for each applicable subject.

<a id="line-code-leanified-corereader-reflexivity-lean-369"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:369 --> **L369** Takes an actual registered rule and applicable subject; applicability itself will supply needed owned membership.

<a id="line-code-leanified-corereader-reflexivity-lean-370"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:370 --> **L370** Chooses recordFor rule s and its already proved content validity, leaving only its presence in the full log.

<a id="line-code-leanified-corereader-reflexivity-lean-371"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:371 --> **L371** Resolves rule membership to the generation or assessment entry.

<a id="line-code-leanified-corereader-reflexivity-lean-372"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:372 --> **L372** Splits record membership by those two actual rule cases.

<a id="line-code-leanified-corereader-reflexivity-lean-373"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:373 --> **L373** For generation, ha supplies owned membership and eligibility, which place its record in the full log.

<a id="line-code-leanified-corereader-reflexivity-lean-374"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:374 --> **L374** For assessment, ha directly supplies the owned membership needed for its record.

<a id="line-code-leanified-corereader-reflexivity-lean-376"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:376 --> **L376** Extracts the constructed assessment record for a listed own subject.

<a id="line-code-leanified-corereader-reflexivity-lean-377"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:377 --> **L377** Claims a performed assessment on s in the same complete work log.

<a id="line-code-leanified-corereader-reflexivity-lean-378"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:378 --> **L378** Uses s's assessment record, its proved log membership and exact target/activity identities as the Performed witness.

<a id="line-code-leanified-corereader-reflexivity-lean-380"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:380 --> **L380** Restricts an assessment rule to one application-phase subject and assigns it a resolvable key.

<a id="line-code-leanified-corereader-reflexivity-lean-381"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:381 --> **L381** Restricts the assessment rule to exactly principle-zero's application process, with key (0,0).

<a id="line-code-leanified-corereader-reflexivity-lean-383"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:383 --> **L383** Stores the one fully specified application assessment record.

<a id="line-code-leanified-corereader-reflexivity-lean-385"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:385 --> **L385** Checks the singleton registry and record satisfy full content-valid reflexivity on their restricted applicability.

<a id="line-code-leanified-corereader-reflexivity-lean-386"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:386 --> **L386** Separates singleton-registry coherence from coverage of its sole applicable subject.

<a id="line-code-leanified-corereader-reflexivity-lean-387"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:387 --> **L387** Takes any two rules in that singleton registry; key equality is unnecessary because membership already identifies both.

<a id="line-code-leanified-corereader-reflexivity-lean-388"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:388 --> **L388** Singleton membership makes both rules equal to applicationRule.

<a id="line-code-leanified-corereader-reflexivity-lean-389"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:389 --> **L389** Substituting these identities proves the two rules are equal.

<a id="line-code-leanified-corereader-reflexivity-lean-390"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:390 --> **L390** Takes an applicable subject for a rule in the singleton application registry.

<a id="line-code-leanified-corereader-reflexivity-lean-391"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:391 --> **L391** Uses singleton membership to identify the rule as applicationRule.

<a id="line-code-leanified-corereader-reflexivity-lean-392"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:392 --> **L392** Replaces rule with that exact applicationRule throughout the coverage obligation.

<a id="line-code-leanified-corereader-reflexivity-lean-393"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:393 --> **L393** Unfolds applicability to show s is exactly owner-zero principle-zero's application process.

<a id="line-code-leanified-corereader-reflexivity-lean-394"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:394 --> **L394** Substitutes that exact process for s, fixing the work target.

<a id="line-code-leanified-corereader-reflexivity-lean-395"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:395 --> **L395** Selects the sole record in applicationWork and proves its membership; content validity remains to check.

<a id="line-code-leanified-corereader-reflexivity-lean-396"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:396 --> **L396** Fills immediate registry, applicability and record-identity fields; leaves target resolution, reasons and computed outcome checks.

<a id="line-code-leanified-corereader-reflexivity-lean-397"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:397 --> **L397** The target key resolves to applicationRule itself in the singleton registry.

<a id="line-code-leanified-corereader-reflexivity-lean-398"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:398 --> **L398** That same registered rule supplies the localMethod actually examined by the inquiry.

<a id="line-code-leanified-corereader-reflexivity-lean-399"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:399 --> **L399** The application inquiry's reasons are nonempty by reasonsFor_nonempty.

<a id="line-code-leanified-corereader-reflexivity-lean-400"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:400 --> **L400** Every application reason targets this exact application-process subject.

<a id="line-code-leanified-corereader-reflexivity-lean-401"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:401 --> **L401** The remaining meaning obligation is equality of the stated application assessment and its actual finite evaluation.

<a id="line-code-leanified-corereader-reflexivity-lean-402"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:402 --> **L402** Uses ownContentEvaluates to certify that equality for the application-phase assessment.

<a id="line-code-leanified-corereader-reflexivity-lean-404"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:404 --> **L404** Opens provenance metadata binding CoreReader.Agency.applicabilityRetained to the following source references; this metadata is not a proof premise.

<a id="line-code-leanified-corereader-reflexivity-lean-405"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:405 --> **L405** Records source reference organon.charter.reflexivity.limits#p1 with content digest ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc; matching a digest establishes source identity, not semantic fidelity.

<a id="line-code-leanified-corereader-reflexivity-lean-406"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:406 --> **L406** Closes the preceding documentation/provenance comment; it adds no executable code.

<a id="line-code-leanified-corereader-reflexivity-lean-407"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:407 --> **L407** Derives record scope from full reflexivity, proves its classical conditional/disjunctive equivalence, and gives a valid restricted example with no system assessment.

<a id="line-code-leanified-corereader-reflexivity-lean-408"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:408 --> **L408** The first clause retains the implication from full contentful reflexivity to scope coverage.

<a id="line-code-leanified-corereader-reflexivity-lean-409"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:409 --> **L409** The second clause restates conditional scope coverage as an either/or obligation.

<a id="line-code-leanified-corereader-reflexivity-lean-410"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:410 --> **L410** For each owned subject and registered rule, either the rule is inapplicable or its activity was performed.

<a id="line-code-leanified-corereader-reflexivity-lean-411"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:411 --> **L411** The concrete singleton application log satisfies full reflexivity under its restricted rule.

<a id="line-code-leanified-corereader-reflexivity-lean-412"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:412 --> **L412** Yet that same log contains no assessment of the system itself, where this rule is not applicable.

<a id="line-code-leanified-corereader-reflexivity-lean-413"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:413 --> **L413** Uses classical case splitting on possibly undecidable applicability predicates.

<a id="line-code-leanified-corereader-reflexivity-lean-414"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:414 --> **L414** Supplies the general scope projection and concrete restricted witness; leaves the equivalence and missing-system-record proof.

<a id="line-code-leanified-corereader-reflexivity-lean-415"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:415 --> **L415** Proves both directions of the applicability-or-performance reformulation.

<a id="line-code-leanified-corereader-reflexivity-lean-416"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:416 --> **L416** Assumes conditional scope coverage and fixes a registered rule with an owned subject.

<a id="line-code-leanified-corereader-reflexivity-lean-417"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:417 --> **L417** Splits on whether that exact rule is applicable to this subject.

<a id="line-code-leanified-corereader-reflexivity-lean-418"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:418 --> **L418** When applicable, coverage supplies the performed activity, satisfying the right disjunct.

<a id="line-code-leanified-corereader-reflexivity-lean-419"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:419 --> **L419** When inapplicable, that negative applicability fact satisfies the left disjunct.

<a id="line-code-leanified-corereader-reflexivity-lean-420"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:420 --> **L420** For the reverse direction, assumes the disjunction and actual applicability on the owned subject.

<a id="line-code-leanified-corereader-reflexivity-lean-421"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:421 --> **L421** Rules out the inapplicable disjunct using ha, leaving the required performed activity.

<a id="line-code-leanified-corereader-reflexivity-lean-422"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:422 --> **L422** Assumes a system assessment exists and extracts its listed record plus target identity.

<a id="line-code-leanified-corereader-reflexivity-lean-423"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:423 --> **L423** The singleton applicationWork list forces that record to be its application-process record.

<a id="line-code-leanified-corereader-reflexivity-lean-424"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:424 --> **L424** Replaces the alleged system-assessment record with that sole process record.

<a id="line-code-leanified-corereader-reflexivity-lean-425"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:425 --> **L425** Its process target cannot equal the system target, contradicting the assumed record identity.

<a id="line-code-leanified-corereader-reflexivity-lean-427"></a>
<!-- lean-line leanified/CoreReader/Reflexivity.lean:427 --> **L427** Closes the current namespace.

<a id="code-leanified-corereader-lean"></a>
### `leanified/CoreReader.lean`

<!-- lean-code leanified/CoreReader.lean -->
```lean
import CoreReader.Integration
```
<!-- /lean-code leanified/CoreReader.lean -->

<a id="line-code-leanified-corereader-lean-1"></a>
<!-- lean-line leanified/CoreReader.lean:1 --> **L1** Imports CoreReader.Integration and its dependencies into this module.

