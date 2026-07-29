import FisherFundamentalTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "FisherFundamentalTheorem",
  theoremObject := "Fisher's Fundamental Theorem of Natural Selection",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, ConstrainedFisherClosure A) := by
  intro A
  exact constrained_fisher_endgame A

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
