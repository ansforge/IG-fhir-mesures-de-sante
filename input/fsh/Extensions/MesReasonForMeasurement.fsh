Extension: MesReasonForMeasurement
Id: mesures-reason-for-measurement
Description: """Motif de la mesure.
Exprimé en texte libre."""
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Motif de la mesure"
* . ^definition = "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…)"
* value[x] only string