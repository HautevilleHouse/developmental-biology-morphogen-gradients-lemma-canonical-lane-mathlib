import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenTransportPackage where
  sourceCell : Type u
  sinkCell : Type v
  morphogen : Type w
  concentrationGradient : Prop
  diffusionCoefficient : Prop
  sourceSecretionRate : Prop
  sinkDegradationRate : Prop
  steadyStateProfile : Prop

structure MorphogenTransportEvidence (M : MorphogenTransportPackage) where
  concentrationGradientClosed : M.concentrationGradient
  diffusionCoefficientClosed : M.diffusionCoefficient
  sourceSecretionRateClosed : M.sourceSecretionRate
  sinkDegradationRateClosed : M.sinkDegradationRate
  steadyStateProfileClosed : M.steadyStateProfile

def MorphogenTransportClosed (M : MorphogenTransportPackage) : Prop :=
  M.concentrationGradient ∧ M.diffusionCoefficient ∧ M.sourceSecretionRate ∧ M.sinkDegradationRate ∧ M.steadyStateProfile

theorem morphogen_transport_closed_from_evidence (M : MorphogenTransportPackage) (E : MorphogenTransportEvidence M) : MorphogenTransportClosed M := by
  exact And.intro E.concentrationGradientClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.sourceSecretionRateClosed
        (And.intro E.sinkDegradationRateClosed E.steadyStateProfileClosed)))

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse