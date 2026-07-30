import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure NormalRingPackage where
  ring : Type u
  ringOps : CommRing ring
  integralDomain : IsDomain ring
  integrallyClosed : Prop
  normalProperty : Prop
  serreCondition : Prop

structure NormalRingEvidence (N : NormalRingPackage) where
  integrallyClosedClosed : N.integrallyClosed
  normalPropertyClosed : N.normalProperty
  serreConditionClosed : N.serreCondition

def NormalRingClosed (N : NormalRingPackage) : Prop :=
  N.integrallyClosed ∧ N.normalProperty ∧ N.serreCondition

theorem normal_ring_closed_from_evidence (N : NormalRingPackage)
    (E : NormalRingEvidence N) : NormalRingClosed N := by
  exact And.intro E.integrallyClosedClosed (And.intro E.normalPropertyClosed E.serreConditionClosed)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse