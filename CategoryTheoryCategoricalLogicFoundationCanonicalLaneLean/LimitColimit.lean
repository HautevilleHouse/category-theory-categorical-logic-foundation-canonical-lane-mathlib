import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure LimitColimitPackage where
  limitObject : Type u → Type v
  colimitObject : Type u → Type v
  universalProperty : Prop
  coconeProperty : Prop
  functoriality : Prop
  commutationWithAdjoints : Prop

structure LimitColimitEvidence (L : LimitColimitPackage) where
  universalPropertyClosed : L.universalProperty
  coconePropertyClosed : L.coconeProperty
  functorialityClosed : L.functoriality
  commutationWithAdjointsClosed : L.commutationWithAdjoints

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.universalProperty ∧ L.coconeProperty ∧ L.functoriality ∧ L.commutationWithAdjoints

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage)
    (E : LimitColimitEvidence L) : LimitColimitClosed L := by
  exact And.intro E.universalPropertyClosed
    (And.intro E.coconePropertyClosed
      (And.intro E.functorialityClosed E.commutationWithAdjointsClosed))

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse