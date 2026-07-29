import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  attractorExists : Prop
  bifurcationClassified : Prop
  foundationClosed : Prop
  conclusion : foundationClosed

structure DynamicalEndgameState where
  object : DynamicalAdmittedObject

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.foundationClosed

end DynamicalAspectsAttractorsBifurcationsFoundationCanonicalLaneLean
end HautevilleHouse