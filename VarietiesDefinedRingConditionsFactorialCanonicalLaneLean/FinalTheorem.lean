import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.PrimeFactorDomain
import HautevilleHouse.VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.FactorialRingStructure

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

def ConstrainedFactorialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_factorial_endgame (A : AdmissibleClass) :
    ConstrainedFactorialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse