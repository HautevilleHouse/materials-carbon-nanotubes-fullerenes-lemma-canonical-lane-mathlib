import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure TransportCoefficientPackage where
  conductanceQuantization : Prop
  meanFreePath : Prop
  ballisticTransport : Prop
  temperatureDependence : Prop

structure TransportCoefficientEvidence (T : TransportCoefficientPackage) where
  conductanceQuantizationClosed : T.conductanceQuantization
  meanFreePathClosed : T.meanFreePath
  ballisticTransportClosed : T.ballisticTransport
  temperatureDependenceClosed : T.temperatureDependence

def TransportCoefficientClosed (T : TransportCoefficientPackage) : Prop :=
  T.conductanceQuantization ∧ T.meanFreePath ∧ T.ballisticTransport ∧ T.temperatureDependence

theorem transport_coefficient_closed_from_evidence
    (T : TransportCoefficientPackage) (Ev : TransportCoefficientEvidence T) :
    TransportCoefficientClosed T := by
  exact And.intro Ev.conductanceQuantizationClosed
    (And.intro Ev.meanFreePathClosed
      (And.intro Ev.ballisticTransportClosed Ev.temperatureDependenceClosed))

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse