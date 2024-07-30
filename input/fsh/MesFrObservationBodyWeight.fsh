Profile: MesFrObservationBodyWeight
Parent: $bodyweight
Id: mesures-fr-observation-body-weight
Title: "Poids"
Description: "Profil de la ressource Observation pour définir un poids"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $workflow-supportingInfo named supportingInfo 0..1 and 
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1


* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCorePatientProfile)


* value[x] ^slicing.rules = #open
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#kg
* valueQuantity.system 1..
* valueQuantity.code 1..

* valueQuantity.code ^definition = "Quantity in \"kg\""

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method MS
* method from $JDV-J145-MethodBodyWeight-MES (extensible)

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour l'observation\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\n, cette référence est obligatoire"


* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)