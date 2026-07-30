import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure FullereneStructure where
  carbonAtoms : Nat
  pentagons : Nat
  hexagons : Nat
  icosahedralSymmetry : Prop
  isolatedPentagonRule : Prop

structure FullereneEvidence (F : FullereneStructure) where
  carbonAtomsClosed : F.carbonAtoms = 60 ∨ F.carbonAtoms = 70 ∨ F.carbonAtoms = 76 ∨ F.carbonAtoms = 84
  pentagonsClosed : F.pentagons = 12
  hexagonsClosed : F.hexagons = (F.carbonAtoms - 20) / 2
  icosahedralSymmetryClosed : F.icosahedralSymmetry
  isolatedPentagonRuleClosed : F.isolatedPentagonRule

def FullereneClosed (F : FullereneStructure) : Prop :=
  (F.carbonAtoms = 60 ∨ F.carbonAtoms = 70 ∨ F.carbonAtoms = 76 ∨ F.carbonAtoms = 84) ∧
  F.pentagons = 12 ∧ F.hexagons = (F.carbonAtoms - 20) / 2 ∧
  F.icosahedralSymmetry ∧ F.isolatedPentagonRule

theorem fullerene_closed_from_evidence (F : FullereneStructure)
    (E : FullereneEvidence F) : FullereneClosed F := by
  exact And.intro E.carbonAtomsClosed
    (And.intro E.pentagonsClosed
      (And.intro E.hexagonsClosed
        (And.intro E.icosahedralSymmetryClosed E.isolatedPentagonRuleClosed)))

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse