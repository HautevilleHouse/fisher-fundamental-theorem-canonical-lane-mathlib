import FisherFundamentalTheoremCanonicalLaneLean.SelectionDynamics

/-!
# Fitness Regression Package
-/

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FitnessRegressionPackage {V : VarianceComponentPackage}
    {D : SelectionDynamicsPackage V} where
  additiveGeneticVarianceFitness : Prop
  dominanceGeneticVarianceFitness : Prop
  totalGeneticVarianceFitness : Prop
  regressionCoefficient : Prop
  regressionIdentified : Prop

structure FitnessRegressionEvidence {V : VarianceComponentPackage}
    {D : SelectionDynamicsPackage V} (R : FitnessRegressionPackage V D) where
  additiveGeneticVarianceFitnessClosed : R.additiveGeneticVarianceFitness
  dominanceGeneticVarianceFitnessClosed : R.dominanceGeneticVarianceFitness
  totalGeneticVarianceFitnessClosed : R.totalGeneticVarianceFitness
  regressionCoefficientClosed : R.regressionCoefficient
  regressionIdentifiedClosed : R.regressionIdentified

def FitnessRegressionClosed {V : VarianceComponentPackage}
    {D : SelectionDynamicsPackage V} (R : FitnessRegressionPackage V D) : Prop :=
  R.additiveGeneticVarianceFitness ∧ R.dominanceGeneticVarianceFitness ∧
  R.totalGeneticVarianceFitness ∧ R.regressionCoefficient ∧ R.regressionIdentified

theorem fitness_regression_closed_from_evidence {V : VarianceComponentPackage}
    {D : SelectionDynamicsPackage V} (R : FitnessRegressionPackage V D)
    (E : FitnessRegressionEvidence R) : FitnessRegressionClosed R := by
  exact And.intro E.additiveGeneticVarianceFitnessClosed
    (And.intro E.dominanceGeneticVarianceFitnessClosed
      (And.intro E.totalGeneticVarianceFitnessClosed
        (And.intro E.regressionCoefficientClosed E.regressionIdentifiedClosed)))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse