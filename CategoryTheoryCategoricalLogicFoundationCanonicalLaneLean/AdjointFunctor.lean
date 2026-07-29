import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u
  rightAdjoint : Type v
  unit : Prop
  counit : Prop
  triangleIdentities : Prop

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unit ∧ A.counit ∧ A.triangleIdentities

theorem adjoint_functor_closed (A : AdjointFunctorPackage) (h1 : A.unit) (h2 : A.counit) (h3 : A.triangleIdentities) :
    AdjointFunctorClosed A := by
  exact And.intro h1 (And.intro h2 h3)

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse