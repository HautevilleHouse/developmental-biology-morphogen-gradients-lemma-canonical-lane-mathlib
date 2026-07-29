import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure TuringPattern where
  activator : Type
  inhibitor : Type
  diffusionRates : ℝ × ℝ
  reactionRates : ℝ × ℝ
  patternFormed : Prop
  wavelengthStable : Prop

structure TuringPatternEvidence (T : TuringPattern) where
  diffusionActivatorLessInhibitor : T.diffusionRates.1 < T.diffusionRates.2
  reactionSatisfiesConditions : T.reactionRates.1 > 0 ∧ T.reactionRates.2 > 0
  patternFormedClosed : T.patternFormed
  wavelengthStableClosed : T.wavelengthStable

def TuringPatternClosed (T : TuringPattern) : Prop :=
  T.patternFormed ∧ T.wavelengthStable

theorem turing_pattern_closed_from_evidence
    (T : TuringPattern) (E : TuringPatternEvidence T) :
    TuringPatternClosed T := by
  exact And.intro E.patternFormedClosed E.wavelengthStableClosed

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse