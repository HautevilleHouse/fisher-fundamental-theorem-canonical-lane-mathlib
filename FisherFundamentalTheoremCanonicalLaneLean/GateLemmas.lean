import FisherFundamentalTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

def gateClosed (A : FisherAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FisherAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse