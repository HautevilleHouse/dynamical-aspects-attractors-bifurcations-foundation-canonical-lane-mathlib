import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure CenterManifoldReduction where
  originalSystem : Type u → Type u
  centerManifold : Set (Type u)
  reducedSystem : Type u → Type u
  topologicalEquivalence : Prop
  stabilityPreserved : Prop
  bifurcationPreserved : Prop

def CenterManifoldClosed (C : CenterManifoldReduction) : Prop :=
  C.topologicalEquivalence ∧ C.stabilityPreserved ∧ C.bifurcationPreserved

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse
