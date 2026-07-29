import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure LyapunovStability where
  equilibriumPoint : Type u
  lyapunovFunction : (Type u → ℝ) → ℝ
  positiveDefinite : Prop
  derivativeNegative : Prop
  stabilityConclusion : Prop

def StabilityClosed (L : LyapunovStability) : Prop :=
  L.positiveDefinite ∧ L.derivativeNegative ∧ L.stabilityConclusion

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse
