import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure SoluteTransportEvidence where
  sourceLocalization : Prop
  diffusionLengthScale : Prop
  degradationRate : Prop
  clearanceMechanism : Prop
  sourceLocalizationClosed : sourceLocalization
  diffusionLengthScaleClosed : diffusionLengthScale
  degradationRateClosed : degradationRate
  clearanceMechanismClosed : clearanceMechanism

def SoluteTransportParamsClosed (S : SoluteTransportEvidence) : Prop :=
  S.sourceLocalization ∧ S.diffusionLengthScale ∧ S.degradationRate ∧ S.clearanceMechanism

theorem solute_transport_params_closed_from_evidence (S : SoluteTransportEvidence) :
    SoluteTransportParamsClosed S := by
  exact And.intro S.sourceLocalizationClosed
    (And.intro S.diffusionLengthScaleClosed
      (And.intro S.degradationRateClosed S.clearanceMechanismClosed))

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
