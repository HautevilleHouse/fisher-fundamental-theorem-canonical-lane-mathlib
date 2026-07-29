import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure GenotypeFitnessModel where
  genotype : Type u
  fitness : genotype → ℝ
  geneFrequencies : genotype → ℝ
  populationSize : ℕ
  additiveGeneticVariance : ℝ
  meanFitness : ℝ
  selectionDifferential : ℝ

structure GenotypeFitnessEvidence (G : GenotypeFitnessModel) where
  fitnessDefined : ∀ g : G.genotype, G.fitness g ≥ 0
  frequenciesPositive : ∀ g : G.genotype, G.geneFrequencies g ≥ 0
  frequenciesSumToOne : ∑ g : G.genotype, G.geneFrequencies g = 1
  variancePositive : G.additiveGeneticVariance > 0
  meanFitnessPositive : G.meanFitness > 0

def GenotypeFitnessClosed (G : GenotypeFitnessModel) : Prop :=
  (∀ g : G.genotype, G.fitness g ≥ 0) ∧
  (∀ g : G.genotype, G.geneFrequencies g ≥ 0) ∧
  (∑ g : G.genotype, G.geneFrequencies g = 1) ∧
  (G.additiveGeneticVariance > 0) ∧
  (G.meanFitness > 0)

theorem genotype_fitness_closed_from_evidence
    (G : GenotypeFitnessModel) (E : GenotypeFitnessEvidence G) :
    GenotypeFitnessClosed G := by
  exact And.intro E.fitnessDefined
    (And.intro E.frequenciesPositive
      (And.intro E.frequenciesSumToOne
        (And.intro E.variancePositive E.meanFitnessPositive)))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse