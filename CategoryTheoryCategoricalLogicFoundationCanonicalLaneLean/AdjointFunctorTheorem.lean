import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure AdjointFunctorEvidence where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  adjunctionIso : Prop
  unitCounit : Prop

def AdjointFunctorClosed (A : AdjointFunctorEvidence) : Prop :=
  A.adjunctionIso ∧ A.unitCounit

theorem adjoint_functor_bridge (A : AdjointFunctorEvidence) : AdjointFunctorClosed A := by
  exact And.intro A.adjunctionIso A.unitCounit

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse