Alias: $JDV-J153-TypeDiabete-ENS = https://mos.esante.gouv.fr/NOS/JDV_J153-TypeDiabete-ENS/FHIR/JDV-J153-TypeDiabete-ENS

Extension: MesDiabetisType
Id: mes-diabetis-type
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only CodeableConcept
* value[x] from $JDV-J153-TypeDiabete-ENS (required)
* value[x] ^binding.description = "JDV_J153-TypeDiabete-ENSDiabète"
* value[x].coding.system 1..
* value[x].coding.code 1..