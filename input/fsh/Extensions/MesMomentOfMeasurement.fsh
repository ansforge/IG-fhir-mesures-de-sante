Extension: MesMomentOfMeasurement
Id: mesures-moment-of-measurement
Title: "Moment de la mesure"
Description: """Extension pour indiquer le moment de la mesure"""
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Moment de la mesure"
* . ^definition = "Moment de la mesure"
* value[x] only CodeableConcept
* valueCodeableConcept.coding ..1
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..