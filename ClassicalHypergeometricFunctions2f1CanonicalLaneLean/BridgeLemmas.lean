import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Hypergeometric2F1WitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse