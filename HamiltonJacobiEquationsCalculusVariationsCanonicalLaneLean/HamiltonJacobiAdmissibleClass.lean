import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure HamiltonJacobiAdmittedObject where
  configSpace : Type u
  timeDomain : Type v
  hamiltonian : (timeDomain -> configSpace -> (Nat -> Real) -> Real) -> Prop
  initialCondition : configSpace -> Real
  viscositySolution : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : HamiltonJacobiAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (HamiltonJacobiWitnessClosed A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def HamiltonJacobiWitnessClosed (O : HamiltonJacobiAdmittedObject) : Prop :=
  O.viscositySolution

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse