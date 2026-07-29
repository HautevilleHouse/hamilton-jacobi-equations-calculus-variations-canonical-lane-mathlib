import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure OptimalControlPackage (H : HamiltonianDynamicsPackage)
    (P : HamiltonJacobiPDEPackage H) (V : CalculusVariationsPackage H P) where
  valueFunction : Type u
  pontryaginMaximumPrinciple : Prop
  hamiltonJacobiBellmanEquation : Prop
  verificationTheorem : Prop
  optimalFeedback : Prop

def OptimalControlDefinition (H : HamiltonianDynamicsPackage)
    (P : HamiltonJacobiPDEPackage H) (V : CalculusVariationsPackage H P)
    (O : OptimalControlPackage H P V) : Prop :=
  O.pontryaginMaximumPrinciple ∧ O.hamiltonJacobiBellmanEquation ∧ O.verificationTheorem

structure OptimalControlEvidence {H : HamiltonianDynamicsPackage}
    {P : HamiltonJacobiPDEPackage H} {V : CalculusVariationsPackage H P}
    (O : OptimalControlPackage H P V) where
  pontryaginMaximumPrincipleClosed : O.pontryaginMaximumPrinciple
  hamiltonJacobiBellmanEquationClosed : O.hamiltonJacobiBellmanEquation
  verificationTheoremClosed : O.verificationTheorem

def OptimalControlClosed {H : HamiltonianDynamicsPackage}
    {P : HamiltonJacobiPDEPackage H} {V : CalculusVariationsPackage H P}
    (O : OptimalControlPackage H P V) : Prop :=
  O.pontryaginMaximumPrinciple ∧ O.hamiltonJacobiBellmanEquation ∧ O.verificationTheorem

theorem optimal_control_closed_from_evidence
    {H : HamiltonianDynamicsPackage} {P : HamiltonJacobiPDEPackage H}
    {V : CalculusVariationsPackage H P} (O : OptimalControlPackage H P V)
    (E : OptimalControlEvidence O) : OptimalControlClosed O := by
  exact And.intro E.pontryaginMaximumPrincipleClosed
    (And.intro E.hamiltonJacobiBellmanEquationClosed E.verificationTheoremClosed)

end HautevilleHouse
end HautevilleHouse