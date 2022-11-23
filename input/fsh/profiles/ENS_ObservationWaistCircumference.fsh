Profile: ENS_ObservationWaistCircumference
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id: ens-observation-waistcircumference
* ^meta.lastUpdated = "2022-08-02T10:24:11.1539776+00:00"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationWaistCircumference"
* ^version = "1.2"
* ^status = #draft
* ^date = "2022-08-02"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..1
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationWaistCircumference" (exactly)
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    ENS_ReasonForMeasurement named ENS_ReasonForMeasurement 0..1
* extension[ENS_ReasonForMeasurement] ^short = "Motif de la mesure"
* extension[ENS_ReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre (ex. surpoids ou obésité, diabète, maladie du cœur et des vaisseaux, tabac…)"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains WaistCircumferenceCode 1..1
* code.coding[WaistCircumferenceCode].system 1..
* code.coding[WaistCircumferenceCode].system = "http://loinc.org" (exactly)
* code.coding[WaistCircumferenceCode].code 1..
* code.coding[WaistCircumferenceCode].code = #8280-0 (exactly)
* subject only Reference(fr-patient)
* encounter only Reference(fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or fr-patient or fr-practitioner or $fr-practitioner-role-exercice or fr-organization)
* value[x] only Quantity
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].code 1..
* value[x].code = #cm (exactly)
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..
* bodySite ^short = "Non utilisé"
* bodySite ^definition = "Non utilisé"
* method ^short = "Non utilisé"
* method ^definition = "Non utilisé"
* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\r\n=>cette référence est obligatoire"
* referenceRange.appliesTo ^short = "Non utilisé"
* referenceRange.appliesTo ^definition = "Non utilisé"
* hasMember ^short = "Non utilisé"
* hasMember ^definition = "Non utilisé"
* derivedFrom ^short = "Non utilisé"
* derivedFrom ^definition = "Non utilisé"