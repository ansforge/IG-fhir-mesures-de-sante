Profile: MesObservationHeadCircumference
Parent: $FHIRCoreHeadCircumference
Id: mesures-observation-head-circumference
Title: "Périmètre Crânien"
Description: "Profil de la ressource Observation pour définir un Périmètre Crânien"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource.\r\nL’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1

* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"

* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or $fr-patient or $fr-practitioner or PractitionerRole or $fr-organization)

* valueQuantity.unit = "cm"
* valueQuantity.code = #cm
* value[x] ^slicing.rules = #open



* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"
