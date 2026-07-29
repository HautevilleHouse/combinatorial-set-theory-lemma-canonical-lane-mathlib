import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure DeltaSystemComp where
  family : Type u
  setFamily : family → Set (ℕ → ℕ)
  uncountable : ℕ → Prop
  deltaSystemExists : Prop
  rootSet : Set (ℕ → ℕ)
  pairwiseDisjoint : ∀ A B : family, A ≠ B → (setFamily A ∩ setFamily B) = rootSet
  deltaSystemExistsTerm : deltaSystemExists

structure DeltaSystemEvidence (D : DeltaSystemComp) where
  deltaSystemExistsClosed : D.deltaSystemExists
  pairwiseDisjointClosed : ∀ A B : D.family, A ≠ B → (D.setFamily A ∩ D.setFamily B) = D.rootSet

def DeltaSystemClosed (D : DeltaSystemComp) : Prop :=
  D.deltaSystemExists ∧ (∀ A B : D.family, A ≠ B → (D.setFamily A ∩ D.setFamily B) = D.rootSet)

theorem delta_system_closed_from_evidence (D : DeltaSystemComp)
    (E : DeltaSystemEvidence D) : DeltaSystemClosed D := by
  exact And.intro E.deltaSystemExistsClosed E.pairwiseDisjointClosed

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse