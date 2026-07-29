import CanonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure HamiltonJacobiBellmanPackage where
  stateSpace : Type u
  controlSpace : Type v
  runningCost : stateSpace → controlSpace → ℝ
  terminalCost : stateSpace → ℝ
  dynamics : stateSpace → controlSpace → stateSpace
  valueFunction : stateSpace → ℝ
  equation : Prop

structure HamiltonJacobiBellmanEvidence (H : HamiltonJacobiBellmanPackage) where
  equationClosed : H.equation

def HamiltonJacobiBellmanClosed (H : HamiltonJacobiBellmanPackage) : Prop :=
  H.equation

theorem hamilton_jacobi_bellman_closed_from_evidence (H : HamiltonJacobiBellmanPackage) (E : HamiltonJacobiBellmanEvidence H) :
    HamiltonJacobiBellmanClosed H := by
  exact E.equationClosed

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse