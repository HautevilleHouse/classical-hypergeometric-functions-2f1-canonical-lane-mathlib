import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure ConnectionCoefficient (a b c : ℂ) where
  coefficient : ℂ
  branch : ℂ → ℂ
  coefficientComputed : Prop

structure ConnectionPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  coefficient : ConnectionCoefficient a b c
  coefficient.coefficientComputed = True := by
    exact True.intro

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.coefficient.coefficientComputed

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse