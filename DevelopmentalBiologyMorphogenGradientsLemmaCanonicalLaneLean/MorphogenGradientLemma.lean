import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenGradientAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  tissueMorphogenField : Set (space → ℝ)
  sourceProduction : Set (space → ℝ)
  diffusionTensorPositive : Prop
  boundaryConditionsSatisfied : Prop
  gradientEstablished : Prop
  conclusion : gradientEstablished

def MorphogenGradientWitnessClosed (O : MorphogenGradientAdmittedObject) : Prop :=
  O.gradientEstablished

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
