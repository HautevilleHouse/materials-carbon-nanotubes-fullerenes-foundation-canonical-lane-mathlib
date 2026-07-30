import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure CarbonNanotubePackage where
  chiralIndices : Nat × Nat
  diameter : ℝ
  bondLength : ℝ
  metallicOrSemiconducting : Prop
  stackingSequence : String
  chiralityDefined : chiralIndices.1 ≠ 0 ∨ chiralIndices.2 ≠ 0

structure CarbonNanotubeEvidence (C : CarbonNanotubePackage) where
  diameterClosed : C.diameter > 0
  bondLengthClosed : C.bondLength > 0
  chiralityDefinedClosed : C.chiralityDefined

def CarbonNanotubeClosed (C : CarbonNanotubePackage) : Prop :=
  C.diameter > 0 ∧ C.bondLength > 0 ∧ C.chiralityDefined

theorem carbon_nanotube_closed_from_evidence (C : CarbonNanotubePackage) (E : CarbonNanotubeEvidence C) :
    CarbonNanotubeClosed C := by
  exact And.intro E.diameterClosed (And.intro E.bondLengthClosed E.chiralityDefinedClosed)

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse