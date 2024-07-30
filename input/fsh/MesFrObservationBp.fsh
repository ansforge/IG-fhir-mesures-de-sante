Profile: MesFrObservationBp
Parent: http://hl7.org/fhir/StructureDefinition/bp
Id: mesures-fr-observation-bp
Title: "Pression Artérielle"
Description: "Profil de la ressource Observation pour définir une Pression Artérielle (acronyme : PA ou BP)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open

* extension contains $workflow-supportingInfo named supportingInfo 0..1 and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1 and
    mesures-moment-of-measurement named MesMomentOfMeasurement 0..1

* category[VSCat].coding.display = "vital-signs" 
* subject only Reference($fr-patient)
* subject 1..1

* effective[x] only dateTime


* code.coding 1..

* encounter only Reference(FRCoreEncounterProfile)
* effective[x] 1..
* effective[x] only dateTime or Period
* effective[x] ^short = "Often just a dateTime for Vital Signs"
* effective[x] ^definition = "Often just a dateTime for Vital Signs"
* performer only Reference(CareTeam or FRCorePatientProfile or FRCorePractitionerProfile or PractitionerRole or FRCoreOrganizationProfile or FRCoreRelatedPersonProfile)

* value[x] ^slicing.rules = #open // Added to resolve "error Observation.value[x] ^slicing.rules: Missing required value"
* value[x] ..0

* bodySite from $bpMeasBodyLocationPrecoordVS (example)
* method from $fr-core-bp-measurement-method (example)

* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.rules = #open
* component ^short = "Used when reporting systolic and diastolic blood pressure."

* component contains
    MeanBP 0..1

* component[SystolicBP].referenceRange ^contentReference = "http://hl7.org/fhir/StructureDefinition/Observation#Observation.referenceRange"
* component[SystolicBP].value[x] ^slicing.rules = #open // Added to resolve "error Observation.value[x] ^slicing.rules: Missing required value"
* component[SystolicBP].code.coding 1..


* component[DiastolicBP] ^short = "Used when reporting diastolic blood pressure."
* component[DiastolicBP] ^definition = "Used when reporting diastolic blood pressure."
* component[DiastolicBP].referenceRange ^contentReference = "http://hl7.org/fhir/StructureDefinition/Observation#Observation.referenceRange"
* component[DiastolicBP].value[x] ^slicing.rules = #open // Added to resolve "error Observation.value[x] ^slicing.rules: Missing required value"
* component[DiastolicBP].code.coding 1..

* component[MeanBP] ^short = "Mean blood pressure"
* component[MeanBP] ^definition = "Mean blood pressure"
* component[MeanBP].code MS
* component[MeanBP].code.coding ^slicing.discriminator[0].type = #value
* component[MeanBP].code.coding ^slicing.discriminator[=].path = "code"
* component[MeanBP].code.coding ^slicing.discriminator[+].type = #value
* component[MeanBP].code.coding ^slicing.discriminator[=].path = "system"
* component[MeanBP].code.coding ^slicing.rules = #open
* component[MeanBP].code.coding contains MBPCode 1..1
* component[MeanBP].code.coding[MBPCode].system 1..
* component[MeanBP].code.coding[MBPCode].system = "http://loinc.org" (exactly)
* component[MeanBP].code.coding[MBPCode].code 1..
* component[MeanBP].code.coding[MBPCode].code = #8478-0 (exactly)
* component[MeanBP].code.coding[MBPCode].code ^short = "Mean blood pressure"
* component[MeanBP].code.coding[MBPCode].code ^definition = "Mean blood pressure"
* component[MeanBP].referenceRange ^contentReference = "http://hl7.org/fhir/StructureDefinition/Observation#Observation.referenceRange"

* bodySite from $JDV-J149-BodySiteBP-MES (required)
* bodySite ^binding.description = $JDV-J149-BodySiteBP-MES
* bodySite.coding.system 1..
* bodySite.coding.code 1..

* method MS
* method from $JDV-J150-MethodBP-MES (extensible)

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"

* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = $JDV-J148-ReferenceRangeAppliesTo-CISIS
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..
* component.referenceRange ^contentReference = "http://hl7.org/fhir/StructureDefinition/Observation#Observation.referenceRange"

* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)