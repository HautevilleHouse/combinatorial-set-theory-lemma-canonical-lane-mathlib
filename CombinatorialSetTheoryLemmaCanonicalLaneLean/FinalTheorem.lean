import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

def ConstrainedSetTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_set_theory_endgame (A : AdmissibleClass) :
    ConstrainedSetTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse