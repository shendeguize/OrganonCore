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
