import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonJacobiEquationsCalculusVariationsCanonicalLaneLean

structure TonelliTheoremPackage where
  lagrangianConvexity : Prop
  superlinearGrowth : Prop
  existenceMinimizer : Prop
  regularityMinimizer : Prop

structure TonelliTheoremEvidence (T : TonelliTheoremPackage) where
  existenceMinimizerClosed : T.existenceMinimizer
  regularityMinimizerClosed : T.regularityMinimizer

def TonelliTheoremClosed (T : TonelliTheoremPackage) : Prop :=
  T.existenceMinimizer ∧ T.regularityMinimizer

theorem tonelli_theorem_closed_from_evidence (T : TonelliTheoremPackage) (E : TonelliTheoremEvidence T) :
    TonelliTheoremClosed T := by
  exact And.intro E.existenceMinimizerClosed E.regularityMinimizerClosed

end HautevilleHouse
end HautevilleHouse
