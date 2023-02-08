

Extension: MesDiabetisType
Id: mes-diabetis-type
Description: """ Type de diabète """
* ^context.type = #element
* ^context.expression = "Observation"
* url = Canonical(mes-diabetis-type) (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J153-TypeDiabete-ENS (required)
* valueCodeableConcept ^binding.description = $JDV-J153-TypeDiabete-ENS
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..