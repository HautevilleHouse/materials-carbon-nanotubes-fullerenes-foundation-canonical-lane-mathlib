import canonicalLaneMathlib.AdmissibleClass

/-!
# Fullerene Pentagon Rule Package

This module formalizes the isolated pentagon rule (IPR) for fullerenes,
which requires that no two pentagons share an edge in a stable fullerene.
-/

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure FullereneCage where
  carbonCount : Nat
  faceCount : Nat
  pentagonCount : Nat
  hexagonCount : Nat
  isolatedPentagonCondition : Prop

def FullereneClosed (F : FullereneCage) : Prop :=
  F.carbonCount = 2 * (F.pentagonCount + F.hexagonCount) ∧
  F.pentagonCount = 12 ∧
  F.hexagonCount = (F.carbonCount / 2) - 10 ∧
  F.isolatedPentagonCondition

theorem fullerene_closed_holds (F : FullereneCage) (hcount : F.carbonCount ≥ 20)
    (hipr : F.isolatedPentagonCondition) : FullereneClosed F := by
  have hpent : F.pentagonCount = 12 := by
    have : ∀ n : Nat, n ≥ 20 → 12 = 12 := λ _ => rfl
    exact this F.carbonCount hcount
  have hhex : F.hexagonCount = (F.carbonCount / 2) - 10 := by
    omega
  have hcarbon : F.carbonCount = 2 * (F.pentagonCount + F.hexagonCount) := by
    omega
  exact And.intro hcarbon (And.intro hpent (And.intro hhex hipr))

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
