import ClassicalHypergeometricFunctions2f1CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def hypergeometricProjection : Projection HypergeometricEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem hypergeometric_projection_idempotent (x : HypergeometricEndgameState) :
    hypergeometricProjection.toFun (hypergeometricProjection.toFun x) = hypergeometricProjection.toFun x := by
  exact hypergeometricProjection.idempotent x

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse