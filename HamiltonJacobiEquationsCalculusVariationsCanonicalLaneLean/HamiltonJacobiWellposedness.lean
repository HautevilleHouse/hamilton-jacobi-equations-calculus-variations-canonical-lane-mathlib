import CanonicalLaneMathlib.AdmissibleClass
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.ViscositySolutions
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.LaxOleinikSemigroup
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.HamiltonJacobiBellman
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.LegendreTransform
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.HopfLaxFormula
import HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.AubinCrandallConditions

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure WellposednessPackage where
  viscosity : ViscositySolutionPackage
  laxOleinik : LaxOleinikSemigroupPackage
  bellman : HamiltonJacobiBellmanPackage
  legendre : LegendreTransformPackage
  hopfLax : HopfLaxFormulaPackage
  aubinCrandall : AubinCrandallConditionsPackage
  wellposed : Prop

structure WellposednessEvidence (W : WellposednessPackage) where
  viscosityClosed : ViscositySolutionClosed W.viscosity
  laxOleinikClosed : LaxOleinikSemigroupClosed W.laxOleinik
  bellmanClosed : HamiltonJacobiBellmanClosed W.bellman
  legendreClosed : LegendreTransformClosed W.legendre
  hopfLaxClosed : HopfLaxFormulaClosed W.hopfLax
  aubinCrandallClosed : AubinCrandallConditionsClosed W.aubinCrandall
  wellposedClosed : W.wellposed

def WellposednessClosed (W : WellposednessPackage) : Prop :=
  W.wellposed

theorem wellposedness_closed_from_evidence (W : WellposednessPackage) (E : WellposednessEvidence W) :
    WellposednessClosed W := by
  exact E.wellposedClosed

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse