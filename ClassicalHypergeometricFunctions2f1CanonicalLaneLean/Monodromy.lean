import ClassicalHypergeometricFunctions2f1CanonicalLaneLean.IntegralRepresentations

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure MonodromyPackage where
  monodromyGroup : Prop
  riemannPEquation : Prop
  kummerConnections : Prop
  schlesingerTheorem : Prop

def MonodromyClosed (M : MonodromyPackage) : Prop :=
  M.monodromyGroup ∧ M.riemannPEquation ∧ M.kummerConnections ∧ M.schlesingerTheorem

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse