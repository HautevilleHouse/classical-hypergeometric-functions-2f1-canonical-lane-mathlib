import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure MonodromyRepresentation where
  a b c : ℂ
  basepoint : ℂ
  fundamentalGroup : Type u
  representation : fundamentalGroup → GL(2, ℂ)
  monodromyMatrices : Prop
  kummerConnections : Prop
  indicialPolynomial : Prop
  fuchsianDifferentialEquation : Prop

def MonodromyClosed (M : MonodromyRepresentation) : Prop :=
  M.monodromyMatrices ∧ M.kummerConnections ∧ M.indicialPolynomial ∧ M.fuchsianDifferentialEquation

theorem monodromy_closed_from_evidence (M : MonodromyRepresentation)
    (hM : M.monodromyMatrices) (hK : M.kummerConnections)
    (hI : M.indicialPolynomial) (hF : M.fuchsianDifferentialEquation) : MonodromyClosed M :=
  And.intro hM (And.intro hK (And.intro hI hF))

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse
