import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCell : Type v
  symmetryGroup : Type w
  carbonBinding : Prop
  grapheneHexagonal : Prop
  nanotubeChirality : Prop
  fullereneIcosahedral : Prop
  crystallographyClosed : Prop
  crystallographyClosedTerm : crystallographyClosed

structure CrystallographyEvidence (C : CrystallographyPackage) where
  carbonBindingClosed : C.carbonBinding
  grapheneHexagonalClosed : C.grapheneHexagonal
  nanotubeChiralityClosed : C.nanotubeChirality
  fullereneIcosahedralClosed : C.fullereneIcosahedral

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.carbonBinding ∧ C.grapheneHexagonal ∧ C.nanotubeChirality ∧ C.fullereneIcosahedral

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.carbonBindingClosed
    (And.intro E.grapheneHexagonalClosed
      (And.intro E.nanotubeChiralityClosed E.fullereneIcosahedralClosed))

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse