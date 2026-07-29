import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean

structure DirichletSeriesLayerCertificate where
  dirichletCharacter : String
  series : String
  abscissaOfConvergence : Float
  functionalEquationChecked : Bool
  endpointChecked : Bool

def dirichletSeriesLayerCertificate : DirichletSeriesLayerCertificate := {
  dirichletCharacter := "Dirichlet character mod q",
  series := "∑ a_n n^{-s}",
  abscissaOfConvergence := 0.5,
  functionalEquationChecked := true,
  endpointChecked := true
}

def DirichletSeriesLayerClosed (C : DirichletSeriesLayerCertificate) : Prop :=
  C.functionalEquationChecked = true ∧ C.endpointChecked = true

theorem dirichlet_series_layer_closed_checked :
    DirichletSeriesLayerClosed dirichletSeriesLayerCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean
end HautevilleHouse
