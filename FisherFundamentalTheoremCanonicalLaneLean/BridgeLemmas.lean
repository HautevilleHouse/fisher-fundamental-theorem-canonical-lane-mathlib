import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FisherWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse
