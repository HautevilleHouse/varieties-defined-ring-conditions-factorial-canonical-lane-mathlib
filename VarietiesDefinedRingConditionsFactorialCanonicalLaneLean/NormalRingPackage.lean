import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.IntegralDomainPackage

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure NormalRingPackage {R : Type u} [CommRing R] (P : IntegralDomainPackage R) where
  integrallyClosed : Prop
  integrallyClosedTerm : integrallyClosed

structure NormalRingEvidence {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (N : NormalRingPackage P) where
  integrallyClosedClosed : N.integrallyClosed

def NormalRingClosed {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (N : NormalRingPackage P) : Prop :=
  N.integrallyClosed

theorem normal_ring_closed_from_evidence {R : Type u} [CommRing R]
    {P : IntegralDomainPackage R} (N : NormalRingPackage P)
    (E : NormalRingEvidence N) : NormalRingClosed N := by
  exact E.integrallyClosedClosed

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse