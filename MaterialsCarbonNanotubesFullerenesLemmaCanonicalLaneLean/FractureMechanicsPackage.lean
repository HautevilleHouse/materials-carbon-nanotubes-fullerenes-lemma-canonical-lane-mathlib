import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressIntensityFactor : crackGeometry → ℝ
  fractureToughness : ℝ
  crackPropagationCriterion : Prop
  criticalStressFactor : Prop
  crackPropagationCriterionTerm : crackPropagationCriterion
  criticalStressFactorTerm : criticalStressFactor

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  criticalStressFactorClosed : F.criticalStressFactor

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationCriterion ∧ F.criticalStressFactor

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.crackPropagationCriterionClosed E.criticalStressFactorClosed

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse