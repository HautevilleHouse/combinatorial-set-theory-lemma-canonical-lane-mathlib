import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure CombinatorialSetTheoryLemmaAdmissibleObject where
  set : Type
  cardinal : Cardinal
  lemmaProperty : Prop

structure AdmissibleClass where
  object : CombinatorialSetTheoryLemmaAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombinatorialSetTheoryLemmaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CombinatorialSetTheoryLemmaWitnessClosed (O : CombinatorialSetTheoryLemmaAdmissibleObject) : Prop :=
  O.lemmaProperty

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse