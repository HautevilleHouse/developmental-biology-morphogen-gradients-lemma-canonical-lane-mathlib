import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenSource where
  sourceCell : Type
  morphogen : Type
  productionRate : MorphogenSource → ℝ
  sourceLocation : MorphogenSource → ℝᵈ
  sourceActive : Bool

def MorphogenSourceClosed (S : MorphogenSource) : Prop :=
  S.productionRate S > 0 ∧ S.sourceActive = true

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse