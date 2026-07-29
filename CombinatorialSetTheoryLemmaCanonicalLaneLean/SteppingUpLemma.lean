import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure SteppingUpComp where
  targetSize : ℕ → ℕ
  steppingUpSequence : ℕ → ℕ
  steppingUpExists : Prop
  steppingUpExistsTerm : steppingUpExists

structure SteppingUpEvidence (S : SteppingUpComp) where
  steppingUpSequenceDefined : ∀ n : ℕ, S.steppingUpSequence n = S.targetSize (S.steppingUpSequence (n-1))
  steppingUpExistsClosed : S.steppingUpExists

def SteppingUpClosed (S : SteppingUpComp) : Prop :=
  (∀ n : ℕ, S.steppingUpSequence n = S.targetSize (S.steppingUpSequence (n-1))) ∧ S.steppingUpExists

theorem stepping_up_closed_from_evidence (S : SteppingUpComp)
    (E : SteppingUpEvidence S) : SteppingUpClosed S := by
  exact And.intro E.steppingUpSequenceDefined E.steppingUpExistsClosed

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse