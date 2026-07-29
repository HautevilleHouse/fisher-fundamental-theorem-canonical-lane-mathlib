import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.PopulationGeneticsModel

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure AdditiveGeneticVarianceDecomposition {M : PopulationGeneticsModel} (H : M.additiveGeneticVariance) where
  averageEffect : Type
  breedingValue : Type
  varianceComponents : Type
  allelicSubstitution : Prop
  genicVariance : Prop
  dominanceDeviation : Prop
  epistaticDeviation : Prop
  allelicSubstitutionClosed : allelicSubstitution
  genicVarianceClosed : genicVariance
  dominanceDeviationClosed : dominanceDeviation
  epistaticDeviationClosed : epistaticDeviation

structure AdditiveGeneticVarianceEvidence {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance} (D : AdditiveGeneticVarianceDecomposition H) where
  allelicSubstitutionClosed : D.allelicSubstitution
  genicVarianceClosed : D.genicVariance
  dominanceDeviationClosed : D.dominanceDeviation
  epistaticDeviationClosed : D.epistaticDeviation

def AdditiveGeneticVarianceDecompositionClosed {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance} (D : AdditiveGeneticVarianceDecomposition H) : Prop :=
  D.allelicSubstitution ∧ D.genicVariance ∧ D.dominanceDeviation ∧ D.epistaticDeviation

theorem additive_genetic_variance_decomposition_closed
    {M : PopulationGeneticsModel} {H : M.additiveGeneticVariance} (D : AdditiveGeneticVarianceDecomposition H)
    (E : AdditiveGeneticVarianceEvidence D) : AdditiveGeneticVarianceDecompositionClosed D := by
  exact And.intro E.allelicSubstitutionClosed
    (And.intro E.genicVarianceClosed
      (And.intro E.dominanceDeviationClosed E.epistaticDeviationClosed))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse