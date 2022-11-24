Profile: ENS_ObservationHeadCircumference
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id: ens-observation-headcircumference
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationHeadCircumference"
* ^version = "1.2"
* ^status = #draft
* ^date = "2022-08-02"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource."
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource.\r\nL’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..1
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationHeadCircumference" (exactly)
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    ENS_ReasonForMeasurement named ENS_ReasonForMeasurement 0..1
* extension[supportingInfo] ^isModifier = false
* extension[ENS_ReasonForMeasurement] ^short = "Motif de la mesure"
* extension[ENS_ReasonForMeasurement] ^definition = "Motif de la mesure"
* extension[ENS_ReasonForMeasurement] ^isModifier = false
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains headCircumCode 1..1
* code.coding[headCircumCode].system 1..
* code.coding[headCircumCode].system = "http://loinc.org" (exactly)
* code.coding[headCircumCode].code 1..
* code.coding[headCircumCode].code = #8287-5 (exactly)
* subject only Reference(fr-patient)
* encounter only Reference(fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or FrPatient or FrPractitioner or FrPractitionerRoleExercice or FrOrganization)
* value[x] only Quantity
* value[x] ^slicing.discriminator[0].type = #type
* value[x] ^slicing.discriminator[=].path = "$this"
* value[x] ^slicing.rules = #open
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #cm (exactly)
* valueQuantity.code from http://hl7.org/fhir/ValueSet/ucum-bodylength|4.0.1 (required)
* valueQuantity.code ^binding.description = "Ucum Body Lengh"