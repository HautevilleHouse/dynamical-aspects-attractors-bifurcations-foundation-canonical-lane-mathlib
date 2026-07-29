import DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse