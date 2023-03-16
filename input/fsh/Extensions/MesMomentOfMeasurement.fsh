Extension: MesMomentOfMeasurement
Id: mes-moment-of-measurement
Description: """Moment de la mesure.
Peut être exprimé par un texte libre ou un code."""
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Moment de la mesure"
* . ^definition = "Moment de la mesure"
* value[x] only CodeableConcept
* valueCodeableConcept.coding ..1
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..