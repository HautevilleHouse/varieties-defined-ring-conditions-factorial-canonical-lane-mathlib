import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure DefinableCongruencePackage where
  algebraType : Type u
  terms : Type v
  equations : Type w
  congruenceGenerated : Prop
  finitelyGenerated : Prop
  admitsDefinition : Prop

def DefinableCongruenceClosed (D : DefinableCongruencePackage) : Prop :=
  D.congruenceGenerated ∧ D.finitelyGenerated ∧ D.admitsDefinition

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse