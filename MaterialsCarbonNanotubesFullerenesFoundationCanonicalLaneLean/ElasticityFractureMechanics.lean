import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure ElasticityTensor where
  symmetry : Type u
  positiveDefiniteness : Prop
  strainEnergy : Prop
  symmetryTerm : symmetry
  positiveDefinitenessTerm : positiveDefiniteness
  strainEnergyTerm : strainEnergy

theorem elasticity_tensor_closed (E : ElasticityTensor) : E.positiveDefiniteness ∧ E.strainEnergy := by
  exact And.intro E.positiveDefinitenessTerm E.strainEnergyTerm

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse