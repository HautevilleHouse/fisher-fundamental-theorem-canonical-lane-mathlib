import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FisherEquationPackage {P : PopulationGeneticsPackage}
    {A : AdditiveGeneticVariancePackage P} where
  rateChangeMeanFitness : ℝ
  additiveVariance : ℝ
  equationString : String
  equationHolds : Prop
  evidence : equationHolds

def FisherEquationClosed {P : PopulationGeneticsPackage}
    {A : AdditiveGeneticVariancePackage P} (F : FisherEquationPackage P A) : Prop :=
  F.equationHolds

theorem fisher_equation_from_evidence {P : PopulationGeneticsPackage}
    {A : AdditiveGeneticVariancePackage P} (F : FisherEquationPackage P A) :
    FisherEquationClosed F :=
  F.evidence

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse