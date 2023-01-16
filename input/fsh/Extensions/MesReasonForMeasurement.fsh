Extension: MesReasonForMeasurement
Id: mes-reason-for-measurement
Description: """Motif de la mesure.
Exprimé en texte libre."""
<<<<<<< Updated upstream
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ReasonForMeasurement"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ReasonForMeasurement" (exactly)
=======
* ^context.type = #element
* ^context.expression = "Observation"
* url = Canonical(mes-reason-for-measurement) (exactly)
>>>>>>> Stashed changes
* value[x] only string