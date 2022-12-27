Alias: $workflow-supportingInfo = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
Alias: $JDV-J159-MethodPainSeverity-ENS = https://mos.esante.gouv.fr/NOS/JDV_J159-MethodPainSeverity-ENS/FHIR/JDV-J159-MethodPainSeverity-ENS

Profile: MesObservationPainSeverity
Parent: $vitalsigns
Id: mes-observation-pain-severity
Description: "Niveau de douleur - profil créé pour l'alimentation de l'Espace Numérique de Santé"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationPainSeverity"
* ^publisher = "ANS"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..*
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationPainSeverity" (exactly)
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mes-reason-for-measurement named ENS_ReasonForMeasurement 0..1
* extension[ENS_ReasonForMeasurement] ^short = "Motif de la mesure"
* extension[ENS_ReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre"

* category[VSCat].coding.display = "Signes vitaux" (exactly)

* code = http://loinc.org#72514-3 (exactly)

* effective[x] only dateTime

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity.unit = "Level" (exactly)
* valueQuantity.code = #1 (exactly) // Quel est ce code ?
* valueQuantity.code 1..

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