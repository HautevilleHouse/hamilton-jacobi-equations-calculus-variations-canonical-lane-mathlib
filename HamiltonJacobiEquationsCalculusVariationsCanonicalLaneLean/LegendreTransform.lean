import CanonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure LegendreTransformPackage where
  space : Type u
  functionOnSpace : space → ℝ
  dualSpace : Type v
  legendreTransform : (space → ℝ) → (dualSpace → ℝ)
  involutive : Prop
  convex : Prop

structure LegendreTransformEvidence (L : LegendreTransformPackage) where
  involutiveClosed : L.involutive
  convexClosed : L.convex

def LegendreTransformClosed (L : LegendreTransformPackage) : Prop :=
  L.involutive ∧ L.convex

theorem legendre_transform_closed_from_evidence (L : LegendreTransformPackage) (E : LegendreTransformEvidence L) :
    LegendreTransformClosed L := by
  exact And.intro E.involutiveClosed E.convexClosed

end HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean
end HautevilleHouse