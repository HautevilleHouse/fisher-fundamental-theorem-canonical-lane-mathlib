import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FisherFundamentalTheoremCanonicalLaneLean.PopulationGeneticsModel

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure MultilocusExtension (M : PopulationGeneticsModel) where
  locusCount : Nat
  linkageDisequilibrium : Prop
  gameticPhase : Prop
  epistasisInteractions : Prop
  multilocusAdditiveVariance : Prop
  linkageDisequilibriumClosed : linkageDisequilibrium
  gameticPhaseClosed : gameticPhase
  epistasisInteractionsClosed : epistasisInteractions
  multilocusAdditiveVarianceClosed : multilocusAdditiveVariance

structure MultilocusExtensionEvidence (E : MultilocusExtension M) where
  linkageDisequilibriumClosed : E.linkageDisequilibrium
  gameticPhaseClosed : E.gameticPhase
  epistasisInteractionsClosed : E.epistasisInteractions
  multilocusAdditiveVarianceClosed : E.multilocusAdditiveVariance

def MultilocusExtensionClosed (E : MultilocusExtension M) : Prop :=
  E.linkageDisequilibrium ∧ E.gameticPhase ∧ E.epistasisInteractions ∧ E.multilocusAdditiveVariance

theorem multilocus_extension_closed (E : MultilocusExtension M) (Ev : MultilocusExtensionEvidence E) :
    MultilocusExtensionClosed E := by
  exact And.intro Ev.linkageDisequilibriumClosed
    (And.intro Ev.gameticPhaseClosed
      (And.intro Ev.epistasisInteractionsClosed Ev.multilocusAdditiveVarianceClosed))

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse