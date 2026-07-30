import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure ElasticityTensor where
  stiffnessTensor : Type
  complianceTensor : Type
  symmetryConditions : Type
  positiveDefiniteCondition : Type
  stiffnessTensorDefined : Prop
  complianceTensorDefined : Prop
  symmetryConditionsSatisfied : Prop
  positiveDefiniteConditionSatisfied : Prop

structure ElasticityTensorEvidence (E : ElasticityTensor) where
  stiffnessTensorDefinedClosed : E.stiffnessTensorDefined
  complianceTensorDefinedClosed : E.complianceTensorDefined
  symmetryConditionsSatisfiedClosed : E.symmetryConditionsSatisfied
  positiveDefiniteConditionSatisfiedClosed : E.positiveDefiniteConditionSatisfied

def ElasticityTensorClosed (E : ElasticityTensor) : Prop :=
  E.stiffnessTensorDefined ∧ E.complianceTensorDefined ∧
  E.symmetryConditionsSatisfied ∧ E.positiveDefiniteConditionSatisfied

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensor)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.stiffnessTensorDefinedClosed
    (And.intro Ev.complianceTensorDefinedClosed
      (And.intro Ev.symmetryConditionsSatisfiedClosed Ev.positiveDefiniteConditionSatisfiedClosed))

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
