import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure SourceTheoremBoundary where
  claimBoundary : String
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool

def sourceTheoremBoundary : SourceTheoremBoundary := {
  claimBoundary := "Every compact analytic space can be embedded into projective space.",
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false
}

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremBoundary.theoremBoundaryOpen = true ∧
  sourceTheoremBoundary.sourceConjectureClosureClaimed = false

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  exact And.intro rfl rfl

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse