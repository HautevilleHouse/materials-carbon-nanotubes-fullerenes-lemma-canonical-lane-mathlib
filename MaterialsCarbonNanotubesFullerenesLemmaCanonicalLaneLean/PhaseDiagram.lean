import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  criticalPoints : Prop
  phaseBoundariesClosed : phaseBoundaries
  criticalPointsClosed : criticalPoints

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  criticalPointsClosed : P.criticalPoints

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundaries ∧ P.criticalPoints

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro (by exact P.temperatureRange) (And.intro (by exact P.pressureRange)
    (And.intro E.phaseBoundariesClosed E.criticalPointsClosed))

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse