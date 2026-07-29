import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure PhaseSpaceDynamicsPackage where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  flowMap : stateSpace → ℝ → stateSpace
  groupAction : Prop
  continuity : Prop
  differentiability : Prop

structure PhaseSpaceDynamicsEvidence (P : PhaseSpaceDynamicsPackage) where
  groupActionClosed : P.groupAction
  continuityClosed : P.continuity
  differentiabilityClosed : P.differentiability

def PhaseSpaceDynamicsClosed (P : PhaseSpaceDynamicsPackage) : Prop :=
  P.groupAction ∧ P.continuity ∧ P.differentiability

theorem phase_space_dynamics_closed_from_evidence (P : PhaseSpaceDynamicsPackage)
    (E : PhaseSpaceDynamicsEvidence P) : PhaseSpaceDynamicsClosed P := by
  exact And.intro E.groupActionClosed (And.intro E.continuityClosed E.differentiabilityClosed)

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse