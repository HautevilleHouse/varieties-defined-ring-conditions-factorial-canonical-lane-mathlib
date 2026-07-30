import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VarietiesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse