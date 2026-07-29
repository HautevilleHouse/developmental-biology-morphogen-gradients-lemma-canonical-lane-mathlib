import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenGradientPDEPackage where
  morphogenType : Type u
  extracellularMatrix : Type v
  diffusionCoefficient : ℝ
  degradationRate : ℝ
  productionRate : ℝ
  gradientEquation : Prop

structure MorphogenGradientPDEEvidence (P : MorphogenGradientPDEPackage) where
  diffusionCoefficientPos : P.diffusionCoefficient > 0
  degradationRateNonneg : P.degradationRate ≥ 0
  productionRateNonneg : P.productionRate ≥ 0
  gradientEquationClosed : P.gradientEquation

def MorphogenGradientPDEClosed (P : MorphogenGradientPDEPackage) : Prop :=
  P.diffusionCoefficient > 0 ∧ P.degradationRate ≥ 0 ∧ P.productionRate ≥ 0 ∧ P.gradientEquation

theorem morphogen_gradient_pde_closed_from_evidence (P : MorphogenGradientPDEPackage)
    (E : MorphogenGradientPDEEvidence P) : MorphogenGradientPDEClosed P := by
  exact And.intro E.diffusionCoefficientPos
    (And.intro E.degradationRateNonneg
      (And.intro E.productionRateNonneg E.gradientEquationClosed))

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse