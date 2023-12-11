Extension: MesNumberOfDays
Id: mesures-number-of-days
Title: "Nombre de jours"
Description: "Extension sur le Nombre de jours. \r\nUtilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie."
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Nombre de jours"

* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J164-GlucoseNumberOfDays-MES (required)