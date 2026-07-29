import ClassicalHypergeometricFunctions2f1CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure SeriesExpansionPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  seriesDefined : Prop
  analyticContinuation : Prop
  convergenceRadius : ℝ

def SeriesExpansionClosed (S : SeriesExpansionPackage) : Prop :=
  S.seriesDefined ∧ S.analyticContinuation

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse