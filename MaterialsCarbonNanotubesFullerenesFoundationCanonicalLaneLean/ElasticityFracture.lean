import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean

structure ElasticityFracturePackage where
  elasticModulus : Type u
  fractureToughness : Type v
  stressStrainRelation : Prop
  crackPropagation : Prop
  nanotubeTensileStrength : Prop
  fullereneCompression : Prop
  elasticityFractureClosed : Prop
  elasticityFractureClosedTerm : elasticityFractureClosed

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  crackPropagationClosed : E.crackPropagation
  nanotubeTensileStrengthClosed : E.nanotubeTensileStrength
  fullereneCompressionClosed : E.fullereneCompression

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.stressStrainRelation ∧ E.crackPropagation ∧ E.nanotubeTensileStrength ∧ E.fullereneCompression

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage) (Ev : ElasticityFractureEvidence E) :
    ElasticityFractureClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.crackPropagationClosed
      (And.intro Ev.nanotubeTensileStrengthClosed Ev.fullereneCompressionClosed))

end MaterialsCarbonNanotubesFullerenesFoundationCanonicalLaneLean
end HautevilleHouse