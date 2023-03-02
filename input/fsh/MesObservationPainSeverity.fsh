
Profile: MesObservationPainSeverity
Parent: $vitalsigns
Id: mes-observation-pain-severity
Description: "Niveau de douleur - profil créé pour l'alimentation de l'Espace Numérique de Santé"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains MesObservationPainSeverity 1..1 MS
* meta.profile[MesObservationPainSeverity] = Canonical(mes-observation-pain-severity) (exactly)

* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mes-reason-for-measurement named MesReasonForMeasurement 0..1
* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"
* extension[MesReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre"

* category[VSCat].coding.display = "Signes vitaux" 

* code = http://loinc.org#72514-3

* effective[x] only dateTime

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity.unit = "Level" 
* valueQuantity.code = #1  // Correspond à une unité
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1..

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* bodySite ^short = "Lieu de la douleur - Texte libre"
* bodySite ^definition = "Lieu de la douleur - Texte libre"

* method from $JDV-J159-MethodPainSeverity-MES (required)
* method ^binding.description = $JDV-J159-MethodPainSeverity-MES
* method.coding.system 1..
* method.coding.code 1..

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) =>cette référence est obligatoire\r\nhttp://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"
