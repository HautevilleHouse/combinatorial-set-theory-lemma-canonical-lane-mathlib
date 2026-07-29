import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryLemmaCanonicalLaneLean

structure CombinatorialSetTheoryAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  combinatorialSet : Type
  combinatorialLemma : Prop
  conclusion : combinatorialLemma

structure CombinatorialSetTheoryWitnessClosed (O : CombinatorialSetTheoryAdmittedObject) : Prop := 
  lemmaClosed : O.combinatorialLemma

def sourceRepository : String := "combinatorial-set-theory-lemma-canonical-lane"
def sourceDescription : String := "Combinatorial Set Theory Lemma: A canonical lemma in combinatorial set theory."

end CombinatorialSetTheoryLemmaCanonicalLaneLean
end HautevilleHouse