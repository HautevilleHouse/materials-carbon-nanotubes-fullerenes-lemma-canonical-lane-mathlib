import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  elasticConstants : Type u
  stiffnessTensor : Type v
  complianceTensor : Type w
  symmetryConditions : Prop
  positiveDefiniteness : Prop
  symmetryConditionsClosed : symmetryConditions
  positiveDefinitenessClosed : positiveDefiniteness

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  symmetryConditionsClosed : E.symmetryConditions
  positiveDefinitenessClosed : E.positiveDefiniteness

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.symmetryConditions ∧ E.positiveDefiniteness

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryConditionsClosed Ev.positiveDefinitenessClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse