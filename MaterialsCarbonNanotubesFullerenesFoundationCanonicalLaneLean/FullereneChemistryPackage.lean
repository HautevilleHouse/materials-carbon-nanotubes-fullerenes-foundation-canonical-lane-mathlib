import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure FullereneChemistryPackage where
  cageStructure : Type u
  functionalization : Type v
  endohedralDoping : Prop
  exohedralAddition : Prop
  reactivityPattern : Prop
  fullereneChemistryClosed : Prop
  fullereneChemistryClosedTerm : fullereneChemistryClosed

structure FullereneChemistryEvidence (F : FullereneChemistryPackage) where
  endohedralDopingClosed : F.endohedralDoping
  exohedralAdditionClosed : F.exohedralAddition
  reactivityPatternClosed : F.reactivityPattern

def FullereneChemistryClosed (F : FullereneChemistryPackage) : Prop :=
  F.endohedralDoping ∧ F.exohedralAddition ∧ F.reactivityPattern

theorem fullerene_chemistry_closed_from_evidence (F : FullereneChemistryPackage) (E : FullereneChemistryEvidence F) :
    FullereneChemistryClosed F := by
  exact And.intro E.endohedralDopingClosed
    (And.intro E.exohedralAdditionClosed E.reactivityPatternClosed)

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse