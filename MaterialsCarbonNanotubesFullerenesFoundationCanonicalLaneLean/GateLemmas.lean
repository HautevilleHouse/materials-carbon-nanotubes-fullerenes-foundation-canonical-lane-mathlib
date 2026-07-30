import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.nanotubeElectronicPropertiesClosed ∨ A.fullereneChemistryClosed

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse