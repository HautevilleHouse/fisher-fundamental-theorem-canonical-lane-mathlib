import canonocialLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FisherPopulation where
  carrier : Type
  fitnessFunction : carrier → ℝ
  geneFrequencies : carrier → ℝ
  additiveEffect : carrier → ℝ

structure FisherAdmittedObject where
  population : FisherPopulation
  additiveVarianceComputed : Prop
  selectionResponseComputed : Prop
  inequalityHolds : Prop
  conclusion : additiveVarianceComputed ∧ selectionResponseComputed ∧ inequalityHolds

def FisherWitnessClosed (O : FisherAdmittedObject) : Prop :=
  O.conclusion

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
