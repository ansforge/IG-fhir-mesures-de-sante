Extension: ENS_MomentOfMeasurement
Id: 19d63d27-ea13-4b5a-a48c-54ce58be3b0c
Description: """Moment de la mesure.
Peut être exprimé par un texte libre ou un code."""
* ^meta.lastUpdated = "2021-10-27T08:52:44.804+00:00"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_MomentOfMeasurement"
* ^status = #draft
* ^date = "2021-10-27T08:25:49.3103399+00:00"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_MomentOfMeasurement" (exactly)
* value[x] only CodeableConcept
* value[x].coding ..1
* value[x].coding.system 1..
* value[x].coding.code 1..