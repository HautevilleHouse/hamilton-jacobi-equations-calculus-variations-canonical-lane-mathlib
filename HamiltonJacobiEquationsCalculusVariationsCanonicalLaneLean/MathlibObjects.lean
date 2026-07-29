import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HamiltonJacobiSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HamiltonJacobiAdmittedObject where
  space : HamiltonJacobiSpace
  smoothManifold : Prop
  lagrangianDefined : Prop
  hamiltonianDefined : Prop
  solutionExists : Prop
  conclusion : solutionExists

structure HamiltonJacobiEndgameState where
  object : HamiltonJacobiAdmittedObject

def HamiltonJacobiWitnessClosed (O : HamiltonJacobiAdmittedObject) : Prop :=
  O.solutionExists

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse