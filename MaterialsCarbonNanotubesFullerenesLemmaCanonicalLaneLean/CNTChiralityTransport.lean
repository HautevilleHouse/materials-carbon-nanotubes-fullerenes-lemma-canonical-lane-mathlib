import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemma

structure CNTChiralityTransportPackage where
  chiralIndexAssignment : Prop
  armchairZigzagClassification : Prop
  bandGapSemiconductorMetal : Prop
  electronicTransportBallistic : Prop
  phononScattering : Prop

structure CNTChiralityTransportEvidence (P : CNTChiralityTransportPackage) where
  chiralIndexAssignmentClosed : P.chiralIndexAssignment
  armchairZigzagClassificationClosed : P.armchairZigzagClassification
  bandGapSemiconductorMetalClosed : P.bandGapSemiconductorMetal
  electronicTransportBallisticClosed : P.electronicTransportBallistic
  phononScatteringClosed : P.phononScattering

def CNTChiralityTransportClosed (P : CNTChiralityTransportPackage) : Prop :=
  P.chiralIndexAssignment ∧ P.armchairZigzagClassification ∧ P.bandGapSemiconductorMetal ∧ P.electronicTransportBallistic ∧ P.phononScattering

theorem cnt_chirality_transport_closed_from_evidence (P : CNTChiralityTransportPackage) (E : CNTChiralityTransportEvidence P) : CNTChiralityTransportClosed P := by
  exact And.intro E.chiralIndexAssignmentClosed
    (And.intro E.armchairZigzagClassificationClosed
      (And.intro E.bandGapSemiconductorMetalClosed
        (And.intro E.electronicTransportBallisticClosed E.phononScatteringClosed)))

end MaterialsCarbonNanotubesFullerenesLemma
end HautevilleHouse
