import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean.GradientFormation

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean

structure SignalInterpretationPackage {P : ReactionDiffusionPDEPackage} {G : GradientFormationPackage P} where
  thresholdConcentration : ℝ
  targetGeneActivation : Prop
  positionalIdentityAssign : Prop
  interpretationFaithful : Prop
  interpretationFaithfulTerm : interpretationFaithful

def SignalInterpretationClosed {P : ReactionDiffusionPDEPackage} {G : GradientFormationPackage P} (S : SignalInterpretationPackage P G) : Prop :=
  S.interpretationFaithful

theorem signal_interpretation_closed_from_package {P : ReactionDiffusionPDEPackage} {G : GradientFormationPackage P} (S : SignalInterpretationPackage P G) : SignalInterpretationClosed S :=
  S.interpretationFaithfulTerm

end DevelopmentalBiologyMorphogenGradientsLemmaCanonicalLaneLean
end HautevilleHouse
