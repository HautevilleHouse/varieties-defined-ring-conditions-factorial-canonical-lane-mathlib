import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure PrimeElementClassificationPackage where
  ring : Type u
  primeSet : Type v
  irreducibleSet : Type w
  equivalence : Prop
  closureUnderMultiplication : Prop
  uniqueness : Prop

def PrimeElementClassificationClosed (P : PrimeElementClassificationPackage) : Prop :=
  P.equivalence ∧ P.closureUnderMultiplication ∧ P.uniqueness

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse