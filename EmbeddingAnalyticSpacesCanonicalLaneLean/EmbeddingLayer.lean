import EmbeddingAnalyticSpacesCanonicalLaneLean.AnalyticSubstrate

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure EmbeddingLayerCertificate where
  embeddingCert : EmbeddingCertificate
  sourceSubstrateReady : Bool
  targetSubstrateReady : Bool
  embeddingChecked : Bool
  embeddingSource : String
  embeddingTarget : String

default_instance : Inhabited EmbeddingLayerCertificate := ⟨{
  embeddingCert := default,
  sourceSubstrateReady := false,
  targetSubstrateReady := false,
  embeddingChecked := false,
  embeddingSource := "",
  embeddingTarget := ""
}⟩

def EmbeddingLayerClosed (C : EmbeddingLayerCertificate) : Prop :=
  C.sourceSubstrateReady = true ∧
  C.targetSubstrateReady = true ∧
  C.embeddingChecked = true ∧
  C.embeddingCert.isInjective ∧
  C.embeddingCert.isHolomorphic ∧
  C.embeddingCert.isProper ∧
  C.embeddingCert.isImmersion

theorem embedding_layer_closed_checked (C : EmbeddingLayerCertificate) (h : EmbeddingLayerClosed C) :
    EmbeddingLayerClosed C := h

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse