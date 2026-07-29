import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure HypergeometricDifferentialEquation where
  differentialEquationDefined : Prop
  twoF1Solution : Prop
  frobeniusBasis : Prop
  wronskianComputed : Prop

def diffEquationClosed (d : HypergeometricDifferentialEquation) : Prop :=
  d.differentialEquationDefined ∧ d.twoF1Solution ∧ d.frobeniusBasis ∧ d.wronskianComputed

structure DiffEquationEvidence (d : HypergeometricDifferentialEquation) where
  eqClosed : d.differentialEquationDefined
  solutionClosed : d.twoF1Solution
  frobeniusClosed : d.frobeniusBasis
  wronskianClosed : d.wronskianComputed

theorem diff_equation_closed_from_evidence (d : HypergeometricDifferentialEquation) (E : DiffEquationEvidence d) :
    diffEquationClosed d := by
  exact And.intro E.eqClosed (And.intro E.solutionClosed (And.intro E.frobeniusClosed E.wronskianClosed))

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse