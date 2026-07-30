import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  latticeType : Type u
  basisVectors : latticeType → Type v
  bravaisLattice : Prop
  primitiveCellVolume : Prop
  symmetryGroup : Prop
  bravaisLatticeClosed : bravaisLattice
  primitiveCellVolumeClosed : primitiveCellVolume
  symmetryGroupClosed : symmetryGroup

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  bravaisLatticeClosed : C.bravaisLattice
  primitiveCellVolumeClosed : C.primitiveCellVolume
  symmetryGroupClosed : C.symmetryGroup

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.bravaisLattice ∧ C.primitiveCellVolume ∧ C.symmetryGroup

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.primitiveCellVolumeClosed E.symmetryGroupClosed)

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse