import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure HilbertBasisBridgePackage where
  polynomialRing : Type u
  idealGeneration : Type v
  finitelyGenerated : Prop
  noetherianCondition : Prop
  factorialClosure : Prop

def HilbertBasisBridgeClosed (H : HilbertBasisBridgePackage) : Prop :=
  H.finitelyGenerated ∧ H.noetherianCondition ∧ H.factorialClosure

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse