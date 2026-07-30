import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure PhaseDiagramAllotropy where
  carbonPhases : Type u
  phaseTransitions : Prop
  temperaturePressureRange : Prop
  phaseBoundaries : Prop
  phaseTransitionsTerm : phaseTransitions
  temperaturePressureRangeTerm : temperaturePressureRange
  phaseBoundariesTerm : phaseBoundaries

theorem phase_diagram_closed (P : PhaseDiagramAllotropy) : P.phaseTransitions ∧ P.temperaturePressureRange := by
  exact And.intro P.phaseTransitionsTerm P.temperaturePressureRangeTerm

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse