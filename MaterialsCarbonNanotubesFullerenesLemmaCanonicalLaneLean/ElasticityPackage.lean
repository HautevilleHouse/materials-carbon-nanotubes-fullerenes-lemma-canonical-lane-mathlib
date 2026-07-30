import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure ElasticityPackage where
  strain : Type u
  stress : Type v
  stiffnessTensor : strain → stress
  complianceTensor : stress → strain
  elasticModuli : Type w
  stressStrainLinear : Prop
  positiveDefiniteStiffness : Prop
  stressStrainLinearTerm : stressStrainLinear
  positiveDefiniteStiffnessTerm : positiveDefiniteStiffness

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainLinearClosed : E.stressStrainLinear
  positiveDefiniteStiffnessClosed : E.positiveDefiniteStiffness

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainLinear ∧ E.positiveDefiniteStiffness

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainLinearClosed Ev.positiveDefiniteStiffnessClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse