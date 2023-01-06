Extension: MesMomentOfMeasurement
Id: mes-moment-of-measurement
Description: """Moment de la mesure.
Peut être exprimé par un texte libre ou un code."""
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_MomentOfMeasurement"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_MomentOfMeasurement" (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ..1
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..