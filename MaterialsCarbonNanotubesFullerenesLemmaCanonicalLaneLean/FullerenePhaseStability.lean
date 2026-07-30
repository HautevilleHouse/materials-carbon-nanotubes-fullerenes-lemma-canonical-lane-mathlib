import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemma

structure FullerenePhaseStabilityPackage where
  solidStatePacking : Prop
  sublimationEnthalpy : Prop
  orientationalOrderDisorder : Prop
  highPressurePolymerization : Prop
  phaseDiagramPressureTemperature : Prop

structure FullerenePhaseStabilityEvidence (P : FullerenePhaseStabilityPackage) where
  solidStatePackingClosed : P.solidStatePacking
  sublimationEnthalpyClosed : P.sublimationEnthalpy
  orientationalOrderDisorderClosed : P.orientationalOrderDisorder
  highPressurePolymerizationClosed : P.highPressurePolymerization
  phaseDiagramPressureTemperatureClosed : P.phaseDiagramPressureTemperature

def FullerenePhaseStabilityClosed (P : FullerenePhaseStabilityPackage) : Prop :=
  P.solidStatePacking ∧ P.sublimationEnthalpy ∧ P.orientationalOrderDisorder ∧ P.highPressurePolymerization ∧ P.phaseDiagramPressureTemperature

theorem fullerene_phase_stability_closed_from_evidence (P : FullerenePhaseStabilityPackage) (E : FullerenePhaseStabilityEvidence P) : FullerenePhaseStabilityClosed P := by
  exact And.intro E.solidStatePackingClosed
    (And.intro E.sublimationEnthalpyClosed
      (And.intro E.orientationalOrderDisorderClosed
        (And.intro E.highPressurePolymerizationClosed E.phaseDiagramPressureTemperatureClosed)))

end MaterialsCarbonNanotubesFullerenesLemma
end HautevilleHouse
