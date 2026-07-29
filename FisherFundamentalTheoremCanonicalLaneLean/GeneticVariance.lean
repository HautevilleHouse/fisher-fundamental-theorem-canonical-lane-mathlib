import FisherFundamentalTheoremCanonicalLaneLean.FisherFundamentalTheorem

/-!
# Genetic Variance Components

This module decomposes total genetic variance into additive, dominance, and epistatic components.
-/

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure GeneticVarianceComponents where
  totalGenotypicVariance : ℝ
  additiveGeneticVariance : ℝ
  dominanceVariance : ℝ
  epistaticVariance : ℝ
  decompositionValid : totalGenotypicVariance = additiveGeneticVariance + dominanceVariance + epistaticVariance

theorem variance_decomposition_valid (comp : GeneticVarianceComponents) :
    comp.totalGenotypicVariance = comp.additiveGeneticVariance + comp.dominanceVariance + comp.epistaticVariance :=
  comp.decompositionValid

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse