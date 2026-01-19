Extension: MesOriginOfData
Id: mesures-origin-of-data
Title: "Origine de la donnée"
Description: "Extension pour tracer l'origine de la donnée issue d'un compte rendu de biologie (CR-Bio)."
* ^context.type = #element
* ^context.expression = "Observation"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    hasBeenConverted 1..1 and
    originalCode 1..1 and
    originalValue 1..1

* extension[hasBeenConverted].value[x] only boolean
* extension[hasBeenConverted] ^short = "Indication permettant de savoir si la valeur a été convertie."

* extension[originalCode].value[x] only CodeableConcept
* extension[originalCode] ^short = "Code original de la donnée. Il permet notamment d'identifier le niveau de comparabilité des résultats entre eux. Le choix a été fait de ne pas indiquer directement le numéro de comparabilité mais d'indiquer directement le code LOINC d'origine pour identifier le numéro de comparabilité dans le jeu de valeur circuit de la biologie."

* extension[originalValue] ^short = "Valeur originale | Original value"
* extension[originalValue].value[x] only CodeableConcept