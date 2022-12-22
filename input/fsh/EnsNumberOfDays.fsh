Extension: EnsNumberOfDays
Id: EnsNumberOfDays
Description: "Nombre de jours"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_NumberOfDays"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_NumberOfDays" (exactly)
* value[x] only CodeableConcept
* value[x].coding ..1
* value[x].coding.system 1..
* value[x].coding.code 1..