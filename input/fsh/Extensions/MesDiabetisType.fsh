Alias: $JDV-J153-TypeDiabete-ENS = https://mos.esante.gouv.fr/NOS/JDV_J153-TypeDiabete-ENS/FHIR/JDV-J153-TypeDiabete-ENS

Extension: MesDiabetisType
Id: mes-diabetis-type
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J153-TypeDiabete-ENS (required)
* valueCodeableConcept ^binding.description = "JDV_J153-TypeDiabete-ENSDiabète"
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..