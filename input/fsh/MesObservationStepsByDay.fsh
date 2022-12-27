Alias: $workflow-supportingInfo = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
Alias: $fr-encounter = http://interopsante.org/fhir/StructureDefinition/FrEncounter
Alias: $fr-practitioner = http://interopsante.org/fhir/StructureDefinition/FrPractitioner
Alias: $fr-organization = http://interopsante.org/fhir/StructureDefinition/FrOrganization
Alias: $JDV-J158-MethodStepsByDay-ENS = https://mos.esante.gouv.fr/NOS/JDV_J158-MethodStepsByDay-ENS/FHIR/JDV-J158-MethodStepsByDay-ENS

Profile: MesObservationStepsByDay
Parent: $vitalsigns
Id: mes-observation-steps-by-day
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationStepsByDay"

* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..*
* meta.profile = Canonical(mes-observation-steps-by-day) (exactly)

* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mes-reason-for-measurement named ENS_ReasonForMeasurement 0..1

* extension[supportingInfo] ^definition = "Autres ressources pertinentes *du dossier patient*"
* extension[ENS_ReasonForMeasurement] ^short = "Motif de la mesure"
* extension[ENS_ReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…)"

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains StepsByDayCode 1..1
* code.coding[StepsByDayCode].system 1..
* code.coding[StepsByDayCode] = http://loinc.org#41950-7 (exactly)
* code.coding[StepsByDayCode].code 1..

* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or $fr-practitioner or PractitionerRole or $fr-organization or $fr-patient)

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity = $UCUM#1/(24.h)  (exactly)
* valueQuantity.system 1..
* valueQuantity.code 1..

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method from $JDV-J158-MethodStepsByDay-ENS (required)
* method ^binding.description = "JDV_J158-MethodStepsByDay-ENS"
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