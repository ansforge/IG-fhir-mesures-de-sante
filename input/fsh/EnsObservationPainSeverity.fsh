Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $workflow-supportingInfo = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
Alias: $ENS_ReasonForMeasurement = http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ReasonForMeasurement
Alias: $PhdDevice = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice
Alias: $JDV-J159-MethodPainSeverity-ENS = https://mos.esante.gouv.fr/NOS/JDV_J159-MethodPainSeverity-ENS/FHIR/JDV-J159-MethodPainSeverity-ENS

Profile: EnsObservationPainSeverity
Parent: $vitalsigns
Id: EnsObservationPainSeverity
Description: "Niveau de douleur - profil créé pour l'alimentation de l'Espace Numérique de Santé"
* ^meta.lastUpdated = "2022-08-02T10:21:27.7804224+00:00"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationPainSeverity"
* ^version = "1.2"
* ^status = #draft
* ^date = "2022-08-02"
* ^publisher = "ANS"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..1
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationPainSeverity" (exactly)
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    $ENS_ReasonForMeasurement named ENS_ReasonForMeasurement 0..1
* extension[ENS_ReasonForMeasurement] ^short = "Motif de la mesure"
* extension[ENS_ReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre"
* category[VSCat].coding.display = "Signes vitaux" (exactly)
* code = http://loinc.org#72514-3 (exactly)
* code.coding.system 1..
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.code 1..
* code.coding.code = #72514-3 (exactly)
* effective[x] only dateTime
* value[x] only Quantity
* value[x].unit 1..
* value[x].code = #1 (exactly)
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].unit = "Level" (exactly)
* value[x].system 1..
* value[x].system ^short = "Code system de l'unité"
* value[x].code 1..
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..
* bodySite ^short = "Lieu de la douleur - Texte libre"
* bodySite ^definition = "Lieu de la douleur - Texte libre"
* method from $JDV-J159-MethodPainSeverity-ENS (required)
* method ^binding.description = "JDV_J159-MethodPainSeverity-ENS"
* method.coding.system 1..
* method.coding.code 1..
* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) =>cette référence est obligatoire\r\nhttp://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code.coding.code"
* component ^slicing.discriminator[+].type = #value
* component ^slicing.discriminator[=].path = "code.coding.system"
* component ^slicing.rules = #open