Extension: MesReasonForMeasurement
Id: mes-reason-for-measurement
Description: """Motif de la mesure.
Exprimé en texte libre."""
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ReasonForMeasurement"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ReasonForMeasurement" (exactly)
* value[x] only string