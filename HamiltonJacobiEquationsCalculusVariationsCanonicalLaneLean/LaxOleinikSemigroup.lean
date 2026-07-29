import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure LaxOleinikSemigroupPackage where
  hamiltonian : ℝ → ℝ
  fundamentalSolution : ℝ → ℝ → ℝ → ℝ
  semigroupProperty : Prop
  infConvolution : Prop
  viscositySolutionRepresentation : Prop

structure LaxOleinikSemigroupEvidence (L : LaxOleinikSemigroupPackage) where
  semigroupPropertyClosed : L.semigroupProperty
  infConvolutionClosed : L.infConvolution
  viscositySolutionRepresentationClosed : L.viscositySolutionRepresentation

def LaxOleinikSemigroupClosed (L : LaxOleinikSemigroupPackage) : Prop :=
  L.semigroupProperty ∧ L.infConvolution ∧ L.viscositySolutionRepresentation

theorem lax_oleinik_semigroup_closed_from_evidence (L : LaxOleinikSemigroupPackage) (E : LaxOleinikSemigroupEvidence L) :
    LaxOleinikSemigroupClosed L := by
  exact And.intro E.semigroupPropertyClosed (And.intro E.infConvolutionClosed E.viscositySolutionRepresentationClosed)

end HautevilleHouse
end HautevilleHouse
