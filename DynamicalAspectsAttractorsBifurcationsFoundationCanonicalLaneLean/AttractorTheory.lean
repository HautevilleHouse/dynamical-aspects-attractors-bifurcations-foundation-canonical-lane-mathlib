import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure AttractorTheoryPackage (P : PhaseSpaceDynamicsPackage) where
  attractorSet : Set P.stateSpace
  invariance : Prop
  attractingBasin : Prop
  limitSet : Prop
  omegaLimitSet : Prop

structure AttractorTheoryEvidence {P : PhaseSpaceDynamicsPackage} (A : AttractorTheoryPackage P) where
  invarianceClosed : A.invariance
  attractingBasinClosed : A.attractingBasin
  limitSetClosed : A.limitSet
  omegaLimitSetClosed : A.omegaLimitSet

def AttractorTheoryClosed {P : PhaseSpaceDynamicsPackage} (A : AttractorTheoryPackage P) : Prop :=
  A.invariance ∧ A.attractingBasin ∧ A.limitSet ∧ A.omegaLimitSet

theorem attractor_theory_closed_from_evidence {P : PhaseSpaceDynamicsPackage}
    (A : AttractorTheoryPackage P) (E : AttractorTheoryEvidence A) : AttractorTheoryClosed A := by
  exact And.intro E.invarianceClosed (And.intro E.attractingBasinClosed
    (And.intro E.limitSetClosed E.omegaLimitSetClosed))

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse