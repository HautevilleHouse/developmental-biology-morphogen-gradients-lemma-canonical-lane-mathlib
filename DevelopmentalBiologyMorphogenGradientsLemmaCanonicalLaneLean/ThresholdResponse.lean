import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure ThresholdResponsePackage where
  targetGene : Type u
  morphogenReceptor : Type v
  signalTransductionPathway : Prop
  thresholdConcentration : Prop
  geneExpressionActivation : Prop
  expressionDomain : Prop

structure ThresholdResponseEvidence (T : ThresholdResponsePackage) where
  signalTransductionPathwayClosed : T.signalTransductionPathway
  thresholdConcentrationClosed : T.thresholdConcentration
  geneExpressionActivationClosed : T.geneExpressionActivation
  expressionDomainClosed : T.expressionDomain

def ThresholdResponseClosed (T : ThresholdResponsePackage) : Prop :=
  T.signalTransductionPathway ∧ T.thresholdConcentration ∧ T.geneExpressionActivation ∧ T.expressionDomain

theorem threshold_response_closed_from_evidence (T : ThresholdResponsePackage) (E : ThresholdResponseEvidence T) : ThresholdResponseClosed T := by
  exact And.intro E.signalTransductionPathwayClosed
    (And.intro E.thresholdConcentrationClosed
      (And.intro E.geneExpressionActivationClosed E.expressionDomainClosed))

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse