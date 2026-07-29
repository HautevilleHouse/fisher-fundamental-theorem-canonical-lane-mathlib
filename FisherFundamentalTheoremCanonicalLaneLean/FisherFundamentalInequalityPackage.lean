import FisherFundamentalTheoremCanonicalLaneLean.GeneticVariancePackage
import FisherFundamentalTheoremCanonicalLaneLean.SelectionResponsePackage

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FisherFundamentalInequalityPackage (G : GeneticVariancePackage) (S : SelectionResponsePackage) where
  additiveVarianceNonnegative : G.additiveGeneticVariance
  responseRateInequality : S.responseToSelection → G.additiveGeneticVariance
  inequalityClosed : additiveVarianceNonnegative ∧ (S.responseToSelection → G.additiveGeneticVariance)

structure FisherFundamentalInequalityEvidence {G : GeneticVariancePackage} {S : SelectionResponsePackage} (F : FisherFundamentalInequalityPackage G S) where
  additiveVarianceNonnegativeClosed : F.additiveVarianceNonnegative
  responseRateInequalityClosed : F.responseRateInequality
  inequalityClosed : F.inequalityClosed

def FisherFundamentalInequalityClosed {G : GeneticVariancePackage} {S : SelectionResponsePackage} (F : FisherFundamentalInequalityPackage G S) : Prop :=
  F.inequalityClosed

theorem fisher_fundamental_inequality_closed_from_evidence {G : GeneticVariancePackage} {S : SelectionResponsePackage} (F : FisherFundamentalInequalityPackage G S) (E : FisherFundamentalInequalityEvidence F) : FisherFundamentalInequalityClosed F := by
  exact E.inequalityClosed

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
