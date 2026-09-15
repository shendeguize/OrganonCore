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
