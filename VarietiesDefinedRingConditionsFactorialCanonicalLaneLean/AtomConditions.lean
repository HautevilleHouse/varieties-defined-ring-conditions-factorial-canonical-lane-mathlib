import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure AtomConditionPackage where
  atoms : Type u
  decompositionTree : Type v
  condition : Prop
  completeness : Prop
  wellFoundedness : Prop

def AtomConditionClosed (A : AtomConditionPackage) : Prop :=
  A.condition ∧ A.completeness ∧ A.wellFoundedness

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse