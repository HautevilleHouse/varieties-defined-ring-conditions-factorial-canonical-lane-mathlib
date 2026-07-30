import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure PrimeFactorDomainPackage where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  integralDomain : Prop
  factorizationExists : Prop
  factorizationUnique : Prop

def PrimeFactorDomainClosed (P : PrimeFactorDomainPackage) : Prop :=
  P.integralDomain ∧ P.factorizationExists ∧ P.factorizationUnique

structure PrimeFactorDomainEvidence (P : PrimeFactorDomainPackage) where
  integralDomainClosed : P.integralDomain
  factorizationExistsClosed : P.factorizationExists
  factorizationUniqueClosed : P.factorizationUnique

theorem prime_factor_domain_closed_from_evidence (P : PrimeFactorDomainPackage) (E : PrimeFactorDomainEvidence P) :
    PrimeFactorDomainClosed P := by
  exact And.intro E.integralDomainClosed (And.intro E.factorizationExistsClosed E.factorizationUniqueClosed)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse