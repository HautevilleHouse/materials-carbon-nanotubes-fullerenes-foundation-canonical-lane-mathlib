import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure MechanicalProperties where
  youngModulus : Type
  tensileStrength : Type
  strainAtBreak : Type
  youngModulusDefined : Prop
  tensileStrengthDefined : Prop
  strainAtBreakDefined : Prop

structure MechanicalPropertiesEvidence (M : MechanicalProperties) where
  youngModulusDefinedClosed : M.youngModulusDefined
  tensileStrengthDefinedClosed : M.tensileStrengthDefined
  strainAtBreakDefinedClosed : M.strainAtBreakDefined

def MechanicalPropertiesClosed (M : MechanicalProperties) : Prop :=
  M.youngModulusDefined ∧ M.tensileStrengthDefined ∧ M.strainAtBreakDefined

theorem mechanical_properties_closed_from_evidence (M : MechanicalProperties)
    (E : MechanicalPropertiesEvidence M) : MechanicalPropertiesClosed M := by
  exact And.intro E.youngModulusDefinedClosed
    (And.intro E.tensileStrengthDefinedClosed E.strainAtBreakDefinedClosed)

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
