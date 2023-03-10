

Extension: MesDiabetisType
Id: mes-diabetis-type
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Type de diabète"
* . ^definition = "Type de diabète"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J153-TypeDiabete-MES (required)
* valueCodeableConcept ^binding.description = $JDV-J153-TypeDiabete-MES
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..