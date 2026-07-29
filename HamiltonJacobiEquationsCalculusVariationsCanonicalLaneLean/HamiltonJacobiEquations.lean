import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure HamiltonJacobiEquationPackage where
  configSpace : Type u
  timeDomain : Type v
  stateSpace : Type w
  hamiltonian : (configSpace × stateSpace × timeDomain) → ℝ
  lagrangian : (configSpace × stateSpace × timeDomain) → ℝ
  solutionSpace : Type u_1
  hjbEquation : Prop
  initialCondition : Prop
  boundaryCondition : Prop

structure HamiltonJacobiEquationEvidence (H : HamiltonJacobiEquationPackage) where
  hjbEquationClosed : H.hjbEquation
  initialConditionClosed : H.initialCondition
  boundaryConditionClosed : H.boundaryCondition

def HamiltonJacobiEquationClosed (H : HamiltonJacobiEquationPackage) : Prop :=
  H.hjbEquation ∧ H.initialCondition ∧ H.boundaryCondition

theorem hamilton_jacobi_equation_closed_from_evidence
    (H : HamiltonJacobiEquationPackage) (E : HamiltonJacobiEquationEvidence H) :
    HamiltonJacobiEquationClosed H := by
  exact And.intro E.hjbEquationClosed
    (And.intro E.initialConditionClosed E.boundaryConditionClosed)

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse
