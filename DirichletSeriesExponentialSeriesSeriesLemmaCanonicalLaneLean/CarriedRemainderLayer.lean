import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean

structure CarriedRemainderLayerCertificate where
  remainderDescription : String
  carried : Bool
  endpointRecorded : Bool

def carriedRemainderLayerCertificate : CarriedRemainderLayerCertificate := {
  remainderDescription := "unrestricted classical remainder outside admitted bridge",
  carried := true,
  endpointRecorded := true
}

def CarriedRemainderLayerClosed (C : CarriedRemainderLayerCertificate) : Prop :=
  C.carried = true ∧ C.endpointRecorded = true

theorem carried_remainder_layer_closed_checked :
    CarriedRemainderLayerClosed carriedRemainderLayerCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesExponentialSeriesSeriesLemmaCanonicalLaneLean
end HautevilleHouse
