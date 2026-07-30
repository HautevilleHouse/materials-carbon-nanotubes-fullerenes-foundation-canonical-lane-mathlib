import canonicalLaneMathlib.AdmissibleClass

/-!
# Elastic Moduli Package

This module defines the elastic properties of carbon allotropes, including
Young's modulus, shear modulus, and Poisson's ratio for nanotubes and graphene.
-/

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure ElasticTensor where
  c11 : Float
  c12 : Float
  c44 : Float
  youngModulus : Float
  shearModulus : Float
  poissonRatio : Float

def ElasticModuliClosed (E : ElasticTensor) : Prop :=
  E.youngModulus > 0 ∧ E.shearModulus > 0 ∧
  E.poissonRatio > -1 ∧ E.poissonRatio < 0.5

theorem elastic_moduli_closed (E : ElasticTensor)
    (hYoung : E.youngModulus > 0) (hShear : E.shearModulus > 0)
    (hPoisson : E.poissonRatio > -1 ∧ E.poissonRatio < 0.5) :
    ElasticModuliClosed E := by
  exact And.intro hYoung (And.intro hShear hPoisson)

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
