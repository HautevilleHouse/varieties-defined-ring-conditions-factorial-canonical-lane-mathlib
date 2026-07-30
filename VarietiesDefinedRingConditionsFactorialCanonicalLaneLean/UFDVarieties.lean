import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure UFDVariety where
  variety : Type u
  coordinateRing : Type v
  isIntegralDomain : Prop
  isNoetherian : Prop
  isUFD : Prop
  isIntegralDomainTerm : isIntegralDomain
  isNoetherianTerm : isNoetherian
  isUFDTerm : isUFD

structure UFDVarietyEvidence (V : UFDVariety) where
  isIntegralDomainClosed : V.isIntegralDomain
  isNoetherianClosed : V.isNoetherian
  isUFDClosed : V.isUFD

def UFDVarietyClosed (V : UFDVariety) : Prop :=
  V.isIntegralDomain ∧ V.isNoetherian ∧ V.isUFD

theorem ufd_variety_closed_from_evidence (V : UFDVariety) (E : UFDVarietyEvidence V) : UFDVarietyClosed V :=
  And.intro E.isIntegralDomainClosed (And.intro E.isNoetherianClosed E.isUFDClosed)

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse