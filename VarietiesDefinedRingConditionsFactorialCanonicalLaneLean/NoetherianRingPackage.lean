import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.IntegralDomainPackage

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure NoetherianRingPackage {R : Type u} [CommRing R] (P : IntegralDomainPackage R) where
  ascendingChainCondition : Prop
  accTerm : ascendingChainCondition

structure NoetherianRingEvidence {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (N : NoetherianRingPackage P) where
  ascendingChainConditionClosed : N.ascendingChainCondition

def NoetherianRingClosed {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (N : NoetherianRingPackage P) : Prop :=
  N.ascendingChainCondition

theorem noetherian_ring_closed_from_evidence {R : Type u} [CommRing R]
    {P : IntegralDomainPackage R} (N : NoetherianRingPackage P)
    (E : NoetherianRingEvidence N) : NoetherianRingClosed N := by
  exact E.ascendingChainConditionClosed

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse