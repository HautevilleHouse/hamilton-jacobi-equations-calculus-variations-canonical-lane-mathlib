import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

def ConstrainedHamiltonJacobiClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hamilton_jacobi_endgame (A : AdmissibleClass) :
    ConstrainedHamiltonJacobiClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse
