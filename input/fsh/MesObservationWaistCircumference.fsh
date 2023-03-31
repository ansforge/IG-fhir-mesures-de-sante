
Profile: MesObservationWaistCircumference
Parent: $vitalsigns
Id: mesures-observation-waist-circumference
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains MesObservationWaistCircumference 1..1 MS
* meta.profile[MesObservationWaistCircumference] = Canonical(mesures-observation-waist-circumference) (exactly)

* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1

* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"
* extension[MesReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre (ex. surpoids ou obésité, diabète, maladie du cœur et des vaisseaux, tabac…)"
* code = http://loinc.org#8280-0 

* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or $fr-patient or $fr-practitioner or PractitionerRole or $fr-organization)

* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#cm
* valueQuantity.system 1..
* valueQuantity.code 1..

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..


* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\r\n=>cette référence est obligatoire"
