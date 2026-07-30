import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure IntegralDomainPackage (R : Type u) [CommRing R] where
  noZeroDivisors : Prop
  integralDomainAxiom : noZeroDivisors
  noZeroDivisorsTerm : noZeroDivisors

structure IntegralDomainEvidence {R : Type u} [CommRing R] (P : IntegralDomainPackage R) where
  noZeroDivisorsClosed : P.noZeroDivisors

def IntegralDomainClosed {R : Type u} [CommRing R] (P : IntegralDomainPackage R) : Prop :=
  P.noZeroDivisors

theorem integral_domain_closed_from_evidence {R : Type u} [CommRing R]
    (P : IntegralDomainPackage R) (E : IntegralDomainEvidence P) :
    IntegralDomainClosed P := by
  exact E.noZeroDivisorsClosed

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse