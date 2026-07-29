import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean

structure TissueMorphogenesisPackage where
  cellTypes : Type u
  tissueLayers : Type v
  cellMigrationPaths : Type w
  apicalConstriction : Prop
  convergentExtension : Prop
  invagination : Prop
  tissueFusion : Prop

structure TissueMorphogenesisEvidence (T : TissueMorphogenesisPackage) where
  apicalConstrictionClosed : T.apicalConstriction
  convergentExtensionClosed : T.convergentExtension
  invaginationClosed : T.invagination
  tissueFusionClosed : T.tissueFusion

def TissueMorphogenesisClosed (T : TissueMorphogenesisPackage) : Prop :=
  T.apicalConstriction ∧ T.convergentExtension ∧ T.invagination ∧ T.tissueFusion

theorem tissue_morphogenesis_closed_from_evidence
    (T : TissueMorphogenesisPackage) (E : TissueMorphogenesisEvidence T) :
    TissueMorphogenesisClosed T := by
  exact And.intro E.apicalConstrictionClosed
    (And.intro E.convergentExtensionClosed
      (And.intro E.invaginationClosed E.tissueFusionClosed))

end DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean
end HautevilleHouse
