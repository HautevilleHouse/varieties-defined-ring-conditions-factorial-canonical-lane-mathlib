import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure FactorialRingPackage where
  ring : Type u
  ringOps : CommRing ring
  integralDomain : IsDomain ring
  atomicProperty : Prop
  accOnPrincipalIdeals : Prop
  factorialProperty : Prop

structure FactorialRingEvidence (F : FactorialRingPackage) where
  atomicPropertyClosed : F.atomicProperty
  accOnPrincipalIdealsClosed : F.accOnPrincipalIdeals
  factorialPropertyClosed : F.factorialProperty

def FactorialRingClosed (F : FactorialRingPackage) : Prop :=
  F.atomicProperty ∧ F.accOnPrincipalIdeals ∧ F.factorialProperty

theorem factorial_ring_closed_from_evidence (F : FactorialRingPackage)
    (E : FactorialRingEvidence F) : FactorialRingClosed F := by
  exact And.intro E.atomicPropertyClosed (And.intro E.accOnPrincipalIdealsClosed E.factorialPropertyClosed)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse