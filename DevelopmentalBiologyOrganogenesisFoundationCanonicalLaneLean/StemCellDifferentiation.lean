import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean

structure StemCellDifferentiationPackage where
  pluripotencyFactors : Type u
  lineageSpecification : Type v
  commitmentStages : Type w
  selfRenewal : Prop
  asymmetricDivision : Prop
  terminalDifferentiation : Prop

structure StemCellDifferentiationEvidence (S : StemCellDifferentiationPackage) where
  selfRenewalClosed : S.selfRenewal
  asymmetricDivisionClosed : S.asymmetricDivision
  terminalDifferentiationClosed : S.terminalDifferentiation

def StemCellDifferentiationClosed (S : StemCellDifferentiationPackage) : Prop :=
  S.selfRenewal ∧ S.asymmetricDivision ∧ S.terminalDifferentiation

theorem stem_cell_differentiation_closed_from_evidence
    (S : StemCellDifferentiationPackage) (E : StemCellDifferentiationEvidence S) :
    StemCellDifferentiationClosed S := by
  exact And.intro E.selfRenewalClosed
    (And.intro E.asymmetricDivisionClosed E.terminalDifferentiationClosed)

end DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean
end HautevilleHouse
