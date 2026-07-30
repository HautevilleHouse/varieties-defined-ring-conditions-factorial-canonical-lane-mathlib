import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure LocalRingPackage where
  ring : Type u
  ringOps : Ring ring
  maximalIdeal : Ideal ring
  uniqueMaximal : IsMaximal maximalIdeal
  residueField : Type v
  residueFieldOps : Field residueField
  localProperty : Prop
  henselianProperty : Prop

structure LocalRingEvidence (L : LocalRingPackage) where
  localPropertyClosed : L.localProperty
  henselianPropertyClosed : L.henselianProperty

def LocalRingClosed (L : LocalRingPackage) : Prop :=
  L.localProperty ∧ L.henselianProperty

theorem local_ring_closed_from_evidence (L : LocalRingPackage)
    (E : LocalRingEvidence L) : LocalRingClosed L := by
  exact And.intro E.localPropertyClosed E.henselianPropertyClosed

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse