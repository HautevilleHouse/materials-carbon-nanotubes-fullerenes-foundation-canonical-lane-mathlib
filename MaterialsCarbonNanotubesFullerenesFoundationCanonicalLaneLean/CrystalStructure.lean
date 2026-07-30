import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure CrystalStructure where
  bravaisLattice : Type
  basisAtoms : Type
  latticeVectors : Type
  bravaisLatticeAssigned : Prop
  basisAtomsPlaced : Prop
  latticeVectorsDefined : Prop

structure CrystalStructureEvidence (C : CrystalStructure) where
  bravaisLatticeAssignedClosed : C.bravaisLatticeAssigned
  basisAtomsPlacedClosed : C.basisAtomsPlaced
  latticeVectorsDefinedClosed : C.latticeVectorsDefined

def CrystalStructureClosed (C : CrystalStructure) : Prop :=
  C.bravaisLatticeAssigned ∧ C.basisAtomsPlaced ∧ C.latticeVectorsDefined

theorem crystal_structure_closed_from_evidence (C : CrystalStructure)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeAssignedClosed
    (And.intro E.basisAtomsPlacedClosed E.latticeVectorsDefinedClosed)

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
