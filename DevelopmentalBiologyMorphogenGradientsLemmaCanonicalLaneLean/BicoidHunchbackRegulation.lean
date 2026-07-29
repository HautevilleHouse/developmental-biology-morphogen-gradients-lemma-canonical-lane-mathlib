import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure BicoidGradient where
  concentration : ℝ → ℝ
  diffusionCoefficient : ℝ
  decayRate : ℝ
  sourceTerm : ℝ

structure HunchbackResponse where
  thresholdConcentration : ℝ
  transcriptionalActivation : ℝ → ℝ
  expressionDomain : Set ℝ

structure BicoidHunchbackEvidence (B : BicoidGradient) (H : HunchbackResponse) where
  gradientFormed : B.concentration = λ x => (B.sourceTerm / B.decayRate) * (1 - Real.exp (-x * Real.sqrt (B.decayRate / B.diffusionCoefficient)))
  activationThreshold : ∃ x₀, B.concentration x₀ = H.thresholdConcentration ∧ ∀ x < x₀, H.transcriptionalActivation x > 0
  expressionDomainClosed : H.expressionDomain = {x | x ≤ x₀}

def BicoidHunchbackClosed (B : BicoidGradient) (H : HunchbackResponse) : Prop :=
  H.expressionDomain = {x | x ≤ x₀}

theorem bicoid_hunchback_closed_from_evidence (B : BicoidGradient) (H : HunchbackResponse) (E : BicoidHunchbackEvidence B H) :
  BicoidHunchbackClosed B H := by
  exact E.expressionDomainClosed

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse