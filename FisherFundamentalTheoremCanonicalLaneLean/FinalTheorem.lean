import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.SelectionResponse

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FisherAdmittedObject where
  populationModel : PopulationGeneticsModel
  additiveVarianceEvidence : populationModel.additiveGeneticVariance
  decomposition : AdditiveGeneticVarianceDecomposition additiveVarianceEvidence
  inequalityEvidence : FisherFundamentalInequality decomposition

structure FisherAdmissibleClass where
  object : FisherAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : FisherAdmissibleClass) : Prop :=
  SelectionResponseClosed (A.object.inequalityEvidence) -- Placeholder

theorem bridge_from_admissible_class (A : FisherAdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : FisherAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FisherAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedFisherClosure (A : FisherAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fisher_endgame (A : FisherAdmissibleClass) : ConstrainedFisherClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse