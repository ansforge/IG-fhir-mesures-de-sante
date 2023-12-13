Extension: MesReasonForMeasurement
Id: mesures-reason-for-measurement
Title: "Raison de la mesure"
Description: """Extension du Motif de la mesure, exprimé en texte libre  (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…)."""
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Motif de la mesure"

* value[x] only string