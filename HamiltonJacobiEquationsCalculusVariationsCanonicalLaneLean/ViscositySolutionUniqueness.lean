import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure ViscositySolutionUniquenessPackage where
  hamiltonianContinuity : Prop
  comparisonPrinciple : Prop
  uniquenessTheorem : Prop
  stability : Prop

structure ViscositySolutionUniquenessEvidence (V : ViscositySolutionUniquenessPackage) where
  comparisonPrincipleClosed : V.comparisonPrinciple
  uniquenessTheoremClosed : V.uniquenessTheorem
  stabilityClosed : V.stability

def ViscositySolutionUniquenessClosed (V : ViscositySolutionUniquenessPackage) : Prop :=
  V.comparisonPrinciple ∧ V.uniquenessTheorem ∧ V.stability

theorem viscosity_solution_uniqueness_closed_from_evidence (V : ViscositySolutionUniquenessPackage) (E : ViscositySolutionUniquenessEvidence V) :
    ViscositySolutionUniquenessClosed V := by
  exact And.intro E.comparisonPrincipleClosed (And.intro E.uniquenessTheoremClosed E.stabilityClosed)

end HautevilleHouse
end HautevilleHouse
