import canonicalLaneMathlib.PopulationGenetics

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean

structure HardyWeinbergPackage where
  population : Type u
  alleleFrequencies : Type v
  genotypeFrequencies : Type w
  equilibriumCondition : Prop
  randomMating : Prop
  largePopulation : Prop
  noSelection : Prop
  noMutation : Prop
  noMigration : Prop

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.randomMating ∧ H.largePopulation ∧
  H.noSelection ∧ H.noMutation ∧ H.noMigration

end DevelopmentalBiologyOrganogenesisFoundationCanonicalLaneLean
end HautevilleHouse
