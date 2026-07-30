import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure FactorialClosure where
  ufdVariety : UFDVariety
  normalityCondition : NormalityCondition
  factorialityPreservedUnderSmoothness : Prop
  factorialityPreservedUnderSmoothnessTerm : factorialityPreservedUnderSmoothness

structure FactorialClosureEvidence (F : FactorialClosure) where
  ufdVarietyClosed : UFDVarietyClosed F.ufdVariety
  normalityConditionClosed : NormalityConditionClosed F.normalityCondition
  factorialityPreservedUnderSmoothnessClosed : F.factorialityPreservedUnderSmoothness

def FactorialClosureClosed (F : FactorialClosure) : Prop :=
  UFDVarietyClosed F.ufdVariety ∧ NormalityConditionClosed F.normalityCondition ∧ F.factorialityPreservedUnderSmoothness

theorem factorial_closure_closed_from_evidence (F : FactorialClosure) (E : FactorialClosureEvidence F) : FactorialClosureClosed F :=
  And.intro E.ufdVarietyClosed (And.intro E.normalityConditionClosed E.factorialityPreservedUnderSmoothnessClosed)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse