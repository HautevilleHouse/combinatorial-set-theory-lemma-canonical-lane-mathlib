import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CombinatorialSetTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombinatorialSetTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse