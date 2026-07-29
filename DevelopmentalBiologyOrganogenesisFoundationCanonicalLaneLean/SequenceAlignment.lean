import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequences : Type u
  scoringMatrix : Type v
  gapPenalty : Prop
  alignmentScore : Prop
  optimalAlignment : Prop
  algorithmUsed : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  gapPenaltyClosed : S.gapPenalty
  alignmentScoreClosed : S.alignmentScore
  optimalAlignmentClosed : S.optimalAlignment
  algorithmUsedClosed : S.algorithmUsed

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.gapPenalty ∧ S.alignmentScore ∧ S.optimalAlignment ∧ S.algorithmUsed

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.gapPenaltyClosed
    (And.intro E.alignmentScoreClosed
      (And.intro E.optimalAlignmentClosed E.algorithmUsedClosed))

end DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean
end HautevilleHouse