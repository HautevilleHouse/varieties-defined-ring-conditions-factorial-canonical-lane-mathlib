import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure LocalFactorizationPackage where
  localization : Type u
  multiplicativeSet : Type v
  localizedRing : Type w
  factorialCondition : Prop
  divisorProperties : Prop
  factorizationUnique : Prop

def LocalFactorizationClosed (L : LocalFactorizationPackage) : Prop :=
  L.factorialCondition ∧ L.divisorProperties ∧ L.factorizationUnique

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse