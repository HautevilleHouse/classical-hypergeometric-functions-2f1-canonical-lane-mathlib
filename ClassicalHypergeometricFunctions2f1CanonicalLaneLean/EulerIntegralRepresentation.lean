import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure EulerIntegralRepresentation where
  integrandDefined : Prop
  contourSpecified : Prop
  integralConverges : Prop
  equality2F1Proved : Prop

def eulerRepresentationClosed (e : EulerIntegralRepresentation) : Prop :=
  e.integrandDefined ∧ e.contourSpecified ∧ e.integralConverges ∧ e.equality2F1Proved

structure EulerRepresentationEvidence (e : EulerIntegralRepresentation) where
  integrandClosed : e.integrandDefined
  contourClosed : e.contourSpecified
  convergenceClosed : e.integralConverges
  equalityClosed : e.equality2F1Proved

theorem euler_representation_closed_from_evidence (e : EulerIntegralRepresentation)
    (E : EulerRepresentationEvidence e) : eulerRepresentationClosed e := by
  exact And.intro E.integrandClosed (And.intro E.contourClosed (And.intro E.convergenceClosed E.equalityClosed))

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse