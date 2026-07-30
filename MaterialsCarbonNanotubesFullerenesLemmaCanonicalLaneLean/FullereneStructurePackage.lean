import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure FullereneStructurePackage where
  carbonCount : Nat
  cageStructure : Type u
  pentagonalFaces : Nat
  hexagonalFaces : Nat
  icosahedralSymmetry : Prop
  isolatedPentagonRule : Prop
  carbonCountEven : Even carbonCount
  pentagonalFacesFixed : pentagonalFaces = 12
  icosahedralSymmetryTerm : icosahedralSymmetry
  isolatedPentagonRuleTerm : isolatedPentagonRule

structure FullereneStructureEvidence (F : FullereneStructurePackage) where
  icosahedralSymmetryClosed : F.icosahedralSymmetry
  isolatedPentagonRuleClosed : F.isolatedPentagonRule

def FullereneStructureClosed (F : FullereneStructurePackage) : Prop :=
  F.icosahedralSymmetry ∧ F.isolatedPentagonRule

theorem fullerene_structure_closed_from_evidence (F : FullereneStructurePackage) (E : FullereneStructureEvidence F) : FullereneStructureClosed F := by
  exact And.intro E.icosahedralSymmetryClosed E.isolatedPentagonRuleClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse