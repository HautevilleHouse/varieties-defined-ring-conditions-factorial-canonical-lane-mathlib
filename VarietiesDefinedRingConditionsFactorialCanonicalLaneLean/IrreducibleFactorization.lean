import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure IrreducibleFactorization where
  ring : UniqueFactorizationRing
  element : ring.carrier
  factorization : List ring.carrier
  factorizationClosed : (∀ p ∈ factorization, Irreducible p) ∧ Associated element (factorization.prod)

def IrreducibleFactorizationClosed (F : IrreducibleFactorization) : Prop :=
  F.factorizationClosed

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse