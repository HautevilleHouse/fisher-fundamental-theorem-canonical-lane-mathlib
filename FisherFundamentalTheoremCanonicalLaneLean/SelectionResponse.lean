import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.FisherFundamentalEquation

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure SelectionResponsePackage (G : GenotypeFitnessModel)
    (Eqn : FisherFundamentalEquation G) where
  selectionDifferential : ℝ
  heritability : ℝ
  responseToSelection : ℝ
  breedersEquation : responseToSelection = heritability * selectionDifferential

structure SelectionResponseEvidence {G : GenotypeFitnessModel}
    {Eqn : FisherFundamentalEquation G} (S : SelectionResponsePackage G Eqn) where
  selectionDifferentialPositive : S.selectionDifferential > 0
  heritabilityBetweenZeroAndOne : 0 ≤ S.heritability ∧ S.heritability ≤ 1
  breedersEquationClosed : S.breedersEquation

def SelectionResponseClosed {G : GenotypeFitnessModel}
    {Eqn : FisherFundamentalEquation G} (S : SelectionResponsePackage G Eqn) : Prop :=
  S.selectionDifferential > 0 ∧ (0 ≤ S.heritability ∧ S.heritability ≤ 1) ∧ S.breedersEquation

theorem selection_response_closed_from_evidence
    {G : GenotypeFitnessModel} {Eqn : FisherFundamentalEquation G}
    (S : SelectionResponsePackage G Eqn) (Ev : SelectionResponseEvidence S) :
    SelectionResponseClosed S := by
  exact And.intro Ev.selectionDifferentialPositive
    (And.intro Ev.heritabilityBetweenZeroAndOne Ev.breedersEquationClosed)

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse