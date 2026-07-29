import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure HypergeometricSeries where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  radiusOfConvergence : ℂ
  seriesTerm : ℕ → ℂ
  sumDefined : Prop

structure 2F1AdmittedObject where
  pFq : HypergeometricSeries
  analyticContinuationDefined : Prop
  monodromyDefined : Prop
  conclusion : analyticContinuationDefined ∧ monodromyDefined

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse