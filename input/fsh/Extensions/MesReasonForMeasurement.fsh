Extension: MesReasonForMeasurement
Id: mesures-reason-for-measurement
Title: "Raison de la mesure"
Description: """Extension du Motif de la mesure, exprimé en texte libre."""
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Motif de la mesure"

* value[x] only string