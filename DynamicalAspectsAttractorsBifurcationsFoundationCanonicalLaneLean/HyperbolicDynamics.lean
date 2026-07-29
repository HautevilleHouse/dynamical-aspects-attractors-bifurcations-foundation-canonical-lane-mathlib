import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure HyperbolicDynamicsPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  diffeomorphism : manifold → manifold
  hyperbolicSet : Set manifold
  invariantSplitting : Prop
  contractionExpansion : Prop

def HyperbolicDynamicsClosed (H : HyperbolicDynamicsPackage) : Prop :=
  H.invariantSplitting ∧ H.contractionExpansion

structure HyperbolicDynamicsEvidence (H : HyperbolicDynamicsPackage) where
  invariantSplittingClosed : H.invariantSplitting
  contractionExpansionClosed : H.contractionExpansion

theorem hyperbolic_dynamics_closed_from_evidence (H : HyperbolicDynamicsPackage) (E : HyperbolicDynamicsEvidence H) :
    HyperbolicDynamicsClosed H := by
  exact And.intro E.invariantSplittingClosed E.contractionExpansionClosed

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse