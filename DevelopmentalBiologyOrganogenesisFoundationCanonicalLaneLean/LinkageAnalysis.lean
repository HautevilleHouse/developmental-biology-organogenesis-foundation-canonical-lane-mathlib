import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerSet : Type u
  pedigree : Type v
  recombinationFraction : Prop
  lodScore : Prop
  linkageSignificant : Prop
  phaseKnown : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  lodScoreClosed : L.lodScore
  linkageSignificantClosed : L.linkageSignificant
  phaseKnownClosed : L.phaseKnown

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.lodScore ∧ L.linkageSignificant ∧ L.phaseKnown

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed
    (And.intro E.lodScoreClosed
      (And.intro E.linkageSignificantClosed E.phaseKnownClosed))

end DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean
end HautevilleHouse