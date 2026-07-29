import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure BifurcationParameter where
  parameterSpace : Type u
  nominalValue : parameterSpace
  variationRange : Set parameterSpace

def BifurcationAnalysis where
  parameter : BifurcationParameter
  bifurcationPoints : Set BifurcationParameter.parameterSpace
  criticalityClassification : Prop
  normalFormDerived : Prop
  structuralStability : Prop
  criticalityClassificationTerm : criticalityClassification
  normalFormDerivedTerm : normalFormDerived
  structuralStabilityTerm : structuralStability

def BifurcationAnalysisClosed (A : BifurcationAnalysis) : Prop :=
  A.criticalityClassification ∧ A.normalFormDerived ∧ A.structuralStability

theorem bifurcation_analysis_closed_from_evidence (A : BifurcationAnalysis) : BifurcationAnalysisClosed A := by
  exact And.intro A.criticalityClassificationTerm (And.intro A.normalFormDerivedTerm A.structuralStabilityTerm)

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse
