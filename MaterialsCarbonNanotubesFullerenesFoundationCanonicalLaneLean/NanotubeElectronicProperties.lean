import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure NanotubeElectronicPropertiesPackage where
  bandStructure : Type u
  chiralityIndex : Nat
  metallicSemiconducting : Prop
  densityOfStates : Prop
  quantumTransport : Prop
  electronicClosed : Prop
  electronicClosedTerm : electronicClosed

structure NanotubeElectronicPropertiesEvidence (N : NanotubeElectronicPropertiesPackage) where
  metallicSemiconductingClosed : N.metallicSemiconducting
  densityOfStatesClosed : N.densityOfStates
  quantumTransportClosed : N.quantumTransport

def NanotubeElectronicPropertiesClosed (N : NanotubeElectronicPropertiesPackage) : Prop :=
  N.metallicSemiconducting ∧ N.densityOfStates ∧ N.quantumTransport

theorem nanotube_electronic_properties_closed_from_evidence (N : NanotubeElectronicPropertiesPackage) (E : NanotubeElectronicPropertiesEvidence N) :
    NanotubeElectronicPropertiesClosed N := by
  exact And.intro E.metallicSemiconductingClosed
    (And.intro E.densityOfStatesClosed E.quantumTransportClosed)

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse