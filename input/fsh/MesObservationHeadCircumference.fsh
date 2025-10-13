Profile: MesObservationHeadCircumference
Parent: $FHIRCoreHeadCircumference
Id: mesures-observation-head-circumference
Title: "Périmètre Crânien"
Description: "Profil de la ressource Observation pour définir un Périmètre Crânien"

* insert ObservationResultsMesures



* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or $fr-patient or $fr-practitioner or PractitionerRole or $fr-organization)


* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains headCircumCode 1..1
* code.coding[headCircumCode] = http://loinc.org#8287-5

* valueQuantity.unit = "cm"
* valueQuantity.code = #cm
* value[x] ^slicing.rules = #open


* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"
