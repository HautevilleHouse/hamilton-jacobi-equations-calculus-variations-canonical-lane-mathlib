import canonicalLaneMathlib.AdmissibleClass
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.HamiltonJacobiEquations
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.CalculusOfVariationsPackage
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.LaxOleinikSemigroup
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.ViscositySolutionUniqueness
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.TonelliTheorem

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure HamiltonJacobiAnalyticFoundation where
  hamiltonJacobi : HamiltonJacobiPackage
  hamiltonJacobiEvidence : HamiltonJacobiEvidence hamiltonJacobi
  calculusOfVariations : CalculusOfVariationsPackage
  calculusOfVariationsEvidence : CalculusOfVariationsEvidence calculusOfVariations
  laxOleinik : LaxOleinikSemigroupPackage
  laxOleinikEvidence : LaxOleinikSemigroupEvidence laxOleinik
  viscosityUniqueness : ViscositySolutionUniquenessPackage
  viscosityUniquenessEvidence : ViscositySolutionUniquenessEvidence viscosityUniqueness
  tonelli : TonelliTheoremPackage
  tonelliEvidence : TonelliTheoremEvidence tonelli

def HamiltonJacobiAnalyticFoundationClosed (A : HamiltonJacobiAnalyticFoundation) : Prop :=
  HamiltonJacobiClosed A.hamiltonJacobi ∧
  CalculusOfVariationsClosed A.calculusOfVariations ∧
  LaxOleinikSemigroupClosed A.laxOleinik ∧
  ViscositySolutionUniquenessClosed A.viscosityUniqueness ∧
  TonelliTheoremClosed A.tonelli

theorem hamilton_jacobi_analytic_foundation_closed_from_evidence
    (A : HamiltonJacobiAnalyticFoundation) : HamiltonJacobiAnalyticFoundationClosed A := by
  exact And.intro (hamilton_jacobi_closed_from_evidence A.hamiltonJacobi A.hamiltonJacobiEvidence)
    (And.intro (calculus_of_variations_closed_from_evidence A.calculusOfVariations A.calculusOfVariationsEvidence)
      (And.intro (lax_oleinik_semigroup_closed_from_evidence A.laxOleinik A.laxOleinikEvidence)
        (And.intro (viscosity_solution_uniqueness_closed_from_evidence A.viscosityUniqueness A.viscosityUniquenessEvidence)
          (tonelli_theorem_closed_from_evidence A.tonelli A.tonelliEvidence))))

end HautevilleHouse
end HautevilleHouse
