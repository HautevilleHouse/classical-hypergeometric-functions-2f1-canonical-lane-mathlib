import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure HypergeometricSeries (a b c : ℂ) where
  z : ℂ
  radiusOfConvergence : ℝ
  terms : ℕ → ℂ
  sum : ℂ
  pochhammerProduct : ℕ → ℂ
  pochhammerProductDefined : ∀ n : ℕ, pochhammerProduct n = (pochhammer a n * pochhammer b n) / (pochhammer c n * (Nat.factorial n : ℂ))
  sumDefined : sum = ∑' (n : ℕ), pochhammerProduct n * z ^ n
  radiusOfConvergencePositive : radiusOfConvergence > 0

structure HypergeometricSeriesEvidence (s : HypergeometricSeries a b c) where
  radiusOfConvergencePositiveClosed : s.radiusOfConvergencePositive
  sumConverges : summable (λ n : ℕ => s.pochhammerProduct n * s.z ^ n)
  sumDefinedClosed : s.sum = (tsum (λ n : ℕ => s.pochhammerProduct n * s.z ^ n))

def HypergeometricSeriesClosed (s : HypergeometricSeries a b c) : Prop :=
  s.radiusOfConvergencePositive ∧
  (∃ (sum : ℂ), s.sum = sum ∧ sum = (tsum (λ n : ℕ => s.pochhammerProduct n * s.z ^ n)))

theorem hypergeometric_series_closed_from_evidence (s : HypergeometricSeries a b c)
    (e : HypergeometricSeriesEvidence s) : HypergeometricSeriesClosed s := by
  refine And.intro e.radiusOfConvergencePositiveClosed ?_
  refine Exists.intro (tsum (λ n : ℕ => s.pochhammerProduct n * s.z ^ n)) ?_
  exact And.intro e.sumDefinedClosed rfl

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse
