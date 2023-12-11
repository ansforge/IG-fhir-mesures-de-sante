Profile: MesObservationHeadCircumference
Parent: $vitalsigns
Id: mesures-observation-head-circumference
Title: "Périmètre Crânien"
Description: "Observation du Périmètre Crânien"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource.\r\nL’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1

* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains headCircumCode 1..1
* code.coding[headCircumCode].system 1..
* code.coding[headCircumCode].system = "http://loinc.org" 
* code.coding[headCircumCode].code 1..
* code = http://loinc.org#8287-5 

* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or $fr-patient or $fr-practitioner or PractitionerRole or $fr-organization)

* value[x] only Quantity
* valueQuantity.unit = "cm"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..