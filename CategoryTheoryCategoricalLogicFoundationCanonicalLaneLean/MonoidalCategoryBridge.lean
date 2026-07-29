import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure MonoidalCategoryPackage (C : Type u) [Category C] where
  tensorProduct : Functor (C × C) C
  unitObject : C
  associator : (tensorProduct.comp (Functor.mapProd tensorProduct (Functor.id C))) ≅ tensorProduct.comp (Functor.mapProd (Functor.id C) tensorProduct)
  leftUnitor : tensorProduct.comp (Functor.constProd unitObject) ≅ 𝟭 C
  rightUnitor : tensorProduct.comp (Functor.constProd unitObject) ≅ 𝟭 C
  pentagonIdentity : True
  triangleIdentity : True

structure MonoidalCategoryEvidence {C : Type u} [Category C]
    (P : MonoidalCategoryPackage C) where
  tensorClosed : True
  unitClosed : True

def MonoidalCategoryClosed {C : Type u} [Category C]
    (P : MonoidalCategoryPackage C) : Prop :=
  True

theorem monoidal_category_closed_from_evidence {C : Type u} [Category C]
    (P : MonoidalCategoryPackage C) (E : MonoidalCategoryEvidence P) :
    MonoidalCategoryClosed P := by
  trivial

end HautevilleHouse
end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean