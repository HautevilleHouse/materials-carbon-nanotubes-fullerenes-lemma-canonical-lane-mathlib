import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure VibrationalModePackage where
  irreducibleRepresentation : Type u
  ramanActive : Prop
  irActive : Prop
  frequencyModes : Type v

structure VibrationalModeEvidence (V : VibrationalModePackage) where
  ramanActiveClosed : V.ramanActive
  irActiveClosed : V.irActive

def VibrationalModeClosed (V : VibrationalModePackage) : Prop :=
  V.ramanActive ∧ V.irActive

theorem vibrational_mode_closed_from_evidence
    (V : VibrationalModePackage) (Ev : VibrationalModeEvidence V) :
    VibrationalModeClosed V := by
  exact And.intro Ev.ramanActiveClosed Ev.irActiveClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse