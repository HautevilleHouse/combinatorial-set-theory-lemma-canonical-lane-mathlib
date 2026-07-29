import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure PartialOrderChainComp where
  chain : Type u
  ordered : chain → chain → Prop
  totalOnChain : ∀ x y : chain, ordered x y ∨ ordered y x
  chainOrderedComplete : Prop
  chainOrderedCompleteTerm : chainOrderedComplete

structure PartialOrderChainEvidence (C : PartialOrderChainComp) where
  totalOnChainClosed : ∀ x y : C.chain, C.ordered x y ∨ C.ordered y x
  chainOrderedCompleteClosed : C.chainOrderedComplete

def PartialOrderChainClosed (C : PartialOrderChainComp) : Prop :=
  (∀ x y : C.chain, C.ordered x y ∨ C.ordered y x) ∧ C.chainOrderedComplete

theorem partial_order_chain_closed_from_evidence (C : PartialOrderChainComp)
    (E : PartialOrderChainEvidence C) : PartialOrderChainClosed C := by
  exact And.intro E.totalOnChainClosed E.chainOrderedCompleteClosed

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse