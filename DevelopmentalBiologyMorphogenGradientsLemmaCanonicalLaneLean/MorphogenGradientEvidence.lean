import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenGradientEvidence where
  gradientFormation : Prop
  steadyStateAchieved : Prop
  positionalInformation : Prop
  scalingProperty : Prop
  gradientFormationClosed : gradientFormation
  steadyStateAchievedClosed : steadyStateAchieved
  positionalInformationClosed : positionalInformation
  scalingPropertyClosed : scalingProperty

def MorphogenGradientClosed (E : MorphogenGradientEvidence) : Prop :=
  E.gradientFormation ∧ E.steadyStateAchieved ∧ E.positionalInformation ∧ E.scalingProperty

theorem morphogen_gradient_closed_from_evidence (E : MorphogenGradientEvidence) :
    MorphogenGradientClosed E := by
  exact And.intro E.gradientFormationClosed
    (And.intro E.steadyStateAchievedClosed
      (And.intro E.positionalInformationClosed E.scalingPropertyClosed))

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
