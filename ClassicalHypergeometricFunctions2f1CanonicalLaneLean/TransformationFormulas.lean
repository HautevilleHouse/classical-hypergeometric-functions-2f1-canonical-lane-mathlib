import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure TransformationFormulasPackage where
  a b c : ℂ
  z : ℂ
  F : ℂ → ℂ → ℂ → ℂ → ℂ
  pfaffTransformation : Prop
  eulerTransformation : Prop
  landenTransformation : Prop
  quadraticTransformation : Prop

def TransformationFormulasClosed (P : TransformationFormulasPackage) : Prop :=
  P.pfaffTransformation ∧ P.eulerTransformation ∧ P.landenTransformation ∧ P.quadraticTransformation

theorem transformation_formulas_closed_from_evidence
    (P : TransformationFormulasPackage)
    (hP : P.pfaffTransformation) (hE : P.eulerTransformation)
    (hL : P.landenTransformation) (hQ : P.quadraticTransformation) : TransformationFormulasClosed P :=
  And.intro hP (And.intro hE (And.intro hL hQ))

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse
