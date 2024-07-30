Profile: MesObservationHeadCircumference
Parent: $headcircum
Id: mesures-observation-head-circumference
Title: "Périmètre Crânien"
Description: "Profil de la ressource Observation pour définir un Périmètre Crânien"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource.\r\nL’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $workflow-supportingInfo named supportingInfo 0..1 MS and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1

* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains headCircumCode 1..1
* code.coding[headCircumCode] = http://loinc.org#8287-5

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or PractitionerRole or FRCorePatientProfile or FRCoreOrganizationProfile)

* value[x] ^slicing.rules = #open


* valueQuantity.unit = "cm"