import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure AdmittedTheoremObject where
  sourceKey : String
  theoremObject : String
  embeddingWitness : Prop
  cohomologicalGate : Prop
  localIsomorphismChecked : Bool
  globalEmbeddingChecked : Bool
  classicalBoundaryCarried : Bool

default instance : Inhabited AdmittedTheoremObject := ⟨{
  sourceKey := "",
  theoremObject := "",
  embeddingWitness := True,
  cohomologicalGate := True,
  localIsomorphismChecked := false,
  globalEmbeddingChecked := false,
  classicalBoundaryCarried := false
}⟩

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

default instance : Inhabited AdmissibleClass := ⟨{
  object := default,
  endpointSatisfied := True,
  remainderRecorded := True,
  gateWitness := Or.inl True.intro
}⟩

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse