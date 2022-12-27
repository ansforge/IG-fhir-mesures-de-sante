Alias: $FrObservationBp = http://interopsante.org/fhir/StructureDefinition/FrObservationBp
Alias: $ENS_ReasonForMeasurement = http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ReasonForMeasurement
Alias: $ENS_MomentOfMeasurement = http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_MomentOfMeasurement
Alias: $FrPatient = http://interopsante.org/fhir/StructureDefinition/FrPatient
Alias: $PhdDevice = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice
Alias: $JDV-J149-BodySiteBP-ENS = https://mos.esante.gouv.fr/NOS/JDV_J149-BodySiteBP-ENS/FHIR/JDV-J149-BodySiteBP-ENS
Alias: $JDV-J150-MethodBP-ENS = https://mos.esante.gouv.fr/NOS/JDV_J150-MethodBP-ENS/FHIR/JDV-J150-MethodBP-ENS
Alias: $JDV-J148-ReferenceRangeAppliesTo-CISIS = https://mos.esante.gouv.fr/NOS/JDV_J148-ReferenceRangeAppliesTo-CISIS/FHIR/JDV-J148-ReferenceRangeAppliesTo-CISIS

Profile: EnsFrObservationBp
Parent: $FrObservationBp
Id: mes-fr-observation-bp
Description: "Pression artérielle - profil créé pour l'alimentation de l'Espace Numérique de Santé"
* ^publisher = "ANS"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource."
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource."
* meta.profile 1..1
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_FrObservationBp" (exactly)
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $ENS_ReasonForMeasurement named ENS_ReasonForMeasurement 0..1 and
    $ENS_MomentOfMeasurement named ENS_MomentOfMeasurement 0..1
* category[VSCat] ^sliceName = "VSCat"
* category[VSCat].coding.display = "Signes vitaux" (exactly)
* subject only Reference($FrPatient)
* effective[x] only dateTime
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..
* interpretation ^short = "Non renseigné"
* interpretation ^definition = "Non renseigné"
* bodySite from $JDV-J149-BodySiteBP-ENS (required)
* bodySite ^binding.description = "JDV_J149-BodySiteBP-ENS"
* bodySite.coding.system 1..
* bodySite.coding.code 1..
* method from $JDV-J150-MethodBP-ENS (required)
* method ^binding.description = "JDV_J150-MethodBP-ENS"
* method.coding.system 1..
* method.coding.code 1..
* device only Reference($PhdDevice)
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) =>cette référence est obligatoire"
* device.reference 1..
* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = "JDV_J148-ReferenceRangeAppliesTo-CISIS"
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..
* component.dataAbsentReason.coding.system 1..
* component.dataAbsentReason.coding.code 1..
* component.referenceRange ^contentReference = "http://hl7.org/fhir/StructureDefinition/Observation#Observation.referenceRange"
* component[SystolicBP] ^sliceName = "SystolicBP"
* component[SystolicBP].value[x] ^slicing.discriminator.type = #type
* component[SystolicBP].value[x] ^slicing.discriminator.path = "$this"
* component[SystolicBP].value[x] ^slicing.rules = #closed
* component[SystolicBP].valueQuantity ^sliceName = "valueQuantity"
* component[SystolicBP].valueQuantity.value ^short = "Valeur mesurée"
* component[SystolicBP].dataAbsentReason.coding.system 1..
* component[SystolicBP].dataAbsentReason.coding.code 1..
* component[DiastolicBP] ^sliceName = "DiastolicBP"
* component[DiastolicBP].value[x] ^slicing.discriminator.type = #type
* component[DiastolicBP].value[x] ^slicing.discriminator.path = "$this"
* component[DiastolicBP].value[x] ^slicing.rules = #closed
* component[DiastolicBP].valueQuantity ^sliceName = "valueQuantity"
* component[DiastolicBP].valueQuantity.value ^short = "Valeur mesurée"


Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: EnsFrObservationBp
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: EnsFrObservationBp
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: EnsFrObservationBp
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: EnsFrObservationBp
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: EnsFrObservationBp
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: EnsFrObservationBp
Target: "http://snomed.org/attributebinding"