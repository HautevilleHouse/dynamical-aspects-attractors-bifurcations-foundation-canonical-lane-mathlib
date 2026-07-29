import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean.AttractorStructure
import DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean.BifurcationAnalysis

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

def DynamicalAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem dynamical_aspects_endgame (A : AdmissibleClass) : DynamicalAdmissibleClass A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse
