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
