import MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

definition ConstrainedChiralityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chirality_endgame (A : AdmissibleClass) :
    ConstrainedChiralityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse