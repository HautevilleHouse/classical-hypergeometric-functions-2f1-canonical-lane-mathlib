import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1CanonicalLaneLean

structure ContiguousRelations where
  threeTermRelation : Prop
  contiguousOperatorDefined : Prop
  recurrenceProved : Prop

def contiguousRelationsClosed (c : ContiguousRelations) : Prop :=
  c.threeTermRelation ∧ c.contiguousOperatorDefined ∧ c.recurrenceProved

structure ContiguousRelationsEvidence (c : ContiguousRelations) where
  threeTermClosed : c.threeTermRelation
  operatorClosed : c.contiguousOperatorDefined
  recurrenceClosed : c.recurrenceProved

theorem contiguous_relations_closed_from_evidence (c : ContiguousRelations) (E : ContiguousRelationsEvidence c) :
    contiguousRelationsClosed c := by
  exact And.intro E.threeTermClosed (And.intro E.operatorClosed E.recurrenceClosed)

end ClassicalHypergeometricFunctions2f1CanonicalLaneLean
end HautevilleHouse