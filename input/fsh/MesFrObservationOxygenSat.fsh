Profile: MesFrObservationOxygenSat
Parent: $oxygensat
Id: mesures-fr-observation-oxygen-sat
Title: "Saturation en Oxygène"
Description: "Profil de la ressource Observation pour définir une Saturation en Oxygène (acronyme : SPO2)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $workflow-supportingInfo named supportingInfoAdministrationOxygen 0..1 and
    mesures-moment-of-measurement named MesMomentOfMeasurement 0..1




* code.coding 1..

* partOf ..1 MS
* partOf only Reference(FRCoreMedicationAdministrationInhaledOxygenProfile)
* partOf ^definition = "A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a MedicationAdministration. This observation can be related to a inhaled oxygen administration. The mesaurement of the oxygen satuation can't be done without knowing the administration of oxygen. [ Dans le cas où la mesure de la saturation en oxygène intervient en même temps que l'administration d'oxygène, cette mesure est liée dans un évènement plus large qui est l'administration de l'oxygène, via la relation partOf. Cet élément partOf doit être supporté par les implémentations."

* partOf.reference ^mustSupport = false
* subject only Reference(Patient or FRCorePatientProfile)
* encounter only Reference(Encounter or FRCoreEncounterProfile)
* performer only Reference(CareTeam or RelatedPerson or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile)

* bodySite from $ValueSet-sPO2BodyLocationVS (example)
* bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"

* value[x] ^slicing.rules = #closed

* method MS
* method from $JDV-J147-MethodHeartrate-MES (required)
* method.coding.system 1..
* method.coding.code 1..


* category[VSCat].coding.display = "vital-signs" 

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"

