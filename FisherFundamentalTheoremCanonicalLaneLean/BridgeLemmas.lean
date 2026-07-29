import FisherFundamentalTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let Obj := A.object
  Obj.additiveGeneticVariance / Obj.genotypicVariance ≤ 1

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse