import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure GaussHypergeometricSeries where
  a : ℂ
  b : ℂ
  c : ℂ
  radiusOfConvergence : Prop
  analyticContinuationDefined : Prop
  monodromyData : Prop

def gaussSeriesClosed (s : GaussHypergeometricSeries) : Prop :=
  s.radiusOfConvergence ∧ s.analyticContinuationDefined ∧ s.monodromyData

structure GaussSeriesEvidence (s : GaussHypergeometricSeries) where
  radiusClosed : s.radiusOfConvergence
  analyticClosed : s.analyticContinuationDefined
  monodromyClosed : s.monodromyData

theorem gauss_series_closed_from_evidence (s : GaussHypergeometricSeries) (E : GaussSeriesEvidence s) :
    gaussSeriesClosed s := by
  exact And.intro E.radiusClosed (And.intro E.analyticClosed E.monodromyClosed)

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse