import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure NanotubeChiralityPackage where
  chiralVector : ℕ × ℕ
  diameter : ℝ
  metallicOrSemiconducting : Prop
  rollingVector : Prop

def NanotubeChiralityClosed (N : NanotubeChiralityPackage) : Prop :=
  N.metallicOrSemiconducting ∧ N.rollingVector

theorem nanotube_chirality_closed_from_evidence (N : NanotubeChiralityPackage)
    (h1 : N.metallicOrSemiconducting) (h2 : N.rollingVector) : NanotubeChiralityClosed N := by
  exact And.intro h1 h2

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse