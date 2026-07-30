import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure CarbonNanotubeStructurePackage where
  chirality : (Nat × Nat)
  diameter : ℝ
  wallStructure : Type u
  metallicOrSemiconducting : Prop
  chiralityIndexed : Prop
  diameterPositive : diameter > 0
  chiralityIndexedTerm : chiralityIndexed

structure CarbonNanotubeStructureEvidence (C : CarbonNanotubeStructurePackage) where
  chiralityIndexedClosed : C.chiralityIndexed
  diameterPositiveClosed : C.diameterPositive

def CarbonNanotubeStructureClosed (C : CarbonNanotubeStructurePackage) : Prop :=
  C.chiralityIndexed ∧ C.diameterPositive

theorem carbon_nanotube_structure_closed_from_evidence (C : CarbonNanotubeStructurePackage) (E : CarbonNanotubeStructureEvidence C) : CarbonNanotubeStructureClosed C := by
  exact And.intro E.chiralityIndexedClosed E.diameterPositiveClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse