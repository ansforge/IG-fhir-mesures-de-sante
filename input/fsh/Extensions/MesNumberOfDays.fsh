Extension: EnsNumberOfDays
Id: mes-number-of-days
Description: "Nombre de jours"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_NumberOfDays"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_NumberOfDays" (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ..1
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..