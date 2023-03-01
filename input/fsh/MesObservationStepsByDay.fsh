
Profile: MesObservationStepsByDay
Parent: $vitalsigns
Id: mes-observation-steps-by-day
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains MesObservationStepsByDay 1..1 MS
* meta.profile[MesObservationStepsByDay] = Canonical(mes-observation-steps-by-day) 

* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mes-reason-for-measurement named MesReasonForMeasurement 0..1

* extension[supportingInfo] ^definition = "Autres ressources pertinentes *du dossier patient*"
* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"
* extension[MesReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…)"

// * code.coding ^slicing.discriminator[0].type = #value
// * code.coding ^slicing.discriminator[0].path = "code"
// * code.coding ^slicing.discriminator[0].type = #value
// * code.coding ^slicing.discriminator[0].path = "system"
// * code.coding ^slicing.rules = #open

// * code.coding contains StepsByDayCode 1..1
// * code.coding[StepsByDayCode].code 1..
// * code.coding[StepsByDayCode].system 1..
// * code.coding[StepsByDayCode] = http://loinc.org#41950-7 
* code.coding = http://loinc.org#41950-7

* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or $fr-practitioner or PractitionerRole or $fr-organization or $fr-patient)

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity = $UCUM#1/(24.h)  
* valueQuantity.system 1..
* valueQuantity.code 1..
* valueQuantity.unit = "steps/day" 

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method from $JDV-J158-MethodStepsByDay-MES (required)
* method ^binding.description = $JDV-J158-MethodStepsByDay-MES
* method.coding.system 1..
* method.coding.code 1..

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\r\n=>cette référence est obligatoire"

* referenceRange.appliesTo ^short = "Non utilisé"
* referenceRange.appliesTo ^definition = "Non utilisé"

* hasMember ^short = "Non utilisé"
* hasMember ^definition = "Non utilisé"

* derivedFrom ^short = "Non utilisé"
* derivedFrom ^definition = "Non utilisé"