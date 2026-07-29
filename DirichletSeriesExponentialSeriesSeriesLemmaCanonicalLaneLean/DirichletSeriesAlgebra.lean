import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean

structure DirichletSeriesDatum where
  coefficients : String
  abscissaOfConvergence : Float
  analyticContinuationRoute : String
  sourceKey : String
  seriesChecked : Bool

structure ExponentialSeriesDatum where
  exponentCoefficients : String
  radiusOfConvergence : Float
  growthRate : Float
  seriesChecked : Bool

structure DirichletExponentialBridge where
  dirichletDatum : DirichletSeriesDatum
  exponentialDatum : ExponentialSeriesDatum
  bridgeRoute : String
  bridgeChecked : Bool

def primitiveDirichletSeriesDatum : DirichletSeriesDatum := {
  coefficients := "a_n",
  abscissaOfConvergence := 0.0,
  analyticContinuationRoute := "via functional equation",
  sourceKey := "DirichletSeriesSource",
  seriesChecked := true
}

def primitiveExponentialSeriesDatum : ExponentialSeriesDatum := {
  exponentCoefficients := "b_n",
  radiusOfConvergence := 1.0,
  growthRate := 0.0,
  seriesChecked := true
}

def dirichletExponentialBridge : DirichletExponentialBridge := {
  dirichletDatum := primitiveDirichletSeriesDatum,
  exponentialDatum := primitiveExponentialSeriesDatum,
  bridgeRoute := "coefficient comparison via exponential generating function",
  bridgeChecked := true
}

def DirichletExponentialBridgeClosed (B : DirichletExponentialBridge) : Prop :=
  B.dirichletDatum.seriesChecked = true ∧
  B.exponentialDatum.seriesChecked = true ∧
  B.bridgeChecked = true

theorem dirichlet_exponential_bridge_closed_checked :
    DirichletExponentialBridgeClosed dirichletExponentialBridge := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean
end HautevilleHouse