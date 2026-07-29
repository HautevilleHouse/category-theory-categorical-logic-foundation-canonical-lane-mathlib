import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop
  adjointIso : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  unitNaturalClosed : A.unitNatural
  counitNaturalClosed : A.counitNatural
  triangleIdentitiesClosed : A.triangleIdentities
  adjointIsoClosed : A.adjointIso

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unitNatural ∧ A.counitNatural ∧ A.triangleIdentities ∧ A.adjointIso

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.unitNaturalClosed
    (And.intro E.counitNaturalClosed
      (And.intro E.triangleIdentitiesClosed E.adjointIsoClosed))

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse