import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure NanotubeChiralityVector where
  n : Nat
  m : Nat
  n_nonzero : n ≠ 0
  m_nonzero : m ≠ 0

definition metallicCondition (v : NanotubeChiralityVector) : Prop :=
  (v.n - v.m) % 3 = 0

structure ChiralObject where
  vector : NanotubeChiralityVector
  isMetallic : Prop
  conclusion : isMetallic

definition ChiralWitnessClosed (O : ChiralObject) : Prop :=
  O.isMetallic

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse