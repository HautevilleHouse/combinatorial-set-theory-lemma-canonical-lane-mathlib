import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure AntichainSpernerComp where
  family : Type u
  groundSet : Type v
  members : family → Set groundSet
  antichainProperty : ∀ A B : family, members A ≠ members B → ¬ (members A ⊂ members B) ∧ ¬ (members B ⊂ members A)
  maxSize : Nat
  lysenokBound : ℕ → ℕ
  spernerTheoremHolds : Prop
  spernerTheoremHoldsTerm : spernerTheoremHolds

structure AntichainSpernerEvidence (A : AntichainSpernerComp) where
  antichainPropertyClosed : ∀ A B : A.family, A.members A ≠ A.members B → ¬ (A.members A ⊂ A.members B) ∧ ¬ (A.members B ⊂ A.members A)
  spernerTheoremHoldsClosed : A.spernerTheoremHolds

def AntichainSpernerClosed (A : AntichainSpernerComp) : Prop :=
  (∀ A' B' : A.family, A.members A' ≠ A.members B' → ¬ (A.members A' ⊂ A.members B') ∧ ¬ (A.members B' ⊂ A.members A')) ∧ A.spernerTheoremHolds

theorem antichain_sperner_closed_from_evidence (A : AntichainSpernerComp)
    (E : AntichainSpernerEvidence A) : AntichainSpernerClosed A := by
  exact And.intro E.antichainPropertyClosed E.spernerTheoremHoldsClosed

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse