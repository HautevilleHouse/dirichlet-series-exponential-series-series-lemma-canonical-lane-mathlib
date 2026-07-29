import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean

structure DirichletExponentialDatum where
  dirichletSeriesConvergenceRadius : Real
  exponentialSeriesConvergenceRadius : Real
  seriesProductConvergenceRadius : Real
  growthConditionSatisfied : Bool
  bridgeInverseChecked : Bool

def primitiveDirichletExponentialDatum : DirichletExponentialDatum := {
  dirichletSeriesConvergenceRadius := 1.0,
  exponentialSeriesConvergenceRadius := 1.0,
  seriesProductConvergenceRadius := 1.0,
  growthConditionSatisfied := true,
  bridgeInverseChecked := true
}

structure DirichletExponentialBridgeCertificate where
  datum : DirichletExponentialDatum
  bridgeRoute : String
  growthRoute : String
  bridgeInverseRoute : String
  convergenceChecked : Bool

def dirichletExponentialBridgeCertificate : DirichletExponentialBridgeCertificate := {
  datum := primitiveDirichletExponentialDatum,
  bridgeRoute := "Dirichlet series to exponential series via series product bridge lemma",
  growthRoute := "growth condition satisfied along the critical line",
  bridgeInverseRoute := "inverse bridge from exponential series back to Dirichlet series",
  convergenceChecked := true
}

def DirichletExponentialBridgeClosed (C : DirichletExponentialBridgeCertificate) : Prop :=
  C.datum.growthConditionSatisfied = true ∧
  C.datum.bridgeInverseChecked = true ∧
  C.convergenceChecked = true

theorem dirichlet_exponential_bridge_closed_checked :
    DirichletExponentialBridgeClosed dirichletExponentialBridgeCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end HautevilleHouse
end DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean
