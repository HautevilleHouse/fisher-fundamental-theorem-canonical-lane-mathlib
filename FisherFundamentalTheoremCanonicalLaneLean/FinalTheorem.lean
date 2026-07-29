import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

def FisherFundamentalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem fisher_fundamental_endgame (A : AdmissibleClass) : FisherFundamentalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse