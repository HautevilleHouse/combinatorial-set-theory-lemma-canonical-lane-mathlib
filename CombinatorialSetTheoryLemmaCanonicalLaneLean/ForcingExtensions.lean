import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure ForcingExtensionPackage (A : AdmissibleClass) where
  genericExtension : Type
  extensionSatisfiesLemma : Prop
  propertyPreservedUnderForcing : Prop

structure ForcingExtensionEvidence (A : AdmissibleClass) (F : ForcingExtensionPackage A) where
  extensionSatisfiesLemmaClosed : F.extensionSatisfiesLemma
  propertyPreservedUnderForcingClosed : F.propertyPreservedUnderForcing

def ForcingExtensionClosed (A : AdmissibleClass) (F : ForcingExtensionPackage A) : Prop :=
  F.extensionSatisfiesLemma ∧ F.propertyPreservedUnderForcing

theorem forcing_extension_closed_from_evidence (A : AdmissibleClass) (F : ForcingExtensionPackage A) (E : ForcingExtensionEvidence A F) :
    ForcingExtensionClosed A F := by
  exact And.intro E.extensionSatisfiesLemmaClosed E.propertyPreservedUnderForcingClosed

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse