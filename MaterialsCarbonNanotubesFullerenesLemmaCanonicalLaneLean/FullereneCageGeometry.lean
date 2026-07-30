import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemma

structure FullereneCageGeometryPackage where
  icosahedralSymmetry : Prop
  isolatedPentagonRule : Prop
  adjacencyMatrix : Prop
  graphSpectrum : Prop
  strainEnergy : Prop

structure FullereneCageGeometryEvidence (P : FullereneCageGeometryPackage) where
  icosahedralSymmetryClosed : P.icosahedralSymmetry
  isolatedPentagonRuleClosed : P.isolatedPentagonRule
  adjacencyMatrixClosed : P.adjacencyMatrix
  graphSpectrumClosed : P.graphSpectrum
  strainEnergyClosed : P.strainEnergy

def FullereneCageGeometryClosed (P : FullereneCageGeometryPackage) : Prop :=
  P.icosahedralSymmetry ∧ P.isolatedPentagonRule ∧ P.adjacencyMatrix ∧ P.graphSpectrum ∧ P.strainEnergy

theorem fullerene_cage_geometry_closed_from_evidence (P : FullereneCageGeometryPackage) (E : FullereneCageGeometryEvidence P) : FullereneCageGeometryClosed P := by
  exact And.intro E.icosahedralSymmetryClosed
    (And.intro E.isolatedPentagonRuleClosed
      (And.intro E.adjacencyMatrixClosed
        (And.intro E.graphSpectrumClosed E.strainEnergyClosed)))

end MaterialsCarbonNanotubesFullerenesLemma
end HautevilleHouse
