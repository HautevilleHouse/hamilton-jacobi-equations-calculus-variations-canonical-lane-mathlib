import CanonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure HopfLaxFormulaPackage where
  space : Type u
  costFunction : space → space → ℝ
  initialData : space → ℝ
  time : ℝ
  formula : (space → ℝ) → Prop
  consistency : Prop

structure HopfLaxFormulaEvidence (H : HopfLaxFormulaPackage) where
  consistencyClosed : H.consistency
  formulaDefined : ∀ (u : space → ℝ), H.formula u → True

def HopfLaxFormulaClosed (H : HopfLaxFormulaPackage) : Prop :=
  H.consistency

theorem hopf_lax_formula_closed_from_evidence (H : HopfLaxFormulaPackage) (E : HopfLaxFormulaEvidence H) :
    HopfLaxFormulaClosed H := by
  exact E.consistencyClosed

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse