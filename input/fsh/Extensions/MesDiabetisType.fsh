

Extension: MesDiabetisType
Id: mesures-diabetis-type
Title: "Type de diabète"
Description: "Extension sur le type de diabète"
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Type de diabète"
* . ^definition = "Type de diabète"
* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J153-TypeDiabete-MES (required)
* valueCodeableConcept ..1