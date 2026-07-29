import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.AdditiveGeneticVarianceDecomposition

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FisherFundamentalInequality {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance}
    {D : AdditiveGeneticVarianceDecomposition H} where
  meanFitnessChange : Prop
  additiveVarianceEquality : Prop
  totalVarianceBound : Prop
  responseToSelection : Prop
  meanFitnessChangeClosed : meanFitnessChange
  additiveVarianceEqualityClosed : additiveVarianceEquality
  totalVarianceBoundClosed : totalVarianceBound
  responseToSelectionClosed : responseToSelection

structure FisherFundamentalInequalityEvidence {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance}
    {D : AdditiveGeneticVarianceDecomposition H} (F : FisherFundamentalInequality D) where
  meanFitnessChangeClosed : F.meanFitnessChange
  additiveVarianceEqualityClosed : F.additiveVarianceEquality
  totalVarianceBoundClosed : F.totalVarianceBound
  responseToSelectionClosed : F.responseToSelection

def FisherFundamentalInequalityClosed {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance}
    {D : AdditiveGeneticVarianceDecomposition H} (F : FisherFundamentalInequality D) : Prop :=
  F.meanFitnessChange ∧ F.additiveVarianceEquality ∧ F.totalVarianceBound ∧ F.responseToSelection

theorem fisher_fundamental_inequality_closed
    {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance}
    {D : AdditiveGeneticVarianceDecomposition H} (F : FisherFundamentalInequality D)
    (E : FisherFundamentalInequalityEvidence F) : FisherFundamentalInequalityClosed F := by
  exact And.intro E.meanFitnessChangeClosed
    (And.intro E.additiveVarianceEqualityClosed
      (And.intro E.totalVarianceBoundClosed E.responseToSelectionClosed))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse