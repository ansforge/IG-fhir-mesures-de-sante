Extension: MesMomentOfMeasurement
Id: mes-moment-of-measurement
Description: """Moment de la mesure.
Peut être exprimé par un texte libre ou un code."""
* ^context.type = #element
* ^context.expression = "Observation"
* url = Canonical(mes-moment-of-measurement) (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ..1
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..