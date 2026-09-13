namespace RationaleReader

structure ServiceState where
  acknowledged : Nat
  cached : Nat
  deriving DecidableEq

def direct (s : ServiceState) : Nat := s.acknowledged

def cachedRead (s : ServiceState) : Nat := s.cached

def updateOnly (s : ServiceState) (n : Nat) : ServiceState := { s with acknowledged := n }

def initial : ServiceState := ⟨10, 10⟩

structure LatencyContext where
  directLatency : Nat
  cacheLatency : Nat
  budget : Nat

def originalLatency : LatencyContext := ⟨5, 2, 6⟩

def stricterLatency : LatencyContext := ⟨5, 2, 3⟩

def withinBudget (c : LatencyContext) : Prop :=
  c.directLatency ≤ c.budget ∧ c.cacheLatency ≤ c.budget

/-- organon-map RationaleReader.original_comparison
rationale.L119#r-119-c5 sha256 2e9a64fb31f15735f92dabbd3f7351cd48d5bfb865ac419ffbc9867eefd41eef
-/
theorem original_comparison : direct initial = cachedRead initial ∧ withinBudget originalLatency := by
  unfold withinBudget
  decide

/-- organon-map RationaleReader.update_read_counterexample
rationale.L121#r-121-c2 sha256 572fcdbe1f734c4a947f10223d5a13a39b4d1d976917b004d2076a2eb8881803
rationale.L121#r-121-c3 sha256 572fcdbe1f734c4a947f10223d5a13a39b4d1d976917b004d2076a2eb8881803
-/
theorem update_read_counterexample :
    direct initial = cachedRead initial ∧
    direct (updateOnly initial 11) ≠ cachedRead (updateOnly initial 11) := by decide

/-- organon-map RationaleReader.cached_freshness_refuted
rationale.L121#r-121-c2 sha256 572fcdbe1f734c4a947f10223d5a13a39b4d1d976917b004d2076a2eb8881803
-/
theorem cached_freshness_refuted : ¬ (∀ n, cachedRead (updateOnly initial n) = n) := by
  intro h
  have bad := h 11
  simp [cachedRead, updateOnly, initial] at bad

/-- organon-map RationaleReader.unchanged_update_retained
rationale.L121#r-121-c4 sha256 572fcdbe1f734c4a947f10223d5a13a39b4d1d976917b004d2076a2eb8881803
-/
theorem unchanged_update_retained :
    direct (updateOnly initial 10) = cachedRead (updateOnly initial 10) := by decide

/-- organon-map RationaleReader.budget_change_is_distinct
rationale.L119#r-119-c2 sha256 2e9a64fb31f15735f92dabbd3f7351cd48d5bfb865ac419ffbc9867eefd41eef
-/
theorem budget_change_is_distinct :
    withinBudget originalLatency ∧ ¬ withinBudget stricterLatency := by
  unfold withinBudget
  decide

/-- organon-map RationaleReader.namedUniversalTruth
rationale.L77#r-77-c2 sha256 10590990e1fc3a0cf3b9f6cdb6b96c4b3abd6ec2cb73e2377029c7f0def14147
-/
theorem namedUniversalTruth (P : Prop) (h : P) : P := h

/-- organon-map RationaleReader.encoded_statement
rationale.L77#r-77-c2 sha256 10590990e1fc3a0cf3b9f6cdb6b96c4b3abd6ec2cb73e2377029c7f0def14147
-/
theorem encoded_statement : (0 : Nat) ≤ 1 := by decide

/-- organon-map RationaleReader.different_statement_refuted
rationale.L77#r-77-c3 sha256 10590990e1fc3a0cf3b9f6cdb6b96c4b3abd6ec2cb73e2377029c7f0def14147
-/
theorem different_statement_refuted : ¬ (∀ n : Nat, n ≤ 1) := by
  intro h
  have bad := h 2
  cases bad with
  | step h => cases h

/-- organon-map RationaleReader.proof_of_different_claim
rationale.L77#r-77-c3 sha256 10590990e1fc3a0cf3b9f6cdb6b96c4b3abd6ec2cb73e2377029c7f0def14147
-/
theorem proof_of_different_claim :
    (0 : Nat) ≤ 1 ∧ ¬ (∀ n : Nat, n ≤ 1) :=
  ⟨encoded_statement, different_statement_refuted⟩

def originalStates : List ServiceState := [initial]

def revisedStates : List ServiceState := [initial, updateOnly initial 11]

def compareReads (states : List ServiceState) : List (Nat × Nat) :=
  states.map (fun state => (direct state, cachedRead state))

/-- organon-map RationaleReader.revised_method_retains_case
rationale.L121#r-121-c4 sha256 572fcdbe1f734c4a947f10223d5a13a39b4d1d976917b004d2076a2eb8881803
-/
theorem revised_method_retains_case :
    compareReads originalStates = [(10, 10)] ∧
    compareReads revisedStates = [(10, 10), (11, 10)] := by decide

end RationaleReader
