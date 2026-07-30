import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure PhaseBoundaryPackage where
  temperature : Type u
  pressure : Type v
  diamondGraphiteLine : Prop
  carbonNanotubeStabilityRegion : Prop
  fullereneStabilityRegion : Prop

structure PhaseBoundaryEvidence (P : PhaseBoundaryPackage) where
  diamondGraphiteLineClosed : P.diamondGraphiteLine
  carbonNanotubeStabilityRegionClosed : P.carbonNanotubeStabilityRegion
  fullereneStabilityRegionClosed : P.fullereneStabilityRegion

def PhaseBoundaryClosed (P : PhaseBoundaryPackage) : Prop :=
  P.diamondGraphiteLine ∧ P.carbonNanotubeStabilityRegion ∧ P.fullereneStabilityRegion

theorem phase_boundary_closed_from_evidence
    (P : PhaseBoundaryPackage) (Ev : PhaseBoundaryEvidence P) :
    PhaseBoundaryClosed P := by
  exact And.intro Ev.diamondGraphiteLineClosed
    (And.intro Ev.carbonNanotubeStabilityRegionClosed Ev.fullereneStabilityRegionClosed)

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse