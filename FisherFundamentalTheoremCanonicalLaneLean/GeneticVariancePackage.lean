import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure GeneticVariancePackage where
  totalVariance : Prop
  additiveGeneticVariance : Prop
  dominanceVariance : Prop
  epistaticVariance : Prop
  varianceDecomposition : totalVariance ∧ additiveGeneticVariance ∧ dominanceVariance ∧ epistaticVariance

structure GeneticVarianceEvidence (G : GeneticVariancePackage) where
  totalVarianceClosed : G.totalVariance
  additiveGeneticVarianceClosed : G.additiveGeneticVariance
  dominanceVarianceClosed : G.dominanceVariance
  epistaticVarianceClosed : G.epistaticVariance
  decompositionClosed : G.varianceDecomposition

def GeneticVarianceClosed (G : GeneticVariancePackage) : Prop :=
  G.varianceDecomposition

theorem genetic_variance_closed_from_evidence (G : GeneticVariancePackage) (E : GeneticVarianceEvidence G) :
    GeneticVarianceClosed G := by
  exact E.decompositionClosed

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
