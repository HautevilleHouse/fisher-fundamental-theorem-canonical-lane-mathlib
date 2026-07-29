import FisherFundamentalTheoremCanonicalLaneLean.FitnessRegression

/-!
# Endgame Theorem Package
-/

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

def FisherFundamentalTheoremClosure (A : FisherAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem fisher_fundamental_theorem_endgame (A : FisherAdmissibleClass) :
    FisherFundamentalTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse