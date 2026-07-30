import canonicalLaneMathlib.AdmissibleClass

/-!
# Carbon Phase Diagram Package

This module captures the known phases of carbon (diamond, graphite, fullerenes,
nanotubes) and their stability regions in pressure-temperature space.
-/

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundation

structure CarbonPhase where
  phaseName : String
  density : Float
  formationEnthalpy : Float
  stabilityRange : Float × Float

structure PhaseTransition where
  fromPhase : CarbonPhase
  toPhase : CarbonPhase
  criticalTemperature : Float
  criticalPressure : Float

structure PhaseDiagramEvidence where
  diamondStable : Bool
  graphiteStable : Bool
  nanotubeStable : Bool
  fullereneStable : Bool
  transitionsRecorded : List PhaseTransition

def CarbonPhaseDiagramClosed (E : PhaseDiagramEvidence) : Prop :=
  (E.diamondStable ∧ E.graphiteStable ∧ E.nanotubeStable ∧ E.fullereneStable) ∧
  E.transitionsRecorded.length ≥ 1

theorem phase_diagram_closed (E : PhaseDiagramEvidence) 
    (hphases : E.diamondStable ∧ E.graphiteStable ∧ E.nanotubeStable ∧ E.fullereneStable)
    (htrans : E.transitionsRecorded.length ≥ 1) : CarbonPhaseDiagramClosed E := by
  exact And.intro hphases htrans

end MaterialsCarbonNanotubesFullerenesFoundation
end HautevilleHouse
