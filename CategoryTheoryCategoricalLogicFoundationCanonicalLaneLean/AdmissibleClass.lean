import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CategoryAdmittedObject
  endFunctorSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endFunctorSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoryWitnessClosed A.object ∧ (A.endFunctorSatisfied ∨ A.remainderRecorded)

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse