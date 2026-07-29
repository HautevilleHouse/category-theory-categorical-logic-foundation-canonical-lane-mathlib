import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure LimitsPackage where
  diagram : Type u
  cone : Type v
  limitExists : Prop
  universalProperty : Prop

def LimitsClosed (L : LimitsPackage) : Prop :=
  L.limitExists ∧ L.universalProperty

theorem limits_closure (L : LimitsPackage) (h : L.limitExists) (h' : L.universalProperty) :
    LimitsClosed L := by
  exact And.intro h h'

structure ColimitsPackage where
  diagram : Type u
  cocone : Type v
  colimitExists : Prop
  universalProperty : Prop

def ColimitsClosed (C : ColimitsPackage) : Prop :=
  C.colimitExists ∧ C.universalProperty

theorem colimits_closure (C : ColimitsPackage) (h : C.colimitExists) (h' : C.universalProperty) :
    ColimitsClosed C := by
  exact And.intro h h'

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse