import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenSourcePackage where
  tissueRegion : Type u
  sourceCells : Type v
  productionRate : sourceCells → ℝ
  diffusionConstant : ℝ
  degradationRate : ℝ
  inhomogeneityTerm : sourceCells → ℝ
  sourceActive : Prop
  sourceActiveTerm : sourceActive

def MorphogenSourceClosed (P : MorphogenSourcePackage) : Prop :=
  P.sourceActive

theorem morphogen_source_closed_from_package (P : MorphogenSourcePackage) : MorphogenSourceClosed P :=
  P.sourceActiveTerm

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
