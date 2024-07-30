Profile: MesFrObservationHeartrate
Parent: $heartrate
Id: mesures-fr-observation-heartrate
Title: "Fréquence Cardiaque"
Description: "Profil de la ressource Observation pour définir une Fréquence Cardiaque (acronyme : FC ou HR)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    FRCoreObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    FRCoreObservationBodyPositionExtExtension named bodyPosition 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS and
    mesures-moment-of-measurement named MesMomentOfMeasurement 0..1



* extension[levelOfExertion] ^short = "Cette extension permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"
* extension[levelOfExertion] ^definition = "Cette extension permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"

* extension[bodyPosition] ^short = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."
* extension[bodyPosition] ^definition = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."



* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCorePatientProfile or FRCoreRelatedPersonProfile)

* bodySite from $ValueSet-heartRateMeasBodyLocationPrecoordVS (example)
* bodySite.coding from $fr-core-heart-rate-body-position (example)

* method from $ValueSet-heartRateMeasMethodVS (example)
* method ^binding.description = "Methods for heartrate observations."
* method.coding from $fr-core-heart-rate-method (example)

* value[x] ^slicing.rules = #open


* value[x] only Quantity
* value[x] ^slicing.rules = #closed

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method MS
* method from $JDV-J147-MethodHeartrate-MES (extensible)
* method ^short = "Méthode de la mesure"

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"

* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = $JDV-J148-ReferenceRangeAppliesTo-CISIS
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..

* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)