import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.PrimeFactorDomain

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure FactorialRingStructure (P : PrimeFactorDomainPackage) where
  noetherian : Prop
  irreducibleFactors : Prop
  primeElementsCharacterization : Prop
  gcdExists : Prop
  lcmExists : Prop

def FactorialRingClosed (P : PrimeFactorDomainPackage) (F : FactorialRingStructure P) : Prop :=
  F.noetherian ∧ F.irreducibleFactors ∧ F.primeElementsCharacterization ∧ F.gcdExists ∧ F.lcmExists

structure FactorialRingEvidence (P : PrimeFactorDomainPackage) (F : FactorialRingStructure P) where
  noetherianClosed : F.noetherian
  irreducibleFactorsClosed : F.irreducibleFactors
  primeElementsCharacterizationClosed : F.primeElementsCharacterization
  gcdExistsClosed : F.gcdExists
  lcmExistsClosed : F.lcmExists

theorem factorial_ring_closed_from_evidence (P : PrimeFactorDomainPackage) (F : FactorialRingStructure P) (E : FactorialRingEvidence P F) :
    FactorialRingClosed P F := by
  exact And.intro E.noetherianClosed (And.intro E.irreducibleFactorsClosed (And.intro E.primeElementsCharacterizationClosed (And.intro E.gcdExistsClosed E.lcmExistsClosed)))

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse