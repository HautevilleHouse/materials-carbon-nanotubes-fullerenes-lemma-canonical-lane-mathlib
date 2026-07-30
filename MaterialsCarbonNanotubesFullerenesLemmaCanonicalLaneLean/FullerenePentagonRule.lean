import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure EulerCharacteristicPackage where
  faceCount : Nat
  vertexCount : Nat
  edgeCount : Nat
  eulerFormula : Prop
  pentagonCountMultiple : Prop

structure EulerCharacteristicEvidence (E : EulerCharacteristicPackage) where
  eulerFormulaClosed : E.eulerFormula
  pentagonCountMultipleClosed : E.pentagonCountMultiple

def EulerCharacteristicClosed (E : EulerCharacteristicPackage) : Prop :=
  E.eulerFormula ∧ E.pentagonCountMultiple

theorem euler_characteristic_closed_from_evidence
    (E : EulerCharacteristicPackage) (Ev : EulerCharacteristicEvidence E) :
    EulerCharacteristicClosed E := by
  exact And.intro Ev.eulerFormulaClosed Ev.pentagonCountMultipleClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse