import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean.HamiltonJacobiEquations

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure CalculusOfVariationsPackage {H : HamiltonJacobiEquationPackage} (Hclosed : HamiltonJacobiEquationClosed H) where
  actionFunctional : Type u
  eulerLagrangeEquations : Prop
  legendreTransform : Prop
  minimizerExistence : Prop
  noetherConservation : Prop

structure CalculusOfVariationsEvidence {H : HamiltonJacobiEquationPackage}
    {Hclosed : HamiltonJacobiEquationClosed H} (V : CalculusOfVariationsPackage Hclosed) where
  eulerLagrangeEquationsClosed : V.eulerLagrangeEquations
  legendreTransformClosed : V.legendreTransform
  minimizerExistenceClosed : V.minimizerExistence
  noetherConservationClosed : V.noetherConservation

def CalculusOfVariationsClosed {H : HamiltonJacobiEquationPackage}
    {Hclosed : HamiltonJacobiEquationClosed H} (V : CalculusOfVariationsPackage Hclosed) : Prop :=
  V.eulerLagrangeEquations ∧ V.legendreTransform ∧ V.minimizerExistence ∧ V.noetherConservation

theorem calculus_of_variations_closed_from_evidence
    {H : HamiltonJacobiEquationPackage} {Hclosed : HamiltonJacobiEquationClosed H}
    (V : CalculusOfVariationsPackage Hclosed) (E : CalculusOfVariationsEvidence V) :
    CalculusOfVariationsClosed V := by
  exact And.intro E.eulerLagrangeEquationsClosed
    (And.intro E.legendreTransformClosed
      (And.intro E.minimizerExistenceClosed E.noetherConservationClosed))

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse
