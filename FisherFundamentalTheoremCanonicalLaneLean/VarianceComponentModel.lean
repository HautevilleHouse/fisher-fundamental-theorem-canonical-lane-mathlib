import FisherFundamentalTheoremCanonicalLaneLean.FisherAdmissibleClass

/-!
# Variance Component Model Package
-/

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure VarianceComponentPackage where
  additiveComponent : Prop
  dominanceComponent : Prop
  epistaticComponent : Prop
  environmentalComponent : Prop
  totalPhenotypicVariance : Prop
  partitionIdentified : Prop

structure VarianceComponentEvidence (P : VarianceComponentPackage) where
  additiveComponentClosed : P.additiveComponent
  dominanceComponentClosed : P.dominanceComponent
  epistaticComponentClosed : P.epistaticComponent
  environmentalComponentClosed : P.environmentalComponent
  totalPhenotypicVarianceClosed : P.totalPhenotypicVariance
  partitionIdentifiedClosed : P.partitionIdentified

def VarianceComponentClosed (P : VarianceComponentPackage) : Prop :=
  P.additiveComponent ∧ P.dominanceComponent ∧ P.epistaticComponent ∧
  P.environmentalComponent ∧ P.totalPhenotypicVariance ∧ P.partitionIdentified

theorem variance_component_closed_from_evidence (P : VarianceComponentPackage)
    (E : VarianceComponentEvidence P) : VarianceComponentClosed P := by
  exact And.intro E.additiveComponentClosed
    (And.intro E.dominanceComponentClosed
      (And.intro E.epistaticComponentClosed
        (And.intro E.environmentalComponentClosed
          (And.intro E.totalPhenotypicVarianceClosed E.partitionIdentifiedClosed))))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse