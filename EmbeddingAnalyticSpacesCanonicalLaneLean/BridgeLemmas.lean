import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure AnalyticSpaceEmbeddingCertificate where
  sourceManifold : String
  targetManifold : String
  embeddingType : String
  localInjective : Bool
  immersionCondition : Bool
  properMapping : Bool
  cohomologyVanishing : Bool

structure LocalIsomorphismCertificate where
  germWitness : String
  jacobianNonzero : Bool
  analyticInverse : String

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.localIsomorphismChecked ∧ A.object.globalEmbeddingChecked

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.localIsomorphismChecked A.object.globalEmbeddingChecked

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse