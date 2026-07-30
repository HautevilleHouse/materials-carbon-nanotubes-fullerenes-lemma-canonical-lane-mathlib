import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure GrapheneLatticePackage where
  basisVectors : Type u
  hoppingIntegral : Type v
  firstBrillouinZone : Type w
  latticeSymmetry : Prop
  bandStructureComputed : Prop

structure TightBindingEvidence (G : GrapheneLatticePackage) where
  latticeSymmetryClosed : G.latticeSymmetry
  bandStructureComputedClosed : G.bandStructureComputed

def TightBindingClosed (G : GrapheneLatticePackage) : Prop :=
  G.latticeSymmetry ∧ G.bandStructureComputed

theorem tight_binding_closed_from_evidence
    (G : GrapheneLatticePackage) (E : TightBindingEvidence G) :
    TightBindingClosed G := by
  exact And.intro E.latticeSymmetryClosed E.bandStructureComputedClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse