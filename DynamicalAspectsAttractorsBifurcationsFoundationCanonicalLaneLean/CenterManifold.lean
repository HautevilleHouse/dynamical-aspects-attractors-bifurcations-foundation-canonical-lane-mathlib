import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure CenterManifoldPackage where
  vectorField : ℝ^n → ℝ^n
  equilibrium : ℝ^n
  centerSubspace : Subspace ℝ^n
  existence : Prop
  reductionPrinciple : Prop

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop :=
  C.existence ∧ C.reductionPrinciple

structure CenterManifoldEvidence (C : CenterManifoldPackage) where
  existenceClosed : C.existence
  reductionPrincipleClosed : C.reductionPrinciple

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage) (E : CenterManifoldEvidence C) :
    CenterManifoldClosed C := by
  exact And.intro E.existenceClosed E.reductionPrincipleClosed

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse