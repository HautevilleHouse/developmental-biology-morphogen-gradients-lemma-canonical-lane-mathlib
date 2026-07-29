import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenGradient where
  source : MorphogenSource
  pde : DiffusionReactionPDE
  steadyState : ℝ → ℝ  -- space -> concentration
  monotonicDecreasing : Prop
  positionalInfoCoded : Prop

structure GradientFormationEvidence (G : MorphogenGradient) where
  steadyStateAchieved : G.steadyState = fun x => 0.5  -- placeholder
  monotonicDecreasingClosed : G.monotonicDecreasing
  positionalInfoCodedClosed : G.positionalInfoCoded

def GradientFormationClosed (G : MorphogenGradient) : Prop :=
  G.monotonicDecreasing ∧ G.positionalInfoCoded

theorem gradient_formation_closed_from_evidence
    (G : MorphogenGradient) (E : GradientFormationEvidence G) :
    GradientFormationClosed G := by
  exact And.intro E.monotonicDecreasingClosed E.positionalInfoCodedClosed

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse