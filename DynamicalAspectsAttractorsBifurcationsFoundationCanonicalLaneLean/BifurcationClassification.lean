import DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean.AttractorExistence

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure BifurcationClassificationPackage {G : FlowDynamicalPackage}
    {F : PhaseSpacePackage G} {A : AttractorExistencePackage F}
    (P : ParameterSpacePackage) where
  bifurcationValuesIsolated : Prop
  genericPersistence : Prop
  localBifurcationTypesClassified : Prop
  codimensionAccounted : Prop

structure BifurcationClassificationEvidence {G : FlowDynamicalPackage}
    {F : PhaseSpacePackage G} {A : AttractorExistencePackage F}
    {P : ParameterSpacePackage} (B : BifurcationClassificationPackage P) where
  bifurcationValuesIsolatedClosed : B.bifurcationValuesIsolated
  genericPersistenceClosed : B.genericPersistence
  localBifurcationTypesClassifiedClosed : B.localBifurcationTypesClassified
  codimensionAccountedClosed : B.codimensionAccounted

def BifurcationClassificationClosed {G : FlowDynamicalPackage}
    {F : PhaseSpacePackage G} {A : AttractorExistencePackage F}
    {P : ParameterSpacePackage} (B : BifurcationClassificationPackage P) : Prop :=
  B.bifurcationValuesIsolated ∧ B.genericPersistence ∧
  B.localBifurcationTypesClassified ∧ B.codimensionAccounted

theorem bifurcation_classification_closed_from_evidence
    {G : FlowDynamicalPackage} {F : PhaseSpacePackage G}
    {A : AttractorExistencePackage F} {P : ParameterSpacePackage}
    (B : BifurcationClassificationPackage P) (E : BifurcationClassificationEvidence B) :
    BifurcationClassificationClosed B := by
  exact And.intro E.bifurcationValuesIsolatedClosed
    (And.intro E.genericPersistenceClosed
      (And.intro E.localBifurcationTypesClassifiedClosed E.codimensionAccountedClosed))

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse