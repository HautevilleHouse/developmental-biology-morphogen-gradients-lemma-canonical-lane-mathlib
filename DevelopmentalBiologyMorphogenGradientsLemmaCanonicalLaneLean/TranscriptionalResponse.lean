import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure TranscriptionalResponse where
  targetGeneActivation : Set (ℝ → ℝ)
  doseResponseCurve : Prop
  thresholdConcentration : Prop
  saturationLimit : Prop
  cooperativeBinding : Prop

def TranscriptionalResponseParams (T : TranscriptionalResponse) : Prop :=
  T.doseResponseCurve ∧ T.thresholdConcentration ∧ T.saturationLimit ∧ T.cooperativeBinding

theorem transcriptional_response_from_evidence (T : TranscriptionalResponse) (h : TranscriptionalResponseParams T) :
    T.doseResponseCurve ∧ T.thresholdConcentration ∧ T.saturationLimit ∧ T.cooperativeBinding := h

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
