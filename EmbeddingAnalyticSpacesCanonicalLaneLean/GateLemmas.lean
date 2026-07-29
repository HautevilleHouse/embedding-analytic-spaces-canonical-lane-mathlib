import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingAnalyticSpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse