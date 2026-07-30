import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperature : Type u
  pressure : Type v
  carbonPhaseBoundary : Prop
  diamondGraphiteTransition : Prop
  nanotubeStabilityRegion : Prop
  fullereneSublimation : Prop
  phaseDiagramClosed : Prop
  phaseDiagramClosedTerm : phaseDiagramClosed

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  carbonPhaseBoundaryClosed : P.carbonPhaseBoundary
  diamondGraphiteTransitionClosed : P.diamondGraphiteTransition
  nanotubeStabilityRegionClosed : P.nanotubeStabilityRegion
  fullereneSublimationClosed : P.fullereneSublimation

def PhaseDiagramsClosed (P : PhaseDiagramPackage) : Prop :=
  P.carbonPhaseBoundary ∧ P.diamondGraphiteTransition ∧ P.nanotubeStabilityRegion ∧ P.fullereneSublimation

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramsClosed P := by
  exact And.intro E.carbonPhaseBoundaryClosed
    (And.intro E.diamondGraphiteTransitionClosed
      (And.intro E.nanotubeStabilityRegionClosed E.fullereneSublimationClosed))

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse