import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperature : Type u
  pressure : Type v
  phaseRegions : temperature → pressure → String
  transitionLines : Set (temperature × pressure)
  phaseBoundariesClassified : Prop
  criticalPoints : Set (temperature × pressure)
  phaseBoundariesClassifiedTerm : phaseBoundariesClassified

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClassifiedClosed : P.phaseBoundariesClassified

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesClassified

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact E.phaseBoundariesClassifiedClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse