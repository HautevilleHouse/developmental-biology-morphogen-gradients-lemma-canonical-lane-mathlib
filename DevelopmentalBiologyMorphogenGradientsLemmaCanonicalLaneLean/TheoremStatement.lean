import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenGradientObject where
  gradientModel : Type
  signalingConcentration : Type
  cellsResponding : Prop
  conclusion : cellsResponding

def MorphogenGradientClosed (O : MorphogenGradientObject) : Prop :=
  O.cellsResponding

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
