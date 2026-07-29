import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure GaussSummationPackage where
  a b : ℂ
  c : ℂ
  F_at_1 : ℂ
  gammaFunctionValue : ℂ
  gaussFormula : Prop
  convergenceCondition : Prop
  gammaIdentity : Prop

def GaussSummationClosed (G : GaussSummationPackage) : Prop :=
  G.gaussFormula ∧ G.convergenceCondition ∧ G.gammaIdentity

theorem gauss_summation_closed_from_evidence (G : GaussSummationPackage)
    (hG : G.gaussFormula) (hC : G.convergenceCondition) (hI : G.gammaIdentity) :
    GaussSummationClosed G :=
  And.intro hG (And.intro hC hI)

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse
