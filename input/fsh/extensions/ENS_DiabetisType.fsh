Extension: ENS_DiabetisType
Id: d502df3d-300a-4fcf-b7eb-25c055cf931d
* ^meta.lastUpdated = "2021-06-23T19:26:49.441+00:00"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_DiabetisType"
* ^status = #draft
* ^date = "2021-06-23T10:08:46.3650593+00:00"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_DiabetisType" (exactly)
* value[x] only CodeableConcept
* value[x] from $JDV-J153-TypeDiabete-ENS (required)
* value[x] ^binding.description = "JDV_J153-TypeDiabete-ENSDiabète"
* value[x].coding.system 1..
* value[x].coding.code 1..