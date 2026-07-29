import FisherFundamentalTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

def ConstrainedFisherClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fisher_endgame (A : AdmissibleClass) :
    ConstrainedFisherClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
