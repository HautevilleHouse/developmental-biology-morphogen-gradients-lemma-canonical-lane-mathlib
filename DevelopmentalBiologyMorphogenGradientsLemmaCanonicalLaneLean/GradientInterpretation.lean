import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure GradientInterpretationPackage where
  concentrationField : ℝ^3 → ℝ
  thresholdConcentration : ℝ
  activationDomain : Set ℝ^3
  differentialResponse : Prop
  positionalInformation : Prop

structure GradientInterpretationEvidence (G : GradientInterpretationPackage) where
  concentrationFieldSmooth : ContDiff ℝ^3 ℝ G.concentrationField
  thresholdPos : G.thresholdConcentration > 0
  activationDomainClosed : G.activationDomain = {x | G.concentrationField x ≥ G.thresholdConcentration}
  differentialResponseClosed : G.differentialResponse
  positionalInformationClosed : G.positionalInformation

def GradientInterpretationClosed (G : GradientInterpretationPackage) : Prop :=
  G.activationDomain = {x | G.concentrationField x ≥ G.thresholdConcentration} ∧
  G.differentialResponse ∧ G.positionalInformation

theorem gradient_interpretation_closed_from_evidence (G : GradientInterpretationPackage)
    (E : GradientInterpretationEvidence G) : GradientInterpretationClosed G := by
  exact And.intro E.activationDomainClosed
    (And.intro E.differentialResponseClosed E.positionalInformationClosed)

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse