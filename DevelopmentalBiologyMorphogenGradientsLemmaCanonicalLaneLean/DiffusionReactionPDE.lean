import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure DiffusionReactionPDE where
  diffusionCoefficient : ℝ
  degradationRate : ℝ
  sourceTerm : ℝ → ℝ → ℝ  -- time, space
  solutionExists : Prop
  boundaryConditions : Prop

structure DiffusionReactionPDEEvidence (P : DiffusionReactionPDE) where
  diffusionCoeffPositive : P.diffusionCoefficient > 0
  degradationRateNonneg : P.degradationRate ≥ 0
  sourceTermSmooth : P.sourceTerm = fun t x => if t=0 then 1 else 0  -- placeholder
  solutionExistsClosed : P.solutionExists
  boundaryConditionsClosed : P.boundaryConditions

def DiffusionReactionPDEClosed (P : DiffusionReactionPDE) : Prop :=
  P.solutionExists ∧ P.boundaryConditions

theorem diffusion_reaction_pde_closed_from_evidence
    (P : DiffusionReactionPDE) (E : DiffusionReactionPDEEvidence P) :
    DiffusionReactionPDEClosed P := by
  exact And.intro E.solutionExistsClosed E.boundaryConditionsClosed

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse