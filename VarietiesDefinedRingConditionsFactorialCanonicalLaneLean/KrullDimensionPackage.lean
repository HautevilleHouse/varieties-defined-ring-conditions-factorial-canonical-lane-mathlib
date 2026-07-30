import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.IntegralDomainPackage

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure KrullDimensionPackage {R : Type u} [CommRing R] (P : IntegralDomainPackage R) where
  dimension : ℕ
  finiteType : Prop
  dimensionComputed : Prop
  finiteTypeTerm : finiteType
  dimensionComputedTerm : dimensionComputed

structure KrullDimensionEvidence {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (K : KrullDimensionPackage P) where
  finiteTypeClosed : K.finiteType
  dimensionComputedClosed : K.dimensionComputed

def KrullDimensionClosed {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (K : KrullDimensionPackage P) : Prop :=
  K.finiteType ∧ K.dimensionComputed

theorem krull_dimension_closed_from_evidence {R : Type u} [CommRing R]
    {P : IntegralDomainPackage R} (K : KrullDimensionPackage P)
    (E : KrullDimensionEvidence K) : KrullDimensionClosed K := by
  exact And.intro E.finiteTypeClosed E.dimensionComputedClosed

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse