namespace CoreReader

inductive Aspect | empirical | inferential | value
  deriving DecidableEq

/-- organon-map CoreReader.Duties
organon.grounds.assessment#c-94-c5 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
def Duties (applicable : Nat → Aspect → Prop)
    (examined : Nat → Nat → Aspect → Prop) (claim grounds : Nat) : Prop :=
  ∀ aspect, applicable claim aspect → examined claim grounds aspect

def Assessed (_labels : List Aspect) (applicable : Nat → Aspect → Prop)
    (examined : Nat → Nat → Aspect → Prop) (claim grounds : Nat) : Prop :=
  Duties applicable examined claim grounds

def mixedClaim (claim : Nat) (aspect : Aspect) : Prop :=
  claim = 7 ∧ (aspect = .empirical ∨ aspect = .value)

def bothExamined (claim grounds : Nat) (aspect : Aspect) : Prop :=
  claim = 7 ∧ grounds = 3 ∧ (aspect = .empirical ∨ aspect = .value)

def empiricalOnly (claim grounds : Nat) (aspect : Aspect) : Prop :=
  claim = 7 ∧ grounds = 3 ∧ aspect = .empirical

/-- organon-map CoreReader.mixed_projection
organon.grounds.assessment#c-94-c5 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem mixed_projection (a : Nat → Aspect → Prop) (e : Nat → Nat → Aspect → Prop)
    (c g : Nat) (h : Duties a e c g) (he : a c .empirical) (hv : a c .value) :
    e c g .empirical ∧ e c g .value := ⟨h _ he, h _ hv⟩

/-- organon-map CoreReader.labels_do_not_waive
organon.grounds.assessment#c-94-c6 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem labels_do_not_waive (xs ys : List Aspect) (a : Nat → Aspect → Prop)
    (e : Nat → Nat → Aspect → Prop) (c g : Nat) :
    Assessed xs a e c g ↔ Assessed ys a e c g := Iff.rfl

/-- organon-map CoreReader.complete_mixed_fixture
organon.grounds.assessment#c-94-c5 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem complete_mixed_fixture : Duties mixedClaim bothExamined 7 3 := by
  intro k hk
  exact ⟨hk.1, rfl, hk.2⟩

/-- organon-map CoreReader.empirical_only_rejected
organon.grounds.assessment#c-94-c5 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem empirical_only_rejected : ¬ Duties mixedClaim empiricalOnly 7 3 := by
  intro h
  have hv := h .value ⟨rfl, Or.inr rfl⟩
  cases hv.2.2

/-- organon-map CoreReader.unrelated_grounds_rejected
organon.grounds.assessment#c-94-c3 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem unrelated_grounds_rejected : ¬ Duties mixedClaim bothExamined 7 4 := by
  intro h
  have hv := h .value ⟨rfl, Or.inr rfl⟩
  cases hv.2.1

/-- organon-map CoreReader.omitted_labels_still_rejected
organon.grounds.assessment#c-94-c6 sha256 2e7cbca320eec1f25a6e82391c6d44d29bfafd4a27f2fe8241db0453381d0fe2
-/
theorem omitted_labels_still_rejected : ¬ Assessed [] mixedClaim empiricalOnly 7 3 :=
  empirical_only_rejected

inductive Fact | p | pImpliesQ | notQ | positiveInOne | negativeInTwo
  deriving DecidableEq

def fixtureConsequence (held : List Fact) (context : Nat) (positive : Bool) : Prop :=
  (context = 0 ∧ ((positive = true ∧ Fact.p ∈ held ∧ Fact.pImpliesQ ∈ held) ∨
    (positive = false ∧ Fact.notQ ∈ held))) ∨
  (context = 1 ∧ positive = true ∧ Fact.positiveInOne ∈ held) ∨
  (context = 2 ∧ positive = false ∧ Fact.negativeInTwo ∈ held)

/-- organon-map CoreReader.Consistent
organon.charter.consistency#c-54-c1 sha256 c6960c590c096d33250599cf418e3c6a1dc26bfc7d7800c82b8efde656950f42
-/
def Consistent (consequence : List Fact → Nat → Bool → Prop) (held : List Fact) : Prop :=
  ∀ context, ¬ (consequence held context true ∧ consequence held context false)

/-- organon-map CoreReader.joint_conflict
organon.charter.consistency#c-54-c1 sha256 c6960c590c096d33250599cf418e3c6a1dc26bfc7d7800c82b8efde656950f42
-/
theorem joint_conflict : ¬ Consistent fixtureConsequence [.p, .pImpliesQ, .notQ] := by
  intro h
  exact h 0 ⟨by simp [fixtureConsequence], by simp [fixtureConsequence]⟩

/-- organon-map CoreReader.withdrawn_current_set
organon.charter.consistency.meaning#c-59-c2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem withdrawn_current_set : Consistent fixtureConsequence [.p, .pImpliesQ] := by
  intro context h
  simpa [fixtureConsequence] using h.2

/-- organon-map CoreReader.distinct_contexts
organon.charter.consistency.meaning#c-61-c2 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem distinct_contexts : Consistent fixtureConsequence [.positiveInOne, .negativeInTwo] := by
  intro context h
  have hp : context = 1 := by simpa [fixtureConsequence] using h.1
  have hn : context = 2 := by simpa [fixtureConsequence] using h.2
  have impossible : (1 : Nat) = 2 := hp.symm.trans hn
  cases impossible

/-- organon-map CoreReader.ChangeReported
organon.charter.consistency.meaning#c-59-c4 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
def ChangeReported (before after : List Fact) (claimsUnchanged : Bool) : Prop :=
  before ≠ after → claimsUnchanged = false

/-- organon-map CoreReader.changed_set_needs_report
organon.charter.consistency.meaning#c-59-c4 sha256 81c09e38a3349499f95401d1c08f6069666c13547a43bc4e4395330743055faa
-/
theorem changed_set_needs_report :
    ¬ ChangeReported [.p, .pImpliesQ, .notQ] [.p, .pImpliesQ] true := by
  unfold ChangeReported
  decide

/-- organon-map CoreReader.ObservationComplete
organon.grounds#c-89-c2 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
-/
def ObservationComplete (observed : List Nat) : Prop := ∀ n, n ∈ observed

/-- organon-map CoreReader.observation_gap
organon.grounds#c-89-c2 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
-/
theorem observation_gap : ¬ ObservationComplete [0, 1] := by
  intro h
  have h2 := h 2
  simp at h2

/-- organon-map CoreReader.gap_with_true_conclusion
organon.grounds#c-89-c2 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
-/
theorem gap_with_true_conclusion :
    ¬ ObservationComplete [0, 1] ∧ (∀ n : Nat, n + 0 = n) :=
  ⟨observation_gap, fun _ => rfl⟩

/-- organon-map CoreReader.gap_with_false_conclusion
organon.grounds#c-89-c2 sha256 4ee74dc8617388ee75d63b507176ecb73b8527758b648f7c588d3ae7f3445ec6
-/
theorem gap_with_false_conclusion :
    ¬ ObservationComplete [0, 1] ∧ ¬ (∀ n : Nat, n = 0) := by
  refine ⟨observation_gap, ?_⟩
  intro h
  have bad := h 1
  cases bad

def proposedPrinciple (n : Nat) : Prop := n + 1 = 2 * n

structure SelfAssessingSystem where
  ownPrinciple : Nat → Bool
  samples : List Nat

def runOwnAssessment (s : SelfAssessingSystem) : Bool :=
  s.samples.all s.ownPrinciple

def sampleSystem : SelfAssessingSystem :=
  ⟨fun n => decide (n + 1 = 2 * n), [1]⟩

/-- organon-map CoreReader.self_assessment_not_correctness
organon.charter.reflexivity.limits#c-83-c2 sha256 ac0baae0d86e69f84c1ca4dee837de2759e2d29c295ffc257d988962158d4bbc
-/
theorem self_assessment_not_correctness :
    runOwnAssessment sampleSystem = true ∧ ¬ (∀ n, sampleSystem.ownPrinciple n = true) := by
  constructor
  · unfold runOwnAssessment sampleSystem
    decide
  · intro h
    have bad := h 0
    simp [sampleSystem] at bad

end CoreReader
