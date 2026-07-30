import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure CarbonNanotubeChirality where
  chiralVector : Type
  chiralAngle : Type
  diameter : Type
  chiralVectorDefined : Prop
  chiralAngleComputed : Prop
  diameterDefined : Prop

structure CarbonNanotubeChiralityEvidence (C : CarbonNanotubeChirality) where
  chiralVectorDefinedClosed : C.chiralVectorDefined
  chiralAngleComputedClosed : C.chiralAngleComputed
  diameterDefinedClosed : C.diameterDefined

def CarbonNanotubeChiralityClosed (C : CarbonNanotubeChirality) : Prop :=
  C.chiralVectorDefined ∧ C.chiralAngleComputed ∧ C.diameterDefined

theorem carbon_nanotube_chirality_closed_from_evidence
    (C : CarbonNanotubeChirality) (E : CarbonNanotubeChiralityEvidence C) :
    CarbonNanotubeChiralityClosed C := by
  exact And.intro E.chiralVectorDefinedClosed
    (And.intro E.chiralAngleComputedClosed E.diameterDefinedClosed)

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
