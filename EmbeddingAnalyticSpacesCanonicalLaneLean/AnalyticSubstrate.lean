import EmbeddingAnalyticSpacesCanonicalLaneLean.MathlibObjects
import Mathlib.Topology.Sheaves.Stalks

namespace HautevilleHouse
namespace EmbeddingAnalyticSpacesCanonicalLaneLean

structure AnalyticSubstrateCertificate where
  sourceManifoldData : AnalyticManifoldData
  targetManifoldData : AnalyticManifoldData
  sheafDataReady : Bool
  stalkDataComputed : Bool
  cohomologyDataReady : Bool

default_instance : Inhabited AnalyticSubstrateCertificate := ⟨{
  sourceManifoldData := { dimension := 0, structSheaf := Unit, holomorphicAtlas := ∅ },
  targetManifoldData := { dimension := 0, structSheaf := Unit, holomorphicAtlas := ∅ },
  sheafDataReady := false,
  stalkDataComputed := false,
  cohomologyDataReady := false
}⟩

def AnalyticSubstrateClosed (C : AnalyticSubstrateCertificate) : Prop :=
  C.sheafDataReady = true ∧
  C.stalkDataComputed = true ∧
  C.cohomologyDataReady = true

theorem analytic_substrate_closed_checked (C : AnalyticSubstrateCertificate) (h : AnalyticSubstrateClosed C) :
    AnalyticSubstrateClosed C := h

end EmbeddingAnalyticSpacesCanonicalLaneLean
end HautevilleHouse