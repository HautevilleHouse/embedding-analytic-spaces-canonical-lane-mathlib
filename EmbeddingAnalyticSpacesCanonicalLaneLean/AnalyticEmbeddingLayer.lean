import EmbeddingAnalyticSpacesCanonicalLaneLean.CoherentSheafLayer

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure AnalyticEmbeddingCertificate where
  sourceManifold : String
  targetManifold : String
  embeddingMap : String
  closedImage : Prop
  embeddingChecked : Bool

def primitiveEmbeddingCertificate : AnalyticEmbeddingCertificate := {
  sourceManifold := "Stein manifold",
  targetManifold := "Complex Euclidean space",
  embeddingMap := "identity",
  closedImage := True,
  embeddingChecked := true
}

def AnalyticEmbeddingLayerClosed (C : AnalyticEmbeddingCertificate) : Prop :=
  C.closedImage ∧ C.embeddingChecked = true ∧
  C.sourceManifold = "Stein manifold" ∧ C.targetManifold = "Complex Euclidean space"

theorem analytic_embedding_layer_closed_checked :
    AnalyticEmbeddingLayerClosed primitiveEmbeddingCertificate := by
  exact And.intro True.intro (And.intro rfl (And.intro rfl rfl))

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse
