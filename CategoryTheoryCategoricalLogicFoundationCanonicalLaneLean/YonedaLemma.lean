import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u → Type v
  functorCategory : Type u → Type v
  yonedaEmbedding : Type u → Type v
  naturalIso : Prop
  fullFaithfulness : Prop
  representablePreservation : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalIsoClosed : Y.naturalIso
  fullFaithfulnessClosed : Y.fullFaithfulness
  representablePreservationClosed : Y.representablePreservation

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalIso ∧ Y.fullFaithfulness ∧ Y.representablePreservation

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage)
    (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.naturalIsoClosed
    (And.intro E.fullFaithfulnessClosed E.representablePreservationClosed)

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse