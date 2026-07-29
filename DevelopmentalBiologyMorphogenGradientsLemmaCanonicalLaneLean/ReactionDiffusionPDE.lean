import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure ReactionDiffusionPDEPackage where
  concentrationField : Type u → Type v
  spatialDomain : Type w
  timeDomain : Type t
  reactionTerm : (concentrationField spatialDomain) → (concentrationField spatialDomain)
  diffusionCoefficient : ℝ
  sourceInput : (concentrationField spatialDomain) → ℝ
  pdeWellPosed : Prop
  pdeWellPosedTerm : pdeWellPosed

def ReactionDiffusionPDEClosed (P : ReactionDiffusionPDEPackage) : Prop :=
  P.pdeWellPosed

theorem reaction_diffusion_pde_closed_from_package (P : ReactionDiffusionPDEPackage) : ReactionDiffusionPDEClosed P :=
  P.pdeWellPosedTerm

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
