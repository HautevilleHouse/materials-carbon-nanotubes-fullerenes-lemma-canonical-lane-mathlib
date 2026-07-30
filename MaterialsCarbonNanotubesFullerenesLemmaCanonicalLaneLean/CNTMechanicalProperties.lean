import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemma

structure CNTMechanicalPropertiesPackage where
  youngModulus : Prop
  tensileStrength : Prop
  bucklingStability : Prop
  fractureToughness : Prop
  strainRateDependence : Prop

structure CNTMechanicalPropertiesEvidence (P : CNTMechanicalPropertiesPackage) where
  youngModulusClosed : P.youngModulus
  tensileStrengthClosed : P.tensileStrength
  bucklingStabilityClosed : P.bucklingStability
  fractureToughnessClosed : P.fractureToughness
  strainRateDependenceClosed : P.strainRateDependence

def CNTMechanicalPropertiesClosed (P : CNTMechanicalPropertiesPackage) : Prop :=
  P.youngModulus ∧ P.tensileStrength ∧ P.bucklingStability ∧ P.fractureToughness ∧ P.strainRateDependence

theorem cnt_mechanical_properties_closed_from_evidence (P : CNTMechanicalPropertiesPackage) (E : CNTMechanicalPropertiesEvidence P) : CNTMechanicalPropertiesClosed P := by
  exact And.intro E.youngModulusClosed
    (And.intro E.tensileStrengthClosed
      (And.intro E.bucklingStabilityClosed
        (And.intro E.fractureToughnessClosed E.strainRateDependenceClosed)))

end MaterialsCarbonNanotubesFullerenesLemma
end HautevilleHouse
