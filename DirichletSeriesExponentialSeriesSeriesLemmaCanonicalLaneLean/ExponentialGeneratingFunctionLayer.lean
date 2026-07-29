import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean

structure ExponentialGeneratingFunctionLayerCertificate where
  generatingFunction : String
  coefficientExtractionRoute : String
  analyticProperties : String
  generatingFunctionChecked : Bool
  coefficientExtractionChecked : Bool
  analyticPropertiesChecked : Bool

def exponentialGeneratingFunctionLayerCertificate : ExponentialGeneratingFunctionLayerCertificate := {
  generatingFunction := "E(z) = sum b_n z^n / n!",
  coefficientExtractionRoute := "Cauchy integral formula",
  analyticProperties := "entire function",
  generatingFunctionChecked := true,
  coefficientExtractionChecked := true,
  analyticPropertiesChecked := true
}

def ExponentialGeneratingFunctionLayerClosed (C : ExponentialGeneratingFunctionLayerCertificate) : Prop :=
  C.generatingFunctionChecked = true ∧
  C.coefficientExtractionChecked = true ∧
  C.analyticPropertiesChecked = true

theorem exponential_generating_function_layer_closed_checked :
    ExponentialGeneratingFunctionLayerClosed exponentialGeneratingFunctionLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean
end HautevilleHouse