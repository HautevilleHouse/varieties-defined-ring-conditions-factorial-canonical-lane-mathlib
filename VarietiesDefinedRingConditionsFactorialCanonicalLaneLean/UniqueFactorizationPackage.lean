import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.AdmissibleClass
import VarietiesDefinedRingConditionsFactorialCanonicalLaneLean.IntegralDomainPackage

namespace HautevilleHouse
namespace VarietiesDefinedRingConditionsFactorialCanonicalLaneLean

structure UniqueFactorizationPackage {R : Type u} [CommRing R] (P : IntegralDomainPackage R) where
  factorizationExists : Prop
  factorizationUnique : Prop
  existenceTerm : factorizationExists
  uniquenessTerm : factorizationUnique

structure UniqueFactorizationEvidence {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (U : UniqueFactorizationPackage P) where
  factorizationExistsClosed : U.factorizationExists
  factorizationUniqueClosed : U.factorizationUnique

def UniqueFactorizationClosed {R : Type u} [CommRing R] {P : IntegralDomainPackage R}
    (U : UniqueFactorizationPackage P) : Prop :=
  U.factorizationExists ∧ U.factorizationUnique

theorem unique_factorization_closed_from_evidence {R : Type u} [CommRing R]
    {P : IntegralDomainPackage R} (U : UniqueFactorizationPackage P)
    (E : UniqueFactorizationEvidence U) : UniqueFactorizationClosed U := by
  exact And.intro E.factorizationExistsClosed E.factorizationUniqueClosed

end VarietiesDefinedRingConditionsFactorialCanonicalLaneLean
end HautevilleHouse