import canonicalLaneMathlib.AdmissibleClass
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

def theoremSpecificEndgamePilotClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedHamiltonJacobiClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_hamilton_jacobi_endgame A

end HautevilleHouse
end HautevilleHouse
