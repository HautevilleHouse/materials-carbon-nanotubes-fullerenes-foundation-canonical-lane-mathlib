import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure PhaseDiagram where
  temperatureRange : Type
  pressureRange : Type
  phases : Type
  phaseBoundaries : Type
  temperatureRangeDefined : Prop
  pressureRangeDefined : Prop
  phasesIdentified : Prop
  phaseBoundariesMapped : Prop

structure PhaseDiagramEvidence (P : PhaseDiagram) where
  temperatureRangeDefinedClosed : P.temperatureRangeDefined
  pressureRangeDefinedClosed : P.pressureRangeDefined
  phasesIdentifiedClosed : P.phasesIdentified
  phaseBoundariesMappedClosed : P.phaseBoundariesMapped

def PhaseDiagramClosed (P : PhaseDiagram) : Prop :=
  P.temperatureRangeDefined ∧ P.pressureRangeDefined ∧
  P.phasesIdentified ∧ P.phaseBoundariesMapped

theorem phase_diagram_closed_from_evidence (P : PhaseDiagram)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeDefinedClosed
    (And.intro E.pressureRangeDefinedClosed
      (And.intro E.phasesIdentifiedClosed E.phaseBoundariesMappedClosed))

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
