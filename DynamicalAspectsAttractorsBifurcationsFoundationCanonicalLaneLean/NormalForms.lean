import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure NormalFormsPackage (P : PhaseSpaceDynamicsPackage) where
  linearization : P.stateSpace → P.stateSpace
  centerManifold : Set P.stateSpace
  normalForm : P.stateSpace → P.stateSpace
  equivalence : Prop
  reduction : Prop

structure NormalFormsEvidence {P : PhaseSpaceDynamicsPackage} (N : NormalFormsPackage P) where
  equivalenceClosed : N.equivalence
  reductionClosed : N.reduction

def NormalFormsClosed {P : PhaseSpaceDynamicsPackage} (N : NormalFormsPackage P) : Prop :=
  N.equivalence ∧ N.reduction

theorem normal_forms_closed_from_evidence {P : PhaseSpaceDynamicsPackage}
    (N : NormalFormsPackage P) (E : NormalFormsEvidence N) : NormalFormsClosed N := by
  exact And.intro E.equivalenceClosed E.reductionClosed

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse