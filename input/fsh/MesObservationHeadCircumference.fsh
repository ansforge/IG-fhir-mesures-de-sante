Profile: MesObservationHeadCircumference
Parent: $vitalsigns
Id: mesures-observation-head-circumference
Title: "Périmètre Crânien"
Description: "Profil de la ressource Observation pour définir un Périmètre Crânien"

* insert ObservationResultsMesures

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains headCircumCode 1..1
* code.coding[headCircumCode] = http://loinc.org#8287-5


* value[x] only Quantity
* valueQuantity.unit = "cm"
* valueQuantity.value 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..
* value[x] ^slicing.rules = #open



* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"
