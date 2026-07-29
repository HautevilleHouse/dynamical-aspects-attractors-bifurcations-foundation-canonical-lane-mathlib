import DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure PhaseSpacePackage where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  flowMap : stateSpace → stateSpace
  invariantMeasure : Prop
  ergodicity : Prop

structure PhaseSpaceEvidence (P : PhaseSpacePackage) where
  invariantMeasureClosed : P.invariantMeasure
  ergodicityClosed : P.ergodicity

def PhaseSpaceClosed (P : PhaseSpacePackage) : Prop :=
  P.invariantMeasure ∧ P.ergodicity

theorem phase_space_closed_from_evidence (P : PhaseSpacePackage) (E : PhaseSpaceEvidence P) : PhaseSpaceClosed P := by
  exact And.intro E.invariantMeasureClosed E.ergodicityClosed

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse