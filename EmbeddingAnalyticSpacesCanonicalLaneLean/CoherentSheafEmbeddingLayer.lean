import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.EmbeddingAnalyticSpaceLayer

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure CoherentSheafEmbeddingCertificate where
  analyticSpace : AnalyticSpaceDatum
  coherentSheaf : String
  globalSectionGenerators : Nat
  embeddingDimension : Nat
  globallyGenerated : Bool

def primitiveCoherentSheafEmbeddingCertificate : CoherentSheafEmbeddingCertificate := {
  analyticSpace := primitiveAnalyticSpaceDatum,
  coherentSheaf := "O_X_module",
  globalSectionGenerators := 1,
  embeddingDimension := 1,
  globallyGenerated := true
}

def CoherentSheafEmbeddingLayerClosed (C : CoherentSheafEmbeddingCertificate) : Prop :=
  C.analyticSpace.checkedCoherence = true ∧
  C.globallyGenerated = true

theorem coherent_sheaf_embedding_layer_closed_checked : CoherentSheafEmbeddingLayerClosed primitiveCoherentSheafEmbeddingCertificate := by
  exact And.intro rfl rfl

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse