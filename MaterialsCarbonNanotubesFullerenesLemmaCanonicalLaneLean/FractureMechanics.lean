import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  crackPropagation : Prop
  fractureToughness : Prop
  stressIntensityFactorClosed : stressIntensityFactor
  crackPropagationClosed : crackPropagation
  fractureToughnessClosed : fractureToughness

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  crackPropagationClosed : F.crackPropagation
  fractureToughnessClosed : F.fractureToughness

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.crackPropagation ∧ F.fractureToughness

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.crackPropagationClosed E.fractureToughnessClosed)

end MaterialsCarbonNanotubesFullerenesLemmaCanonicalLaneLean
end HautevilleHouse