import ClassicalHypergeometricFunctions2f1CanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HypergeometricSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HypergeometricAdmittedObject where
  space : HypergeometricSpace
  complexDomain : Prop
  parametersWellDefined : Prop
  seriesConvergent : Prop
  analyticContinuation : Prop
  conclusion : analyticContinuation

structure HypergeometricEndgameState where
  object : HypergeometricAdmittedObject

def HypergeometricWitnessClosed (O : HypergeometricAdmittedObject) : Prop :=
  O.analyticContinuation

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse