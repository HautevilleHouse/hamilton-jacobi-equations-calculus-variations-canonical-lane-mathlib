import canonicalLaneMathlib.AdmissibleClass

/-!
# Calculus of Variations Package
-/

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure CalculusOfVariations where
  lagrangian : (ℝ → ℝⁿ) → ℝ → ℝ
  eulerLagrangeEquations : Prop
  legendreCondition : Prop
  jacobiNecessary : Prop
  noetherTheorem : Prop
  minimalSurface : Prop
  geodesicEquation : Prop

structure CalculusOfVariationsEvidence (C : CalculusOfVariations) where
  eulerLagrangeEquationsClosed : C.eulerLagrangeEquations
  legendreConditionClosed : C.legendreCondition
  jacobiNecessaryClosed : C.jacobiNecessary
  noetherTheoremClosed : C.noetherTheorem
  minimalSurfaceClosed : C.minimalSurface
  geodesicEquationClosed : C.geodesicEquation

def CalculusOfVariationsClosed (C : CalculusOfVariations) : Prop :=
  C.eulerLagrangeEquations ∧ C.legendreCondition ∧ C.jacobiNecessary ∧
  C.noetherTheorem ∧ C.minimalSurface ∧ C.geodesicEquation

theorem calculus_of_variations_closed_from_evidence (C : CalculusOfVariations) (E : CalculusOfVariationsEvidence C) : CalculusOfVariationsClosed C := by
  exact And.intro E.eulerLagrangeEquationsClosed
    (And.intro E.legendreConditionClosed
      (And.intro E.jacobiNecessaryClosed
        (And.intro E.noetherTheoremClosed
          (And.intro E.minimalSurfaceClosed E.geodesicEquationClosed))))

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse