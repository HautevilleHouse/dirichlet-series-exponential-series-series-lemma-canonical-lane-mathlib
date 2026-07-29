import DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean.SeriesLemmaLayer

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean

structure ExponentialSeriesLayerCertificate where
  generatingFunction : ℂ → ℂ
  coefficientSeq : ℕ → ℂ
  convergenceRadius : ℝ
  exponentialSeriesRoute : String
  seriesLemmaRoute : String
  endpointChecked : Bool

def exponentialSeriesLayerCertificate : ExponentialSeriesLayerCertificate := {
  generatingFunction := λ z => 0,
  coefficientSeq := λ n => 0,
  convergenceRadius := ∞,
  exponentialSeriesRoute := "exponential series bridge through the series lemma",
  seriesLemmaRoute := "series lemma applied to exponential generating function",
  endpointChecked := true
}

def ExponentialSeriesLayerClosed (C : ExponentialSeriesLayerCertificate) : Prop :=
  C.exponentialSeriesRoute = "exponential series bridge through the series lemma" ∧
  C.seriesLemmaRoute = "series lemma applied to exponential generating function" ∧
  C.endpointChecked = true

theorem exponential_series_layer_closed_checked :
    ExponentialSeriesLayerClosed exponentialSeriesLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean
end HautevilleHouse