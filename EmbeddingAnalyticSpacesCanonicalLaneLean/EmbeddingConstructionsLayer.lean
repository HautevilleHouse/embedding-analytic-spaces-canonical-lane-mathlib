import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.SteinSpaceEmbeddingLayer
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.ComplexManifoldEmbeddingLayer
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.CartanTheoremBLayer
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.CoherentSheafEmbeddingLayer

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure EmbeddingConstructionCertificate where
  steinLayer : SteinEmbeddingCertificate
  manifoldLayer : ComplexManifoldEmbeddingCertificate
  cartanLayer : CartanTheoremBCertificate
  sheafLayer : CoherentSheafEmbeddingCertificate
  constructionClosed : Bool

def primitiveEmbeddingConstructionCertificate : EmbeddingConstructionCertificate := {
  steinLayer := primitiveSteinEmbeddingCertificate,
  manifoldLayer := primitiveComplexManifoldEmbeddingCertificate,
  cartanLayer := primitiveCartanTheoremBCertificate,
  sheafLayer := primitiveCoherentSheafEmbeddingCertificate,
  constructionClosed := true
}

def EmbeddingConstructionLayerClosed (C : EmbeddingConstructionCertificate) : Prop :=
  SteinEmbeddingLayerClosed C.steinLayer ∧
  ComplexManifoldEmbeddingLayerClosed C.manifoldLayer ∧
  CartanTheoremBLayerClosed C.cartanLayer ∧
  CoherentSheafEmbeddingLayerClosed C.sheafLayer ∧
  C.constructionClosed = true

theorem embedding_construction_layer_closed_checked : EmbeddingConstructionLayerClosed primitiveEmbeddingConstructionCertificate := by
  exact And.intro stein_embedding_layer_closed_checked
    (And.intro complex_manifold_embedding_layer_closed_checked
    (And.intro cartan_theorem_b_layer_closed_checked
    (And.intro coherent_sheaf_embedding_layer_closed_checked rfl)))

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse