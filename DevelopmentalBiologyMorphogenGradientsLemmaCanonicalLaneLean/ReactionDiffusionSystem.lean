import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure ReactionDiffusionSystem where
  space : Type u
  topology : TopologicalSpace space
  timeDomain : Set ℝ
  activators : Set (space → ℝ)
  inhibitors : Set (space → ℝ)
  reactionKinetics : Prop
  diffusionCoefficients : Prop
  boundaryConditions : Prop

def ReactionDiffusionWellPosed (R : ReactionDiffusionSystem) : Prop :=
  R.reactionKinetics ∧ R.diffusionCoefficients ∧ R.boundaryConditions

theorem reaction_diffusion_well_posed_from_evidence (R : ReactionDiffusionSystem) (h : ReactionDiffusionWellPosed R) :
    R.reactionKinetics ∧ R.diffusionCoefficients ∧ R.boundaryConditions := h

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
