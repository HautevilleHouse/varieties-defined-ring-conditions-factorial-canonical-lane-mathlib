import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure AdmissibleClass where
  object : VarietiesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VarietiesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse