import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure CarbonNanotubeProperties where
  chiralIndices : Prop
  diameter : Prop
  conductivity : Prop
  strength : Prop
  chiralityEnumeration : Prop

structure CarbonNanotubeEvidence (C : CarbonNanotubeProperties) where
  chiralIndicesClosed : C.chiralIndices
  diameterClosed : C.diameter
  conductivityClosed : C.conductivity
  strengthClosed : C.strength
  chiralityEnumerationClosed : C.chiralityEnumeration

def CarbonNanotubeClosed (C : CarbonNanotubeProperties) : Prop :=
  C.chiralIndices ∧ C.diameter ∧ C.conductivity ∧
  C.strength ∧ C.chiralityEnumeration

theorem carbon_nanotube_closed_from_evidence (C : CarbonNanotubeProperties)
    (E : CarbonNanotubeEvidence C) : CarbonNanotubeClosed C := by
  exact And.intro E.chiralIndicesClosed
    (And.intro E.diameterClosed
      (And.intro E.conductivityClosed
        (And.intro E.strengthClosed E.chiralityEnumerationClosed)))

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse