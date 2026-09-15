import Lean
import CoreReader
#check CoreReader.Integration.jointWitness
#print axioms CoreReader.Integration.jointWitness
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.jointWitness
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.jointWitness " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.Generative
#print axioms CoreReader.Agency.Generative
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.Generative
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.Generative " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.permissionNotValuation
#print axioms CoreReader.Agency.permissionNotValuation
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.permissionNotValuation
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.permissionNotValuation " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.revisabilityCovers
#print axioms CoreReader.Agency.revisabilityCovers
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.revisabilityCovers
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.revisabilityCovers " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.revisionWithoutProgress
#print axioms CoreReader.Agency.revisionWithoutProgress
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.revisionWithoutProgress
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.revisionWithoutProgress " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.generationLimits
#print axioms CoreReader.Agency.generationLimits
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.generationLimits
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.generationLimits " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.AchievementAccountability
#print axioms CoreReader.Evidence.AchievementAccountability
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.AchievementAccountability
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.AchievementAccountability " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.achievementNeedsSupport
#print axioms CoreReader.Evidence.achievementNeedsSupport
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.achievementNeedsSupport
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.achievementNeedsSupport " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.consequenceConsistency
#print axioms CoreReader.Logic.consequenceConsistency
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.consequenceConsistency
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.consequenceConsistency " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.jointConflict
#print axioms CoreReader.Logic.jointConflict
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.jointConflict
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.jointConflict " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.revisionCanReverse
#print axioms CoreReader.Logic.revisionCanReverse
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.revisionCanReverse
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.revisionCanReverse " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.contextDifferences
#print axioms CoreReader.Logic.contextDifferences
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.contextDifferences
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.contextDifferences " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.semanticChangeMustBeReported
#print axioms CoreReader.Logic.semanticChangeMustBeReported
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.semanticChangeMustBeReported
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.semanticChangeMustBeReported " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.representationOrderIrrelevant
#print axioms CoreReader.Logic.representationOrderIrrelevant
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.representationOrderIrrelevant
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.representationOrderIrrelevant " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.hiddenContextChangeRejected
#print axioms CoreReader.Logic.hiddenContextChangeRejected
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.hiddenContextChangeRejected
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.hiddenContextChangeRejected " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.tensionWithoutContradiction
#print axioms CoreReader.Logic.tensionWithoutContradiction
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.tensionWithoutContradiction
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.tensionWithoutContradiction " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.conflictRequiresChange
#print axioms CoreReader.Logic.conflictRequiresChange
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.conflictRequiresChange
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.conflictRequiresChange " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.consistentFalse
#print axioms CoreReader.Logic.consistentFalse
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.consistentFalse
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.consistentFalse " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.consistentIncomplete
#print axioms CoreReader.Logic.consistentIncomplete
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.consistentIncomplete
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.consistentIncomplete " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.Reflexive
#print axioms CoreReader.Agency.Reflexive
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.Reflexive
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.Reflexive " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.noSelfExemption
#print axioms CoreReader.Agency.noSelfExemption
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.noSelfExemption
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.noSelfExemption " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.applicabilityRetained
#print axioms CoreReader.Agency.applicabilityRetained
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.applicabilityRetained
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.applicabilityRetained " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.selfTestDoesNotProve
#print axioms CoreReader.Agency.selfTestDoesNotProve
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.selfTestDoesNotProve
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.selfTestDoesNotProve " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.selfOriginDoesNotSupport
#print axioms CoreReader.Evidence.selfOriginDoesNotSupport
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.selfOriginDoesNotSupport
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.selfOriginDoesNotSupport " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.Grounds
#print axioms CoreReader.Evidence.Grounds
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.Grounds
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.Grounds " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.supportWeakening
#print axioms CoreReader.Evidence.supportWeakening
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.supportWeakening
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.supportWeakening " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.scopeRestriction
#print axioms CoreReader.Evidence.scopeRestriction
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.scopeRestriction
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.scopeRestriction " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.assessmentUnion
#print axioms CoreReader.Evidence.assessmentUnion
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.assessmentUnion
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.assessmentUnion " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.labelsCannotWaive
#print axioms CoreReader.Evidence.labelsCannotWaive
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.labelsCannotWaive
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.labelsCannotWaive " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.mixedMissingResponsibility
#print axioms CoreReader.Evidence.mixedMissingResponsibility
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.mixedMissingResponsibility
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.mixedMissingResponsibility " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.articulationNotSupport
#print axioms CoreReader.Evidence.articulationNotSupport
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.articulationNotSupport
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.articulationNotSupport " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.measurementRepeatNotSupport
#print axioms CoreReader.Evidence.measurementRepeatNotSupport
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.measurementRepeatNotSupport
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.measurementRepeatNotSupport " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Logic.compatibilityNotEntailment
#print axioms CoreReader.Logic.compatibilityNotEntailment
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Logic.compatibilityNotEntailment
  Lean.logInfo ("ORGANON_TYPE CoreReader.Logic.compatibilityNotEntailment " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.selfAssertionNotReason
#print axioms CoreReader.Evidence.selfAssertionNotReason
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.selfAssertionNotReason
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.selfAssertionNotReason " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.valueWithoutSelfProof
#print axioms CoreReader.Evidence.valueWithoutSelfProof
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.valueWithoutSelfProof
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.valueWithoutSelfProof " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.heterogeneousReasons
#print axioms CoreReader.Evidence.heterogeneousReasons
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.heterogeneousReasons
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.heterogeneousReasons " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.localNotUniversal
#print axioms CoreReader.Evidence.localNotUniversal
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.localNotUniversal
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.localNotUniversal " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.hiddenDifference
#print axioms CoreReader.Evidence.hiddenDifference
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.hiddenDifference
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.hiddenDifference " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.singleObservation
#print axioms CoreReader.Evidence.singleObservation
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.singleObservation
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.singleObservation " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.noUniversalChain
#print axioms CoreReader.Evidence.noUniversalChain
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.noUniversalChain
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.noUniversalChain " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.variableOutcomesStableBound
#print axioms CoreReader.Evidence.variableOutcomesStableBound
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.variableOutcomesStableBound
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.variableOutcomesStableBound " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.verificationReproductionStability
#print axioms CoreReader.Evidence.verificationReproductionStability
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.verificationReproductionStability
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.verificationReproductionStability " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.outputNotExplanation
#print axioms CoreReader.Evidence.outputNotExplanation
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.outputNotExplanation
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.outputNotExplanation " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.applicationContractsDiffer
#print axioms CoreReader.Evidence.applicationContractsDiffer
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.applicationContractsDiffer
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.applicationContractsDiffer " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.externalAssessment
#print axioms CoreReader.Evidence.externalAssessment
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.externalAssessment
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.externalAssessment " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.inventoryNotCapability
#print axioms CoreReader.Agency.inventoryNotCapability
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.inventoryNotCapability
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.inventoryNotCapability " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Choice.statusOnlyFails
#print axioms CoreReader.Choice.statusOnlyFails
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Choice.statusOnlyFails
  Lean.logInfo ("ORGANON_TYPE CoreReader.Choice.statusOnlyFails " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Choice.conventionWithReason
#print axioms CoreReader.Choice.conventionWithReason
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Choice.conventionWithReason
  Lean.logInfo ("ORGANON_TYPE CoreReader.Choice.conventionWithReason " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Choice.generalGroundsNotChoice
#print axioms CoreReader.Choice.generalGroundsNotChoice
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Choice.generalGroundsNotChoice
  Lean.logInfo ("ORGANON_TYPE CoreReader.Choice.generalGroundsNotChoice " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Choice.singleFeasible
#print axioms CoreReader.Choice.singleFeasible
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Choice.singleFeasible
  Lean.logInfo ("ORGANON_TYPE CoreReader.Choice.singleFeasible " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Choice.localNotGlobal
#print axioms CoreReader.Choice.localNotGlobal
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Choice.localNotGlobal
  Lean.logInfo ("ORGANON_TYPE CoreReader.Choice.localNotGlobal " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Choice.internalReasons
#print axioms CoreReader.Choice.internalReasons
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Choice.internalReasons
  Lean.logInfo ("ORGANON_TYPE CoreReader.Choice.internalReasons " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Choice.openNotEquivalent
#print axioms CoreReader.Choice.openNotEquivalent
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Choice.openNotEquivalent
  Lean.logInfo ("ORGANON_TYPE CoreReader.Choice.openNotEquivalent " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Integration.revisionKeepsConsistency
#print axioms CoreReader.Integration.revisionKeepsConsistency
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.revisionKeepsConsistency
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.revisionKeepsConsistency " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Integration.ownCapabilityGrounded
#print axioms CoreReader.Integration.ownCapabilityGrounded
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.ownCapabilityGrounded
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.ownCapabilityGrounded " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Integration.groundsSelfAssessment
#print axioms CoreReader.Integration.groundsSelfAssessment
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.groundsSelfAssessment
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.groundsSelfAssessment " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Integration.existingPhilosophyNotPrivileged
#print axioms CoreReader.Integration.existingPhilosophyNotPrivileged
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.existingPhilosophyNotPrivileged
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.existingPhilosophyNotPrivileged " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Agency.generationNotReflexivity
#print axioms CoreReader.Agency.generationNotReflexivity
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Agency.generationNotReflexivity
  Lean.logInfo ("ORGANON_TYPE CoreReader.Agency.generationNotReflexivity " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Integration.charterNotGrounds
#print axioms CoreReader.Integration.charterNotGrounds
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.charterNotGrounds
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.charterNotGrounds " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Integration.applicationRetainsDuties
#print axioms CoreReader.Integration.applicationRetainsDuties
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.applicationRetainsDuties
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.applicationRetainsDuties " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Integration.reasonsBelongToCommitments
#print axioms CoreReader.Integration.reasonsBelongToCommitments
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.reasonsBelongToCommitments
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.reasonsBelongToCommitments " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Evidence.nonExecutableAssessment
#print axioms CoreReader.Evidence.nonExecutableAssessment
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Evidence.nonExecutableAssessment
  Lean.logInfo ("ORGANON_TYPE CoreReader.Evidence.nonExecutableAssessment " ++ (Lean.Json.str (reprStr info.type)).compress)
#check CoreReader.Integration.applicationVariation
#print axioms CoreReader.Integration.applicationVariation
run_cmd do
  let info ← Lean.getConstInfo `CoreReader.Integration.applicationVariation
  Lean.logInfo ("ORGANON_TYPE CoreReader.Integration.applicationVariation " ++ (Lean.Json.str (reprStr info.type)).compress)
