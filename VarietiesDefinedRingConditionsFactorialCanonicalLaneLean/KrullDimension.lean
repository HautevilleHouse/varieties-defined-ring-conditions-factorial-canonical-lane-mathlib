import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure KrullDimensionPackage where
  ring : Type u
  ringOps : Ring ring
  primeSpectrum : Type v
  topology : TopologicalSpace primeSpectrum
  heightFunction : primeSpectrum → ℕ∞
  finiteHeight : Prop
  dimensionWellDefined : Prop
  noetherianProperty : Prop

structure KrullDimensionEvidence (K : KrullDimensionPackage) where
  finiteHeightClosed : K.finiteHeight
  dimensionWellDefinedClosed : K.dimensionWellDefined
  noetherianPropertyClosed : K.noetherianProperty

def KrullDimensionClosed (K : KrullDimensionPackage) : Prop :=
  K.finiteHeight ∧ K.dimensionWellDefined ∧ K.noetherianProperty

theorem krull_dimension_closed_from_evidence (K : KrullDimensionPackage)
    (E : KrullDimensionEvidence K) : KrullDimensionClosed K := by
  exact And.intro E.finiteHeightClosed (And.intro E.dimensionWellDefinedClosed E.noetherianPropertyClosed)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse