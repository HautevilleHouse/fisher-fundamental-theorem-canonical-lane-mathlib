import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FisherAdmittedObject where
  population : Type u
  fitnessFunction : population → ℝ
  genotypicVariance : ℝ
  additiveGeneticVariance : ℝ
  dominanceVariance : ℝ
  epistaticVariance : ℝ
  conclusion : additiveGeneticVariance / genotypicVariance ≤ 1

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse