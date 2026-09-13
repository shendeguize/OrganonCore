# Reported source fidelity

These are reported semantic judgments, not kernel conclusions. Initial records precede comparison; revised mappings have informed follow-up judgments. Two rejected attempts have editorial current-result wording; their original independent reasons and verdicts remain in the initial comparison export. The bound records and exact object hashes are listed in fidelity.json. Unmodeled entries remain pending; structure is not a philosophical theorem.

## r-77-c2 — partial

namedUniversalTruth proves P from the explicit premise h:P; encoded_statement separately proves 0≤1. These correctly illustrate conditional derivation and a checked statement. They do not prove Lean soundness for every dependency or that an arbitrary prose encoding corresponds to its source. The theorem name supplies no stronger claim.

## r-77-c3 — partial

The arithmetic witness has a true bounded statement 0≤1 and a false stronger universal statement forall n,n≤1 (counterexample 2). It establishes that proving the former need not establish the latter in this selected condition-change example. General correspondence failure is not equivalent to falsity of the prose claim; the source also allows an unsupported but true prose claim. No philosophical commitment is refuted.

## r-119-c2 — partial

budget_change_is_distinct demonstrates that latencies 5/2 satisfy budget 6 but not budget 3, a separate hypothetical context. The mapped theorem contains no freshness requirement or subsequent-read ordering, so it illustrates only sensitivity to a stated budget and does not encode the combined service obligation.

## r-119-c5 — partial

original_comparison directly checks equal answers at initial acknowledged/cached 10 and both fixed latencies within budget 6. It is a faithful concrete unchanged-data fixture; a single state and stipulated latencies do not reproduce an actual comparison study or a workload-wide measurement result.

## r-121-c2 — partial

The initial outputs agree; after updateOnly to 11, direct reads 11 and cachedRead remains 10, and input 11 refutes the modeled universal cache-freshness claim. Combined with original_comparison this realizes the stated local counterexample. Acknowledgment is represented by a state field/update convention, with no concurrent execution or real measurements.

## r-121-c3 — partial

A concrete pair agrees at the initial state and differs after the acknowledged-value update. This supplies a witness against inferring equality at all relevant states from the original local equality. Overall equivalence across costs, failures and other effects is not modeled.

## r-121-c4 — partial

compareReads now evaluates the unchanged direct/cachedRead candidates over originalStates=[initial] and revisedStates=[initial,updateOnly initial 11]; the computed result retains (10,10) and adds (11,10). This supplies the previously missing revision of the comparison inputs rather than an implementation repair. Independent probes confirm empty/initial-only/same-value-update inputs do not reveal the mismatch, so the contribution depends on including the relevant changed-data state. The model still uses preconstructed sequential states and one unchanged case, not a general evaluation workflow, real execution, concurrency or complete regression suite.
