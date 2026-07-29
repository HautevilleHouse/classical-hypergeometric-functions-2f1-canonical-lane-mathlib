import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure EulerIntegralPackage where
  eulerIntegralFormula : Prop
  convergenceCondition : Prop
  integralRepresentationHolds : Prop
  betaIntegralUsed : Prop

structure EulerIntegralEvidence (E : EulerIntegralPackage) where
  eulerIntegralFormulaClosed : E.eulerIntegralFormula
  convergenceConditionClosed : E.convergenceCondition
  integralRepresentationHoldsClosed : E.integralRepresentationHolds
  betaIntegralUsedClosed : E.betaIntegralUsed

def EulerIntegralClosed (E : EulerIntegralPackage) : Prop :=
  E.eulerIntegralFormula ∧ E.convergenceCondition ∧ E.integralRepresentationHolds ∧ E.betaIntegralUsed

theorem euler_integral_closed_from_evidence (E : EulerIntegralPackage) (Ev : EulerIntegralEvidence E) : EulerIntegralClosed E := by
  exact And.intro Ev.eulerIntegralFormulaClosed (And.intro Ev.convergenceConditionClosed (And.intro Ev.integralRepresentationHoldsClosed Ev.betaIntegralUsedClosed))

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse