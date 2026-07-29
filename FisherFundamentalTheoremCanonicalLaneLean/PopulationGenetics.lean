import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure PopulationGeneticsPackage where
  population : Type u
  alleles : Type v
  alleleFrequencies : List ℝ
  fitnessLandscape : List ℝ → ℝ
  meanFitness : ℝ
  genotypicValues : List ℝ

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  ∃ (avgGenotypicValue : ℝ), avgGenotypicValue = P.meanFitness

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse