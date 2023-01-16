Extension: MesReasonForMeasurement
Id: mes-reason-for-measurement
Description: """Motif de la mesure.
Exprimé en texte libre."""
* ^context.type = #element
* ^context.expression = "Observation"
* url = Canonical(mes-reason-for-measurement) (exactly)
* value[x] only string