import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure NormalityCondition where
  variety : Type u
  coordinateRing : Type v
  isNormal : Prop
  isIntegrallyClosed : Prop
  isNormalTerm : isNormal
  isIntegrallyClosedTerm : isIntegrallyClosed

structure NormalityConditionEvidence (N : NormalityCondition) where
  isNormalClosed : N.isNormal
  isIntegrallyClosedClosed : N.isIntegrallyClosed

def NormalityConditionClosed (N : NormalityCondition) : Prop :=
  N.isNormal ∧ N.isIntegrallyClosed

theorem normality_condition_closed_from_evidence (N : NormalityCondition) (E : NormalityConditionEvidence N) : NormalityConditionClosed N :=
  And.intro E.isNormalClosed E.isIntegrallyClosedClosed

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse