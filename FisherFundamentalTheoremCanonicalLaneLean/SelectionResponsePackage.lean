import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure SelectionResponsePackage where
  selectionDifferential : Prop
  responseToSelection : Prop
  breederEquation : Prop
  selectionClosed : selectionDifferential ∧ responseToSelection ∧ breederEquation

structure SelectionResponseEvidence (S : SelectionResponsePackage) where
  selectionDifferentialClosed : S.selectionDifferential
  responseToSelectionClosed : S.responseToSelection
  breederEquationClosed : S.breederEquation
  selectionClosed : S.selectionClosed

def SelectionResponseClosed (S : SelectionResponsePackage) : Prop :=
  S.selectionClosed

theorem selection_response_closed_from_evidence (S : SelectionResponsePackage) (E : SelectionResponseEvidence S) :
    SelectionResponseClosed S := by
  exact E.selectionClosed

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
