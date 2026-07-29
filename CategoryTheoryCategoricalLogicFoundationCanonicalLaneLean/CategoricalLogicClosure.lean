import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean.AdjointFunctorBridge
import CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean.YonedaLemma
import CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean.LimitColimit

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure CategoricalLogicAdmissibleObject where
  adjointFunctorPackage : AdjointFunctorPackage
  yonedaLemmaPackage : YonedaLemmaPackage
  limitColimitPackage : LimitColimitPackage

structure CategoricalLogicAdmissibleClass where
  object : CategoricalLogicAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def categoricalLogicClosure (A : CategoricalLogicAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem categorical_logic_closure_from_gate (A : CategoricalLogicAdmissibleClass) :
    categoricalLogicClosure A := by
  exact A.gateWitness

def bridgeClosed (A : CategoricalLogicAdmissibleClass) : Prop :=
  AdjointFunctorClosed A.object.adjointFunctorPackage ∧
  YonedaLemmaClosed A.object.yonedaLemmaPackage ∧
  LimitColimitClosed A.object.limitColimitPackage

theorem bridge_from_admissible_class (A : CategoricalLogicAdmissibleClass) :
    bridgeClosed A := by
  sorry

def gateClosed (A : CategoricalLogicAdmissibleClass) : Prop :=
  categoricalLogicClosure A

theorem gate_from_admissible_class (A : CategoricalLogicAdmissibleClass) :
    gateClosed A := by
  exact categorical_logic_closure_from_gate A

def ConstrainedCategoricalLogicClosure (A : CategoricalLogicAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem categorical_logic_constrained_endgame (A : CategoricalLogicAdmissibleClass) :
    ConstrainedCategoricalLogicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse