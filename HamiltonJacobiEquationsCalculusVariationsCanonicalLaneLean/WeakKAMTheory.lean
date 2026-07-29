import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure WeakKAMPackage where
  configSpace : Type u
  criticalValue : Real
  weakKAMSolutions : (configSpace -> Real) -> Prop
  weakKAMExistence : Prop
  weakKAMRegularity : Prop

def WeakKAMSolutionsExist (W : WeakKAMPackage) : Prop :=
  W.weakKAMExistence

structure WeakKAMEvidence (W : WeakKAMPackage) where
  criticalValueClosed : W.criticalValue > 0
  weakKAMExistenceClosed : W.weakKAMExistence
  weakKAMRegularityClosed : W.weakKAMRegularity

def WeakKAMClosed (W : WeakKAMPackage) : Prop :=
  W.criticalValue > 0 ∧ W.weakKAMExistence ∧ W.weakKAMRegularity

theorem weak_kam_closed_from_evidence
    (W : WeakKAMPackage) (E : WeakKAMEvidence W) :
    WeakKAMClosed W := by
  exact And.intro E.criticalValueClosed
    (And.intro E.weakKAMExistenceClosed E.weakKAMRegularityClosed)

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse