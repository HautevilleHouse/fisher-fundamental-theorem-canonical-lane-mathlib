import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : FisherAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FisherWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
