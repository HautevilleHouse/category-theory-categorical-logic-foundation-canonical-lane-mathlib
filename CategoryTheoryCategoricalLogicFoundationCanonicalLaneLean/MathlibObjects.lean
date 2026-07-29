import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean

structure CategoryAdmittedObject where
  category : Type u
  internalLogic : Prop
  functoriality : Prop
  completeness : Prop
  conclusion : Prop

structure CategoryEndgameState where
  object : CategoryAdmittedObject

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.conclusion

end CategoryTheoryCategoricalLogicFoundationCanonicalLaneLean
end HautevilleHouse