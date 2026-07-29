import DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure PhaseSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  phaseSpace : PhaseSpace
  compactAttractorExists : Prop
  bifurcationPointIsolated : Prop
  conclusion : compactAttractorExists ∧ bifurcationPointIsolated

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.conclusion

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse