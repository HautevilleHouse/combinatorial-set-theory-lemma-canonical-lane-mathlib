import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure ErdosMoserComp where
  family : Type u
  members : family → Set ℕ
  finiteIntersection : ∀ A B : family, Finite (members A ∩ members B)
  almostDisjoint : ∀ A B : family, A ≠ B → (members A ∩ members B).Finite
  upperBound : ℕ
  countableChainExists : Prop
  countableChainExistsTerm : countableChainExists

structure ErdosMoserEvidence (E : ErdosMoserComp) where
  almostDisjointClosed : ∀ A B : E.family, A ≠ B → (E.members A ∩ E.members B).Finite
  countableChainExistsClosed : E.countableChainExists

def ErdosMoserClosed (E : ErdosMoserComp) : Prop :=
  (∀ A B : E.family, A ≠ B → (E.members A ∩ E.members B).Finite) ∧ E.countableChainExists

theorem erdos_moser_closed_from_evidence (E : ErdosMoserComp)
    (Ev : ErdosMoserEvidence E) : ErdosMoserClosed E := by
  exact And.intro Ev.almostDisjointClosed Ev.countableChainExistsClosed

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse