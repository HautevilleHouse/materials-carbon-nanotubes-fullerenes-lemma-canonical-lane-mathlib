import canonicalLaneMathlib.AdmissibleClass
import MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean.ChiralityAdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

definition bridgeClosed (A : AdmissibleClass) : Prop :=
  ChiralWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse