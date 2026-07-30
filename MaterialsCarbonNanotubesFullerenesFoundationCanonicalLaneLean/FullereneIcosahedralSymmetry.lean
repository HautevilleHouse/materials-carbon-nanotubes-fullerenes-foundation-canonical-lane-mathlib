import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure FullereneIcosahedralSymmetry where
  fullereneMolecule : Type
  icosahedralGroup : Type
  symmetryOperations : Type
  fullereneMoleculeDefined : Prop
  icosahedralGroupIdentified : Prop
  symmetryOperationsListed : Prop

structure FullereneIcosahedralSymmetryEvidence (F : FullereneIcosahedralSymmetry) where
  fullereneMoleculeDefinedClosed : F.fullereneMoleculeDefined
  icosahedralGroupIdentifiedClosed : F.icosahedralGroupIdentified
  symmetryOperationsListedClosed : F.symmetryOperationsListed

def FullereneIcosahedralSymmetryClosed (F : FullereneIcosahedralSymmetry) : Prop :=
  F.fullereneMoleculeDefined ∧ F.icosahedralGroupIdentified ∧
  F.symmetryOperationsListed

theorem fullerene_icosahedral_symmetry_closed_from_evidence
    (F : FullereneIcosahedralSymmetry) (E : FullereneIcosahedralSymmetryEvidence F) :
    FullereneIcosahedralSymmetryClosed F := by
  exact And.intro E.fullereneMoleculeDefinedClosed
    (And.intro E.icosahedralGroupIdentifiedClosed E.symmetryOperationsListedClosed)

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
