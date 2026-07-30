import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.UniqueFactorizationPackage
import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.KrullDimensionPackage
import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.NormalRingPackage

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

def FactorialRingClosed {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (U : UniqueFactorizationPackage P) (K : KrullDimensionPackage P) (N : NormalRingPackage P) : Prop :=
  UniqueFactorizationClosed U ∧ KrullDimensionClosed K ∧ NormalRingClosed N

theorem factorial_ring_closed_from_evidence {R : Type u} [CommRing R]
    {P : IntegralDomainPackage R} (U : UniqueFactorizationPackage P)
    (UE : UniqueFactorizationEvidence U) (K : KrullDimensionPackage P)
    (KE : KrullDimensionEvidence K) (N : NormalRingPackage P)
    (NE : NormalRingEvidence N) : FactorialRingClosed U K N := by
  exact And.intro (unique_factorization_closed_from_evidence U UE)
    (And.intro (krull_dimension_closed_from_evidence K KE)
      (normal_ring_closed_from_evidence N NE))

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse