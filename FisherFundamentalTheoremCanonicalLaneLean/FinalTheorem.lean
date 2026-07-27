import FisherFundamentalTheoremCanonicalLaneLean.GateLemmas


namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

/-!
Fisher's fundamental theorem of natural selection

Constrained admissible-class closure of the theorem.
Full formalization of the proof is future work.
-/
def constrained_theorem_closure : Prop :=
  dR̄/dt = Var(R) (rate of increase in mean fitness = additive genetic variance)

theorem constrained_theorem_closure_true : constrained_theorem_closure := by
  sorry

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
