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
