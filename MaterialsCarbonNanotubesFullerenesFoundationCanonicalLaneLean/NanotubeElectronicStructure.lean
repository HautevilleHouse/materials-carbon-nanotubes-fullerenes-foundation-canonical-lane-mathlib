import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure NanotubeElectronicStructure where
  chiralVector : Type u
  bandGap : Prop
  metallicity : Prop
  densityOfStates : Prop
  chiralVectorTerm : chiralVector
  bandGapTerm : bandGap
  metallicityTerm : metallicity
  densityOfStatesTerm : densityOfStates

theorem nanotube_electronics_closed (N : NanotubeElectronicStructure) : N.bandGap ∧ N.metallicity := by
  exact And.intro N.bandGapTerm N.metallicityTerm

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse