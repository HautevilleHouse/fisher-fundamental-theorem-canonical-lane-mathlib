import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure PopulationGeneticsModel where
  traitLocus : Type
  alleleTypes : Type
  populationState : Type
  fitnessLandscape : Type
  traitDistribution : Prop
  additiveGeneticVariance : Prop
  dominanceVariance : Prop
  epistaticVariance : Prop
  heritability : Prop
  traitDistributionClosed : traitDistribution
  additiveGeneticVarianceClosed : additiveGeneticVariance
  dominanceVarianceClosed : dominanceVariance
  epistaticVarianceClosed : epistaticVariance
  heritabilityClosed : heritability

structure PopulationGeneticsModelEvidence (M : PopulationGeneticsModel) where
  traitDistributionClosed : M.traitDistribution
  additiveGeneticVarianceClosed : M.additiveGeneticVariance
  dominanceVarianceClosed : M.dominanceVariance
  epistaticVarianceClosed : M.epistaticVariance
  heritabilityClosed : M.heritability

def PopulationGeneticsModelClosed (M : PopulationGeneticsModel) : Prop :=
  M.traitDistribution ∧ M.additiveGeneticVariance ∧ M.dominanceVariance ∧ M.epistaticVariance ∧ M.heritability

theorem population_genetics_model_closed_from_evidence (M : PopulationGeneticsModel) (E : PopulationGeneticsModelEvidence M) :
    PopulationGeneticsModelClosed M := by
  exact And.intro E.traitDistributionClosed
    (And.intro E.additiveGeneticVarianceClosed
      (And.intro E.dominanceVarianceClosed
        (And.intro E.epistaticVarianceClosed E.heritabilityClosed)))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse