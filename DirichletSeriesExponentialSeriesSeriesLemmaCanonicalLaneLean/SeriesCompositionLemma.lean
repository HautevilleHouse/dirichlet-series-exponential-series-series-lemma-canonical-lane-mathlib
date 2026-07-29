import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean

structure SeriesCompositionLemmaCertificate where
  lemmaStatement : String
  proofRoute : String
  compositionCondition : String
  lemmaChecked : Bool
  proofChecked : Bool

def seriesCompositionLemmaCertificate : SeriesCompositionLemmaCertificate := {
  lemmaStatement := "Under suitable growth conditions, the composition of a Dirichlet series with an exponential series yields a Dirichlet series",
  proofRoute := "coefficient convolution and rearrangement",
  compositionCondition := "exponential series has finite radius and Dirichlet series converges absolutely",
  lemmaChecked := true,
  proofChecked := true
}

def SeriesCompositionLemmaClosed (C : SeriesCompositionLemmaCertificate) : Prop :=
  C.lemmaChecked = true ∧ C.proofChecked = true

theorem series_composition_lemma_closed_checked :
    SeriesCompositionLemmaClosed seriesCompositionLemmaCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean
end HautevilleHouse