import DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean.FlowPackage

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure AttractorExistencePackage {G : FlowDynamicalPackage}
    (F : PhaseSpacePackage G) where
  globalAttractorExists : Prop
  basinOfAttractionDefined : Prop
  lyapunovFunctionalExistence : Prop
  attractorCompactInvariant : Prop

structure AttractorExistenceEvidence {G : FlowDynamicalPackage}
    {F : PhaseSpacePackage G} (A : AttractorExistencePackage F) where
  globalAttractorExistsClosed : A.globalAttractorExists
  basinOfAttractionDefinedClosed : A.basinOfAttractionDefined
  lyapunovFunctionalExistenceClosed : A.lyapunovFunctionalExistence
  attractorCompactInvariantClosed : A.attractorCompactInvariant

def AttractorExistenceClosed {G : FlowDynamicalPackage}
    {F : PhaseSpacePackage G} (A : AttractorExistencePackage F) : Prop :=
  A.globalAttractorExists ∧ A.basinOfAttractionDefined ∧
  A.lyapunovFunctionalExistence ∧ A.attractorCompactInvariant

theorem attractor_existence_closed_from_evidence
    {G : FlowDynamicalPackage} {F : PhaseSpacePackage G}
    (A : AttractorExistencePackage F) (E : AttractorExistenceEvidence A) :
    AttractorExistenceClosed A := by
  exact And.intro E.globalAttractorExistsClosed
    (And.intro E.basinOfAttractionDefinedClosed
      (And.intro E.lyapunovFunctionalExistenceClosed E.attractorCompactInvariantClosed))

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse