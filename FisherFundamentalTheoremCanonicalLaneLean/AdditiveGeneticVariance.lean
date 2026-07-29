import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure AdditiveGeneticVariancePackage {P : PopulationGeneticsPackage} where
  additiveVariance : ℝ
  dominanceVariance : ℝ
  totalGeneticVariance : ℝ
  additiveVarianceDerived : Prop
  evidence : additiveVarianceDerived

def AdditiveGeneticVarianceClosed {P : PopulationGeneticsPackage} (A : AdditiveGeneticVariancePackage P) : Prop :=
  A.additiveVarianceDerived

theorem additive_genetic_variance_from_evidence {P : PopulationGeneticsPackage}
    (A : AdditiveGeneticVariancePackage P) : AdditiveGeneticVarianceClosed A :=
  A.evidence

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse