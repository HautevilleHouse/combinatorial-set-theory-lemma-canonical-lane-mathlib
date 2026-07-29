import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure ErdosRadoComp where
  partition : (ℕ → ℕ) → Fin 2
  infiniteSet : Set (ℕ → ℕ)
  homogeneousSet : Set (ℕ → ℕ)
  homogeneousColor : Fin 2
  infiniteRamseyExists : Prop
  infiniteRamseyExistsTerm : infiniteRamseyExists

structure ErdosRadoEvidence (E : ErdosRadoComp) where
  homogeneousSetClosed : E.homogeneousSet ⊆ E.infiniteSet
  homogeneousColorClosed : ∀ x ∈ E.homogeneousSet, E.partition x = E.homogeneousColor
  infiniteRamseyExistsClosed : E.infiniteRamseyExists

def ErdosRadoClosed (E : ErdosRadoComp) : Prop :=
  E.infiniteRamseyExists ∧ (∃ (S : Set (ℕ → ℕ)) (c : Fin 2), S ⊆ E.infiniteSet ∧ (∀ x ∈ S, E.partition x = c))

theorem erdos_rado_closed_from_evidence (E : ErdosRadoComp)
    (Ev : ErdosRadoEvidence E) : ErdosRadoClosed E := by
  refine And.intro Ev.infiniteRamseyExistsClosed ?_
  refine ⟨E.homogeneousSet, E.homogeneousColor, Ev.homogeneousSetClosed, Ev.homogeneousColorClosed⟩

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse