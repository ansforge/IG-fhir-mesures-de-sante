Extension: EnsNumberOfDays
Id: mes-number-of-days
Description: "Nombre de jours"
* ^context.type = #element
* ^context.expression = "Observation"
* url = Canonical(mes-number-of-days) (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ..1
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..