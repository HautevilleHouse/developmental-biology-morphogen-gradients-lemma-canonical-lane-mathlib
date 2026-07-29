import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure MorphogenSource where
  position : ℝ
  secretionRate : ℝ

structure ReceptorBinding where
  bindingAffinity : ℝ
  dissociationRate : ℝ

structure CellResponse where
  thresholdLow : ℝ
  thresholdHigh : ℝ
  responseLow : Prop
  responseMedium : Prop
  responseHigh : Prop

structure FrenchFlagEvidence (M : MorphogenSource) (R : ReceptorBinding) (C : CellResponse) where
  gradientFormed : Prop
  boundariesDefined : M.position < M.position + 1
  domainPartitioned : Set.mem {x | x < 0.3} ∧ Set.mem {x | 0.3 ≤ x ∧ x ≤ 0.6} ∧ Set.mem {x | x > 0.6}

def FrenchFlagClosed (M : MorphogenSource) (R : ReceptorBinding) (C : CellResponse) : Prop :=
  domainPartitioned

theorem french_flag_closed_from_evidence (M : MorphogenSource) (R : ReceptorBinding) (C : CellResponse) (E : FrenchFlagEvidence M R C) : FrenchFlagClosed M R C := by
  exact E.domainPartitioned

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse