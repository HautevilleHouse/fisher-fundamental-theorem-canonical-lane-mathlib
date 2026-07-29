import FisherFundamentalTheoremCanonicalLaneLean.VarianceComponentModel

/-!
# Selection Dynamics Package
-/

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure SelectionDynamicsPackage {V : VarianceComponentPackage} where
  fitnessFunction : Type u
  meanFitness : Prop
  selectionDifferential : Prop
  responseToSelection : Prop
  breederEquation : Prop

structure SelectionDynamicsEvidence {V : VarianceComponentPackage}
    (D : SelectionDynamicsPackage V) where
  meanFitnessClosed : D.meanFitness
  selectionDifferentialClosed : D.selectionDifferential
  responseToSelectionClosed : D.responseToSelection
  breederEquationClosed : D.breederEquation

def SelectionDynamicsClosed {V : VarianceComponentPackage}
    (D : SelectionDynamicsPackage V) : Prop :=
  D.meanFitness ∧ D.selectionDifferential ∧ D.responseToSelection ∧ D.breederEquation

theorem selection_dynamics_closed_from_evidence {V : VarianceComponentPackage}
    (D : SelectionDynamicsPackage V) (E : SelectionDynamicsEvidence D) :
    SelectionDynamicsClosed D := by
  exact And.intro E.meanFitnessClosed
    (And.intro E.selectionDifferentialClosed
      (And.intro E.responseToSelectionClosed E.breederEquationClosed))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse