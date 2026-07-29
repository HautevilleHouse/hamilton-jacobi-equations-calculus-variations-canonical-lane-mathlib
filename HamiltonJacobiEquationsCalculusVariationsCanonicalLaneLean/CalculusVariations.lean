import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure CalculusVariationsPackage (H : HamiltonianDynamicsPackage)
    (P : HamiltonJacobiPDEPackage H) where
  eulerLagrangeEquation : Prop
  firstVariation : Prop
  legendreTransform : Prop
  noetherTheorem : Prop

def CalculusVariationsDefinition (H : HamiltonianDynamicsPackage)
    (P : HamiltonJacobiPDEPackage H) (C : CalculusVariationsPackage H P) : Prop :=
  C.eulerLagrangeEquation ∧ C.firstVariation ∧ C.legendreTransform ∧ C.noetherTheorem

structure CalculusVariationsEvidence {H : HamiltonianDynamicsPackage}
    {P : HamiltonJacobiPDEPackage H} (C : CalculusVariationsPackage H P) where
  eulerLagrangeEquationClosed : C.eulerLagrangeEquation
  firstVariationClosed : C.firstVariation
  legendreTransformClosed : C.legendreTransform
  noetherTheoremClosed : C.noetherTheorem

def CalculusVariationsClosed {H : HamiltonianDynamicsPackage}
    {P : HamiltonJacobiPDEPackage H} (C : CalculusVariationsPackage H P) : Prop :=
  C.eulerLagrangeEquation ∧ C.firstVariation ∧ C.legendreTransform ∧ C.noetherTheorem

theorem calculus_variations_closed_from_evidence
    {H : HamiltonianDynamicsPackage} {P : HamiltonJacobiPDEPackage H}
    (C : CalculusVariationsPackage H P) (E : CalculusVariationsEvidence C) :
    CalculusVariationsClosed C := by
  exact And.intro E.eulerLagrangeEquationClosed
    (And.intro E.firstVariationClosed
      (And.intro E.legendreTransformClosed E.noetherTheoremClosed))

end HautevilleHouse
end HautevilleHouse