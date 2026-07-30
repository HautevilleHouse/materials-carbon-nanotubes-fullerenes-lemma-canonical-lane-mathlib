import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure NanotubeDispersionPackage where
  chiralityIndices : Prop
  bandGap : Prop
  densityOfStates : Prop
  chiralityIndicesClosed : chiralityIndices
  bandGapClosed : bandGap
  densityOfStatesClosed : densityOfStates

structure NanotubeDispersionEvidence (N : NanotubeDispersionPackage) where
  chiralityIndicesClosed : N.chiralityIndices
  bandGapClosed : N.bandGap
  densityOfStatesClosed : N.densityOfStates

def NanotubeDispersionClosed (N : NanotubeDispersionPackage) : Prop :=
  N.chiralityIndices ∧ N.bandGap ∧ N.densityOfStates

theorem nanotube_dispersion_closed_from_evidence (N : NanotubeDispersionPackage)
    (E : NanotubeDispersionEvidence N) : NanotubeDispersionClosed N := by
  exact And.intro E.chiralityIndicesClosed (And.intro E.bandGapClosed E.densityOfStatesClosed)

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse