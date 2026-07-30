import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure CrystalLattice where
  bravaisVectors : Type u
  unitCellVolume : Prop
  symmetryGroup : Type v
  latticeParameters : Prop
  bravaisVectorsDefined : bravaisVectors
  unitCellVolumeTerm : unitCellVolume
  symmetryGroupTerm : symmetryGroup
  latticeParametersTerm : latticeParameters

theorem lattice_defined_from_structure (L : CrystalLattice) : L.latticeParameters := by
  exact L.latticeParametersTerm

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse