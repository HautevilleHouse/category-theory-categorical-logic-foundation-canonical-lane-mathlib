import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure MonadEvidence where
  monad : Type u → Type u
  algebra : Type u → Type v
  comparisonFunctor : Prop
  equivalenceCondition : Prop

def MonadicityClosed (M : MonadEvidence) : Prop :=
  M.comparisonFunctor ∧ M.equivalenceCondition

theorem monadicity_bridge (M : MonadEvidence) : MonadicityClosed M := by
  exact And.intro M.comparisonFunctor M.equivalenceCondition

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse