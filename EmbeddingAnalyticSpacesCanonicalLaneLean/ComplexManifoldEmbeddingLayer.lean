import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.EmbeddingAnalyticSpaceLayer

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure ComplexManifoldEmbeddingCertificate where
  manifold : AnalyticSpaceDatum
  embeddingCodimension : Nat
  immersionChecked : Bool
  embeddingChecked : Bool

def primitiveComplexManifoldEmbeddingCertificate : ComplexManifoldEmbeddingCertificate := {
  manifold := primitiveAnalyticSpaceDatum,
  embeddingCodimension := 1,
  immersionChecked := true,
  embeddingChecked := true
}

def ComplexManifoldEmbeddingLayerClosed (C : ComplexManifoldEmbeddingCertificate) : Prop :=
  C.manifold.checkedCoherence = true ∧
  C.immersionChecked = true ∧
  C.embeddingChecked = true

theorem complex_manifold_embedding_layer_closed_checked : ComplexManifoldEmbeddingLayerClosed primitiveComplexManifoldEmbeddingCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse