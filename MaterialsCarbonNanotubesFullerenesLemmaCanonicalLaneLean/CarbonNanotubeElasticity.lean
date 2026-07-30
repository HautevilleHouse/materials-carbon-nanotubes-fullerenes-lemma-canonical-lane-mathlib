import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure ElasticTensorPackage where
  youngModulus : Prop
  poissonRatio : Prop
  chiralAngleDependence : Prop
  tubeDiameterDependence : Prop

structure ElasticTensorEvidence (E : ElasticTensorPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  chiralAngleDependenceClosed : E.chiralAngleDependence
  tubeDiameterDependenceClosed : E.tubeDiameterDependence

def ElasticTensorClosed (E : ElasticTensorPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.chiralAngleDependence ∧ E.tubeDiameterDependence

theorem elastic_tensor_closed_from_evidence
    (E : ElasticTensorPackage) (Ev : ElasticTensorEvidence E) :
    ElasticTensorClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.chiralAngleDependenceClosed Ev.tubeDiameterDependenceClosed))

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse