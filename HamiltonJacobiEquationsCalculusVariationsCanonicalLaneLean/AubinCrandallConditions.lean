import CanonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure AubinCrandallConditionsPackage where
  hamiltonian : ℝ → ℝ → ℝ
  convexity : Prop
  superlinearGrowth : Prop
  comparisonPrinciple : Prop

structure AubinCrandallConditionsEvidence (A : AubinCrandallConditionsPackage) where
  convexityClosed : A.convexity
  superlinearGrowthClosed : A.superlinearGrowth
  comparisonPrincipleClosed : A.comparisonPrinciple

def AubinCrandallConditionsClosed (A : AubinCrandallConditionsPackage) : Prop :=
  A.convexity ∧ A.superlinearGrowth ∧ A.comparisonPrinciple

theorem aubin_crandall_conditions_closed_from_evidence (A : AubinCrandallConditionsPackage) (E : AubinCrandallConditionsEvidence A) :
    AubinCrandallConditionsClosed A := by
  exact And.intro E.convexityClosed (And.intro E.superlinearGrowthClosed E.comparisonPrincipleClosed)

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse