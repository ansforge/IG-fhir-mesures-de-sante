Extension: MesOriginalValue
Id: mesures-original-value
Title: "Valeur originale"
Description: "Extension sur la valeur originale. \r\nDans le cas où une conversion d'unité a été effectuée sur la valeur de la mesure, cette extension permet de conserver la valeur originale telle que mesurée par le dispositif."
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Nombre de jours"



* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    code 0..1 and
    value 0..1 


* extension[code] ^short = "Code LOINC de la valeur originale | LOINC code of the original value"
* extension[code].value[x] only CodeableConcept


