Profile: MesObservationHb1Ac
Parent: $vitalsigns
Id: mesures-observation-hb1ac
Title: "Hémoglobine glyquée (Hb1Ac)"
Description: """Profil de la ressource Observation pour définir l’hémoglobine glyquée (Hb1Ac) mesurée en %."""

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1

* category[VSCat].coding.display = "vital-signs" 


* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #pattern
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains HB1AC 1..1
* code.coding[HB1AC] = http://loinc.org#4548-4

* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* effective[x] only dateTime
* performer only Reference(CareTeam or RelatedPerson or $fr-practitioner or PractitionerRole or $fr-organization or $fr-patient)

* value[x] only Quantity
* valueQuantity.value ^short = "Valeur mesurée"
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" 
* valueQuantity.code 1..
* valueQuantity.code = #%

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method MS
* method from method-glucose-vs (extensible)

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"
