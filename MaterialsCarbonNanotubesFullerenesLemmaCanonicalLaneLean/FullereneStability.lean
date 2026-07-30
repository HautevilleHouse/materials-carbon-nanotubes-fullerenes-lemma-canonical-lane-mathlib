import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure FullereneStabilityPackage where
  cageStructure : Prop
  pentagonRule : Prop
  stabilityCondition : Prop
  cageStructureClosed : cageStructure
  pentagonRuleClosed : pentagonRule
  stabilityConditionClosed : stabilityCondition

structure FullereneStabilityEvidence (F : FullereneStabilityPackage) where
  cageStructureClosed : F.cageStructure
  pentagonRuleClosed : F.pentagonRule
  stabilityConditionClosed : F.stabilityCondition

def FullereneStabilityClosed (F : FullereneStabilityPackage) : Prop :=
  F.cageStructure ∧ F.pentagonRule ∧ F.stabilityCondition

theorem fullerene_stability_closed_from_evidence (F : FullereneStabilityPackage)
    (E : FullereneStabilityEvidence F) : FullereneStabilityClosed F := by
  exact And.intro E.cageStructureClosed (And.intro E.pentagonRuleClosed E.stabilityConditionClosed)

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse