import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure CategoricalLogicPackage where
  internalLanguage : Type u
  typesAsObjects : Prop
  termsAsMorphisms : Prop
  logicalConnectives : Prop
  soundness : Prop
  completeness : Prop

def CategoricalLogicClosed (C : CategoricalLogicPackage) : Prop :=
  C.soundness ∧ C.completeness

theorem categorical_logic_closure (C : CategoricalLogicPackage) (h : C.soundness) (h' : C.completeness) :
    CategoricalLogicClosed C := by
  exact And.intro h h'

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse