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
