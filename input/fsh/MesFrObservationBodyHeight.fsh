Profile: MesFrObservationBodyHeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyheight
Id: mesures-fr-observation-bodyheight
Title: "Taille"
Description: "Profil de la ressource Observation pour définir une taille"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    mes-body-position-ext named bodyposition 0..1 and
    $workflow-supportingInfo named supportingInfo 0..1 MS and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1


    // Extension bodyposition définie au niveau du profil d'interopsanté
* extension[bodyposition] ^short = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."
* extension[bodyposition] ^definition = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."

* code.coding 1..

* subject only Reference(FRCorePatientProfile)
* encounter only Reference(FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile)
* method from $ValueSet-heightLengthMeasMethodVS (example)

* value[x] ^slicing.rules = #open


* value[x] ^slicing.rules = #open
* value[x] only Quantity
* valueQuantity = $UCUM#cm
* valueQuantity.system 1..
* valueQuantity.code 1..

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method MS
* method from $JDV-J146-MethodBodyHeight-MES (extensible)

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"


* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)