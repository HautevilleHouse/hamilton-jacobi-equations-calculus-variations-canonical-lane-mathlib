import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HamiltonJacobiWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse