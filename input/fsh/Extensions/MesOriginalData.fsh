Extension: MesOriginalData
Id: mesures-original-data
Title: "Valeur originale"
Description: "Extension permettant de renseigner la donnée originale. \r\nDans le cas où une conversion d'unité a été effectuée sur la valeur de la mesure, cette extension permet de conserver la valeur originale telle que mesurée par le dispositif."
* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "Valeur originale de la donnée"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    has-been-converted 1..1 and
    original-code 1..1 and
    original-value 1..1

* extension[has-been-converted].value[x] only boolean
* extension[has-been-converted] ^short = "Indication permettant de savoir si la valeur a été convertie."
* extension[has-been-converted].valueBoolean = true

* extension[original-code].value[x] only CodeableConcept
* extension[original-code] ^short = "Code original de la donnée. Il permet notamment d'identifier le niveau de comparabilité des résultats entre eux. Le choix a été fait de ne pas indiquer directement le numéro de comparabilité mais d'indiquer directement le code LOINC d'origine pour identifier le numéro de comparabilité dans le jeu de valeur circuit de la biologie."

* extension[original-value] ^short = "Valeur originale | Original value"
* extension[original-value].value[x] only Quantity