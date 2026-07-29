import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure LimitsPackage (C : Type u) [Category.{v} C] where
  hasLimits : Prop
  limitConstruction : Prop
  universalProperty : Prop
  hasLimitsWitness : hasLimits
  limitConstructionWitness : limitConstruction
  universalPropertyWitness : universalProperty

structure LimitsEvidence {C : Type u} [Category.{v} C]
    (Pkg : LimitsPackage C) where
  hasLimitsClosed : Pkg.hasLimits
  limitConstructionClosed : Pkg.limitConstruction
  universalPropertyClosed : Pkg.universalProperty

def LimitsClosed {C : Type u} [Category.{v} C]
    (Pkg : LimitsPackage C) : Prop :=
  Pkg.hasLimits ∧ Pkg.limitConstruction ∧ Pkg.universalProperty

theorem limits_closed_from_evidence
    {C : Type u} [Category.{v} C]
    (Pkg : LimitsPackage C) (E : LimitsEvidence Pkg) :
    LimitsClosed Pkg := by
  exact And.intro E.hasLimitsClosed (And.intro E.limitConstructionClosed E.universalPropertyClosed)

structure ColimitsPackage (C : Type u) [Category.{v} C] where
  hasColimits : Prop
  colimitConstruction : Prop
  universalProperty : Prop
  hasColimitsWitness : hasColimits
  colimitConstructionWitness : colimitConstruction
  universalPropertyWitness : universalProperty

structure ColimitsEvidence {C : Type u} [Category.{v} C]
    (Pkg : ColimitsPackage C) where
  hasColimitsClosed : Pkg.hasColimits
  colimitConstructionClosed : Pkg.colimitConstruction
  universalPropertyClosed : Pkg.universalProperty

def ColimitsClosed {C : Type u} [Category.{v} C]
    (Pkg : ColimitsPackage C) : Prop :=
  Pkg.hasColimits ∧ Pkg.colimitConstruction ∧ Pkg.universalProperty

theorem colimits_closed_from_evidence
    {C : Type u} [Category.{v} C]
    (Pkg : ColimitsPackage C) (E : ColimitsEvidence Pkg) :
    ColimitsClosed Pkg := by
  exact And.intro E.hasColimitsClosed (And.intro E.colimitConstructionClosed E.universalPropertyClosed)

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse