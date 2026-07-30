import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemma

structure CNTFrontierOrbitalPackage where
  huckelModel : Prop
  tightBindingHamiltonian : Prop
  bandStructureGraphene : Prop
  fermiSurface : Prop
  orbitalHybridization : Prop

structure CNTFrontierOrbitalEvidence (P : CNTFrontierOrbitalPackage) where
  huckelModelClosed : P.huckelModel
  tightBindingHamiltonianClosed : P.tightBindingHamiltonian
  bandStructureGrapheneClosed : P.bandStructureGraphene
  fermiSurfaceClosed : P.fermiSurface
  orbitalHybridizationClosed : P.orbitalHybridization

def CNTFrontierOrbitalClosed (P : CNTFrontierOrbitalPackage) : Prop :=
  P.huckelModel ∧ P.tightBindingHamiltonian ∧ P.bandStructureGraphene ∧ P.fermiSurface ∧ P.orbitalHybridization

theorem cnt_frontier_orbital_closed_from_evidence (P : CNTFrontierOrbitalPackage) (E : CNTFrontierOrbitalEvidence P) : CNTFrontierOrbitalClosed P := by
  exact And.intro E.huckelModelClosed
    (And.intro E.tightBindingHamiltonianClosed
      (And.intro E.bandStructureGrapheneClosed
        (And.intro E.fermiSurfaceClosed E.orbitalHybridizationClosed)))

end MaterialsCarbonNanotubesFullerenesLemma
end HautevilleHouse
