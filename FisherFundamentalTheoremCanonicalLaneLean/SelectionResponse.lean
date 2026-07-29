import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.FisherFundamentalInequality

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure SelectionResponse {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance}
    {D : AdditiveGeneticVarianceDecomposition H} {F : FisherFundamentalInequality D} where
  selectionDifferential : Prop
  responseEquation : Prop
  breederEquation : Prop
  realizedHeritability : Prop
  selectionDifferentialClosed : selectionDifferential
  responseEquationClosed : responseEquation
  breederEquationClosed : breederEquation
  realizedHeritabilityClosed : realizedHeritability

structure SelectionResponseEvidence {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance}
    {D : AdditiveGeneticVarianceDecomposition H} {F : FisherFundamentalInequality D}
    (S : SelectionResponse F) where
  selectionDifferentialClosed : S.selectionDifferential
  responseEquationClosed : S.responseEquation
  breederEquationClosed : S.breederEquation
  realizedHeritabilityClosed : S.realizedHeritability

def SelectionResponseClosed {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance}
    {D : AdditiveGeneticVarianceDecomposition H} {F : FisherFundamentalInequality D}
    (S : SelectionResponse F) : Prop :=
  S.selectionDifferential ∧ S.responseEquation ∧ S.breederEquation ∧ S.realizedHeritability

theorem selection_response_closed
    {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance}
    {D : AdditiveGeneticVarianceDecomposition H} {F : FisherFundamentalInequality D}
    (S : SelectionResponse F) (E : SelectionResponseEvidence S) : SelectionResponseClosed S := by
  exact And.intro E.selectionDifferentialClosed
    (And.intro E.responseEquationClosed
      (And.intro E.breederEquationClosed E.realizedHeritabilityClosed))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse