import FisherFundamentalTheoremCanonicalLaneLean.FisherAdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

def bridgeClosed (A : FisherAdmissibleClass) : Prop :=
  FisherWitnessClosed A.object

theorem bridge_from_admissible_class (A : FisherAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse