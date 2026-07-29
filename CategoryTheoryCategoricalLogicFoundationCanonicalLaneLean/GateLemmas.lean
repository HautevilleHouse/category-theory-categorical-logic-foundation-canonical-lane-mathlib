import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endFunctorSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse