import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def EmbeddingAnalyticClosure (A : AdmissibleClass) : Prop :=
  ConstrainedTheoremClosure A ∧ A.object.globalEmbeddingChecked

theorem embedding_analytic_closure_default : EmbeddingAnalyticClosure (default : AdmissibleClass) := by
  refine And.intro (constrained_theorem_closure _) ?_
  exact default.object.globalEmbeddingChecked

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse