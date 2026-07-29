import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure MonodromyPackage where
  monodromyGroup : Type
  monodromyRepresentation : Type
  localMonodromyMatrices : List (Matrix ℂ ℂ)
  monodromyDefined : Prop
  schlesingerTransform : Prop

structure MonodromyEvidence (M : MonodromyPackage) where
  monodromyDefinedClosed : M.monodromyDefined
  schlesingerTransformClosed : M.schlesingerTransform

def MonodromyClosed (M : MonodromyPackage) : Prop :=
  M.monodromyDefined ∧ M.schlesingerTransform

theorem monodromy_closed_from_evidence (M : MonodromyPackage) (E : MonodromyEvidence M) : MonodromyClosed M := by
  exact And.intro E.monodromyDefinedClosed E.schlesingerTransformClosed

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse