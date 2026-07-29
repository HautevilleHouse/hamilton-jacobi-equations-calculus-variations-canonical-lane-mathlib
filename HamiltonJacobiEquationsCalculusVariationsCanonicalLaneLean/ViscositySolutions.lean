import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure ViscositySolutionsPackage {H : HamiltonianDynamicsPackage}
    (P : HamiltonJacobiPDEPackage H) where
  testFunctions : Type u
  subSolutionCriterion : Prop
  superSolutionCriterion : Prop
  viscositySolutionDefined : Prop
  uniquenessComparison : Prop
  stabilityUnderLimits : Prop

def ViscositySolutionsDefinition {H : HamiltonianDynamicsPackage}
    (P : HamiltonJacobiPDEPackage H) (S : ViscositySolutionsPackage P) : Prop :=
  S.subSolutionCriterion ∧ S.superSolutionCriterion ∧ S.viscositySolutionDefined

structure ViscositySolutionsEvidence {H : HamiltonianDynamicsPackage}
    {P : HamiltonJacobiPDEPackage H} (S : ViscositySolutionsPackage P) where
  subSolutionCriterionClosed : S.subSolutionCriterion
  superSolutionCriterionClosed : S.superSolutionCriterion
  viscositySolutionDefinedClosed : S.viscositySolutionDefined
  uniquenessComparisonClosed : S.uniquenessComparison
  stabilityUnderLimitsClosed : S.stabilityUnderLimits

def ViscositySolutionsClosed {H : HamiltonianDynamicsPackage}
    {P : HamiltonJacobiPDEPackage H} (S : ViscositySolutionsPackage P) : Prop :=
  S.subSolutionCriterion ∧ S.superSolutionCriterion ∧ S.viscositySolutionDefined ∧
  S.uniquenessComparison ∧ S.stabilityUnderLimits

theorem viscosity_solutions_closed_from_evidence
    {H : HamiltonianDynamicsPackage} {P : HamiltonJacobiPDEPackage H}
    (S : ViscositySolutionsPackage P) (E : ViscositySolutionsEvidence S) :
    ViscositySolutionsClosed S := by
  exact And.intro E.subSolutionCriterionClosed
    (And.intro E.superSolutionCriterionClosed
      (And.intro E.viscositySolutionDefinedClosed
        (And.intro E.uniquenessComparisonClosed E.stabilityUnderLimitsClosed)))

end HautevilleHouse
end HautevilleHouse