Profile: MesFrObservationBodyTemperature
Parent: $bodytemp
Id: mesures-fr-observation-body-temperature
Title: "Température"
Description: "Profil de la ressource Observation pour définir une température"


* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    MesLevelOfExertionExtension named levelOfExertion 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1

* extension[levelOfExertion] ^short = "Permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"


* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePractitionerProfile or FRCorePatientProfile or FRCoreOrganizationProfile or PractitionerRole)
* bodySite from $ValueSet-bodyTempMeasBodyLocationPrecoordVS (example)

* value[x] ^slicing.rules = #open


* value[x] ^slicing.rules = #open
* value[x] only Quantity
* valueQuantity = $UCUM#Cel
* valueQuantity.system 1..
* valueQuantity.code 1..

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* bodySite from $JDV-J151-BodySiteBodyTemperature-MES (required)
* bodySite.coding.system 1..
* bodySite.coding.code 1..

* method MS
* method from $JDV-J152-MethodBodyTemperature-MES (extensible)

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\r\n, cette référence est obligatoire"


* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)