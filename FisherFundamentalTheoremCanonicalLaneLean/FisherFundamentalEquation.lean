import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.GenotypeFitnessModel

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FisherFundamentalEquation (G : GenotypeFitnessModel) where
  rateOfChange : ℝ
  additiveVariance : ℝ
  meanFitness : ℝ
  equationHolds : rateOfChange = additiveVariance / meanFitness

structure FisherFundamentalEquationEvidence {G : GenotypeFitnessModel}
    (E : FisherFundamentalEquation G) where
  rateOfChangeDefined : E.rateOfChange ∈ ℝ
  additiveVarianceMatches : E.additiveVariance = G.additiveGeneticVariance
  meanFitnessMatches : E.meanFitness = G.meanFitness
  equationHoldsClosed : E.equationHolds

def FisherFundamentalEquationClosed {G : GenotypeFitnessModel}
    (E : FisherFundamentalEquation G) : Prop :=
  E.equationHolds

theorem fisher_fundamental_equation_closed_from_evidence
    {G : GenotypeFitnessModel} (Eqn : FisherFundamentalEquation G)
    (Ev : FisherFundamentalEquationEvidence Eqn) :
    FisherFundamentalEquationClosed Eqn := by
  exact Ev.equationHoldsClosed

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse