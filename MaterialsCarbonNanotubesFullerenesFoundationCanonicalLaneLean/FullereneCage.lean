import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure FullereneCagePackage where
  carbonCount : Nat
  pentagonCount : Nat
  hexagonCount : Nat
  icosahedralSymmetry : Prop
  eulerCharacteristic : Prop
  carbonCountCondition : carbonCount ≥ 20 ∧ carbonCount % 2 = 0
  pentagonCountCondition : pentagonCount = 12
  hexagonCountCondition : hexagonCount = carbonCount / 2 - 10

structure FullereneCageEvidence (F : FullereneCagePackage) where
  carbonCountClosed : F.carbonCount ≥ 20 ∧ F.carbonCount % 2 = 0
  pentagonCountClosed : F.pentagonCount = 12
  hexagonCountClosed : F.hexagonCount = F.carbonCount / 2 - 10
  icosahedralSymmetryClosed : F.icosahedralSymmetry
  eulerCharacteristicClosed : F.eulerCharacteristic

def FullereneCageClosed (F : FullereneCagePackage) : Prop :=
  (F.carbonCount ≥ 20 ∧ F.carbonCount % 2 = 0) ∧ F.pentagonCount = 12 ∧ F.hexagonCount = F.carbonCount / 2 - 10 ∧ F.icosahedralSymmetry ∧ F.eulerCharacteristic

theorem fullerene_cage_closed_from_evidence (F : FullereneCagePackage) (E : FullereneCageEvidence F) :
    FullereneCageClosed F := by
  exact And.intro E.carbonCountClosed (And.intro E.pentagonCountClosed (And.intro E.hexagonCountClosed (And.intro E.icosahedralSymmetryClosed E.eulerCharacteristicClosed)))

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse