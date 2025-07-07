Extension: MesOriginOfData
Id: mesures-origin-of-data
Title: "Origine de la donnée"
Description: "Extension pour tracer l'origine de la donnée."
* ^context.type = #element
* ^context.expression = "Observation"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    hasBeenConverted 1..1 and
    documentId 1..1 and
    originalLoincCode

* extension[hasBeenConverted].value[x] only boolean
* extension[hasBeenConverted] ^short = "Indication permettant de savoir si la valeur a été convertie."
* extension[documentId].value[x] only Identifier
* extension[documentId] ^short = "Identifiant du document dont est issu la donnée, par exemple le CR-Bio dont est issu une glycémie."
* extension[originalCode] only CodeableConcept
* extension[originalCode] ^short = "Le code original permet de savoir le code d'origine. Il permet notamment d'identifier le niveau de comparabilité des résultats entre eux. Le choix a été fait de ne pas indiquer directement le numéro de comparabilité mais d'indiquer directement le code LOINC d'origine pour identifier le numéro de comparabilité dans le jeu de valeur circuit de la biologie."