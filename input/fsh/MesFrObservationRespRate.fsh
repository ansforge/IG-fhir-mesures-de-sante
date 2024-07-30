Profile: MesFrObservationRespiratoryRate
Parent: $resprate
Id: mesures-fr-observation-resp-rate
Title: "Fréquence respiratoire"
Description: "Profil de la ressource Observation pour définir une fréquence respiratoire (acronyme : FR)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    FRCoreObservationBodyPositionExtExtension named bodyPosition 0..1 and
    FRCoreObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS and
    mesures-moment-of-measurement named MesMomentOfMeasurement 0..1

* code 1..1
* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCoreRelatedPersonProfile)

* method from $ValueSet-respiratoryRateMeasMethodVS (example)

* value[x] ^slicing.rules = #closed

* category[VSCat].coding.display = "vital-signs" 

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"