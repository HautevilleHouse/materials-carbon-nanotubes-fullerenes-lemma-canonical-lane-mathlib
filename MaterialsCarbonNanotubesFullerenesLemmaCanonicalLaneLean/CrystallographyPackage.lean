import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  basisVectors : bravaisLattice → bravaisLattice → ℝ
  unitCellVolume : ℝ
  symmetryGroup : Type v
  pointGroup : Type w
  spaceGroup : symmetryGroup → pointGroup
  bravaisLatticeClassified : Prop
  unitCellVolumePositive : unitCellVolume > 0
  symmetryGroupClosed : Prop
  bravaisLatticeClassifiedTerm : bravaisLatticeClassified
  symmetryGroupClosedTerm : symmetryGroupClosed

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  unitCellVolumePositiveClosed : C.unitCellVolumePositive
  symmetryGroupClosedClosed : C.symmetryGroupClosed

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.unitCellVolumePositive ∧ C.symmetryGroupClosed

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed (And.intro E.unitCellVolumePositiveClosed E.symmetryGroupClosedClosed)

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse