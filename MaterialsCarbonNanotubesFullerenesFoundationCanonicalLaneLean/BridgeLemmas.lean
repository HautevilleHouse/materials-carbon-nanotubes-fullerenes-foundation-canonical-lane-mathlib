import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.crystallographyClosed ∧ A.elasticityFractureClosed ∧ A.phaseDiagramsClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.crystallographyClosedTerm (And.intro A.elasticityFractureClosedTerm A.phaseDiagramsClosedTerm)

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse