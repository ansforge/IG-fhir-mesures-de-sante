Extension: MesNumberOfDays
Id: mes-number-of-days
Description: "Nombre de jours"
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Nombre de jours"
* . ^definition = "Nombre de jours. \r\nUtilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie."
* value[x] only CodeableConcept
