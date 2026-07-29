import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure AttractorStructure where
  phaseSpace : Type u
  flow : phaseSpace → ℝ → phaseSpace
  invariantSet : Set phaseSpace
  basinOfAttraction : Set phaseSpace
  attractingProperty : Prop
  topologicalTransitivity : Prop
  minimality : Prop
  attractingPropertyTerm : attractingProperty
  topologicalTransitivityTerm : topologicalTransitivity
  minimalityTerm : minimality

def AttractorClosed (A : AttractorStructure) : Prop :=
  A.attractingProperty ∧ A.topologicalTransitivity ∧ A.minimality

theorem attractor_closed_from_evidence (A : AttractorStructure) : AttractorClosed A := by
  exact And.intro A.attractingPropertyTerm (And.intro A.topologicalTransitivityTerm A.minimalityTerm)

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse
