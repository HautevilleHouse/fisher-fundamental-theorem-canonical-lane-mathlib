import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FisherAdmittedObject where
  population : Type u
  covarianceMatrix : Type v
  additiveGeneticVariance : Prop
  dominanceVariance : Prop
  epistaticVariance : Prop
  conclusion : additiveGeneticVariance

structure FisherAdmissibleClass where
  object : FisherAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : FisherAdmissibleClass) : Prop :=
  FisherWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse