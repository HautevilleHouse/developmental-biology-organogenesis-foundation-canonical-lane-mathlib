import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean

structure MorphogenGradient where
  morphogen : Type u
  source : Type v
  gradientProfile : Type w
  concentrationGradient : Prop
  targetCellResponse : Prop
  thresholdBasedPatterning : Prop

structure MorphogenGradientEvidence (M : MorphogenGradient) where
  concentrationGradientClosed : M.concentrationGradient
  targetCellResponseClosed : M.targetCellResponse
  thresholdBasedPatterningClosed : M.thresholdBasedPatterning

def MorphogenGradientClosed (M : MorphogenGradient) : Prop :=
  M.concentrationGradient ∧ M.targetCellResponse ∧ M.thresholdBasedPatterning

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradient) (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.concentrationGradientClosed (And.intro E.targetCellResponseClosed E.thresholdBasedPatterningClosed)

end DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean
end HautevilleHouse
