import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure CalculusOfVariationsPackage where
  functional : Type u → ℝ
  firstVariation : Prop
  eulerLagrangeEquations : Prop
  convexity : Prop
  minimizerExists : Prop

structure CalculusOfVariationsEvidence (C : CalculusOfVariationsPackage) where
  firstVariationClosed : C.firstVariation
  eulerLagrangeEquationsClosed : C.eulerLagrangeEquations
  convexityClosed : C.convexity
  minimizerExistsClosed : C.minimizerExists

def CalculusOfVariationsClosed (C : CalculusOfVariationsPackage) : Prop :=
  C.firstVariation ∧ C.eulerLagrangeEquations ∧ C.convexity ∧ C.minimizerExists

theorem calculus_of_variations_closed_from_evidence (C : CalculusOfVariationsPackage) (E : CalculusOfVariationsEvidence C) :
    CalculusOfVariationsClosed C := by
  exact And.intro E.firstVariationClosed (And.intro E.eulerLagrangeEquationsClosed (And.intro E.convexityClosed E.minimizerExistsClosed))

end HautevilleHouse
end HautevilleHouse
