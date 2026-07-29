import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean
end HautevilleHouse
