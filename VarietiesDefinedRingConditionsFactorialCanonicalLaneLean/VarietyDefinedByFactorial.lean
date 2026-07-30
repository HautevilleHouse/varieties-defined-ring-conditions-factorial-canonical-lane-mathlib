import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.PrimeFactorDomain
import HautevilleHouse.VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.FactorialRingStructure

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure VarietyDefinedByFactorial (P : PrimeFactorDomainPackage) (F : FactorialRingStructure P) where
  definingIdeal : Set (P.carrier)
  coordinateRing : Type v
  integralClosed : Prop
  normal : Prop
  factorialCoordinateRing : Prop

def VarietyDefinedByFactorialClosed (P : PrimeFactorDomainPackage) (F : FactorialRingStructure P) (V : VarietyDefinedByFactorial P F) : Prop :=
  V.integralClosed ∧ V.normal ∧ V.factorialCoordinateRing

structure VarietyDefinedByFactorialEvidence (P : PrimeFactorDomainPackage) (F : FactorialRingStructure P) (V : VarietyDefinedByFactorial P F) where
  integralClosedClosed : V.integralClosed
  normalClosed : V.normal
  factorialCoordinateRingClosed : V.factorialCoordinateRing

theorem variety_defined_by_factorial_closed_from_evidence (P : PrimeFactorDomainPackage) (F : FactorialRingStructure P) (V : VarietyDefinedByFactorial P F) (E : VarietyDefinedByFactorialEvidence P F V) :
    VarietyDefinedByFactorialClosed P F V := by
  exact And.intro E.integralClosedClosed (And.intro E.normalClosed E.factorialCoordinateRingClosed)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse