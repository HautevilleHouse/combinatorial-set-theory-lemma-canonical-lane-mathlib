import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure CardinalInvariantPackage (A : AdmissibleClass) where
  cardinalInvariant : Cardinal
  invariantBound : Prop
  invariantRelationToLemma : Prop

structure CardinalInvariantEvidence (A : AdmissibleClass) (C : CardinalInvariantPackage A) where
  invariantBoundClosed : C.invariantBound
  invariantRelationToLemmaClosed : C.invariantRelationToLemma

def CardinalInvariantClosed (A : AdmissibleClass) (C : CardinalInvariantPackage A) : Prop :=
  C.invariantBound ∧ C.invariantRelationToLemma

theorem cardinal_invariant_closed_from_evidence (A : AdmissibleClass) (C : CardinalInvariantPackage A) (E : CardinalInvariantEvidence A C) :
    CardinalInvariantClosed A C := by
  exact And.intro E.invariantBoundClosed E.invariantRelationToLemmaClosed

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse