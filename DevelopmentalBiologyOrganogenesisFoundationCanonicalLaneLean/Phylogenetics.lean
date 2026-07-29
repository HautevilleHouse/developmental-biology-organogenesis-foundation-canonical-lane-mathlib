import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean

structure PhylogeneticsPackage where
  treeTopology : Type u
  branchLengths : Type v
  substitutionModel : Prop
  likelihoodComputed : Prop
  bootstrapSupport : Prop
  molecularClock : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  substitutionModelClosed : P.substitutionModel
  likelihoodComputedClosed : P.likelihoodComputed
  bootstrapSupportClosed : P.bootstrapSupport
  molecularClockClosed : P.molecularClock

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.substitutionModel ∧ P.likelihoodComputed ∧ P.bootstrapSupport ∧ P.molecularClock

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.substitutionModelClosed
    (And.intro E.likelihoodComputedClosed
      (And.intro E.bootstrapSupportClosed E.molecularClockClosed))

end DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean
end HautevilleHouse