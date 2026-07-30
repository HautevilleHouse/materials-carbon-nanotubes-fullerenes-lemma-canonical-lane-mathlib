import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemma

structure FullereneReactivityPackage where
  dielsAlderCycloaddition : Prop
  hydrogenationThermodynamics : Prop
  electronAcceptingCapacity : Prop
  radicalScavenging : Prop
  functionalizationPattern : Prop

structure FullereneReactivityEvidence (P : FullereneReactivityPackage) where
  dielsAlderCycloadditionClosed : P.dielsAlderCycloaddition
  hydrogenationThermodynamicsClosed : P.hydrogenationThermodynamics
  electronAcceptingCapacityClosed : P.electronAcceptingCapacity
  radicalScavengingClosed : P.radicalScavenging
  functionalizationPatternClosed : P.functionalizationPattern

def FullereneReactivityClosed (P : FullereneReactivityPackage) : Prop :=
  P.dielsAlderCycloaddition ∧ P.hydrogenationThermodynamics ∧ P.electronAcceptingCapacity ∧ P.radicalScavenging ∧ P.functionalizationPattern

theorem fullerene_reactivity_closed_from_evidence (P : FullereneReactivityPackage) (E : FullereneReactivityEvidence P) : FullereneReactivityClosed P := by
  exact And.intro E.dielsAlderCycloadditionClosed
    (And.intro E.hydrogenationThermodynamicsClosed
      (And.intro E.electronAcceptingCapacityClosed
        (And.intro E.radicalScavengingClosed E.functionalizationPatternClosed)))

end MaterialsCarbonNanotubesFullerenesLemma
end HautevilleHouse
