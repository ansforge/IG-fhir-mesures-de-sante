Profile: ENS_ObservationGlucose
Parent: http://hl7.org/fhir/StructureDefinition/vitalsigns
Id: ens-observation-glucose
Description: """Glycémie - profil créé pour l'alimentation de l'Espace Numérique de Santé.

Ce profil permet de gérer 4 types d'indicateurs de glycémie:
- le taux de glucose sanguin, mesuré en mg/dl
- le taux de glucose interstitiel, mesuré en mg/dl
- l’hémoglobine glyquée (Hb1Ac) mesurée en %
- l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %

L'extension ENS_NumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .

L'extension ENS_MomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin."""
* ^meta.lastUpdated = "2022-08-02T10:20:25.1804375+00:00"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationGlucose"
* ^version = "1.2"
* ^status = #draft
* ^date = "2022-08-02"
* ^publisher = "ANS"
* meta 1..
* meta.profile 1..1
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationGlucose" (exactly)
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    ENS_ReasonForMeasurement named ENS_ReasonForMeasurement 0..1 and
    ENS_MomentOfMeasurement named ENS_MomentOfMeasurement 0..1 and
    ENS_NumberOfDays named ENS_NumberOfDays 0..1 and
    ENS_DiabetisType named ENS_DiabetisType 0..1
* extension[ENS_ReasonForMeasurement] ^short = "Motif de la mesure"
* extension[ENS_ReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…)"
* extension[ENS_MomentOfMeasurement] ^short = "Moment de la mesure"
* extension[ENS_MomentOfMeasurement] ^definition = "Moment de la mesure"
* extension[ENS_MomentOfMeasurement].value[x] from $JDV-J157-MomentGlucose-ENS (required)
* extension[ENS_MomentOfMeasurement].value[x] ^binding.description = "JDV-J157-MomentGlucose-ENS"
* extension[ENS_NumberOfDays] ^short = "Nombre de jours"
* extension[ENS_NumberOfDays] ^definition = "Nombre de jours. \r\nUtilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie."
* extension[ENS_NumberOfDays].value[x] 1..
* extension[ENS_NumberOfDays].value[x] from $JDV-J164-GlucoseNumberOfDays-ENS (required)
* extension[ENS_NumberOfDays].value[x] ^binding.description = "JDV_J164-GlucoseNumberOfDays-ENS"
* category[VSCat].coding.display = "Signes vitaux" (exactly)
* code from $JDV-J154-TypeGlucose-ENS (extensible)
* code ^short = "Types de glycémie"
* code ^definition = "Types de glycémie:\r\n• Glucose sanguin\r\n• Glucose interstitiel\r\n• Hémoglobine glyquée (HbA1c)\r\n• Index de gestion de glycémie (IGG)"
* code ^binding.description = "Glucose sanguin ou intersticiel"
* code.coding.system 1..
* code.coding.code 1..
* subject only Reference(fr-patient)
* encounter only Reference(fr-encounter)
* effective[x] only dateTime
* performer only Reference(CareTeam or RelatedPerson or fr-practitioner or fr-practitioner-role-exercice or fr-organization or fr-patient)
* value[x] only Quantity
* value[x].value ^short = "Valeur mesurée"
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].code 1..
* value[x].code from $JDV-J163-GlucoseUnits-ENS (required)
* value[x].code ^binding.description = "JDV-J163-GlucoseUnits-ENS"
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

// TODO : à corriger, method ne peut pas être slicé si max = 1
// ex : https://www.hl7.org/fhir/elementdefinition-definitions.html#ElementDefinition.slicing
* method ^slicing.discriminator.type = #pattern
* method ^slicing.discriminator.path = "method.coding.system"
* method ^slicing.rules = #closed
* method ^slicing.ordered = false   // can be omitted, since false is the default
* method ^slicing.description = "Slice based on the method.coding.system pattern"
* method contains
    GlucoseSanguin 0..1 and
    GlucoseInterstitiel 0..1

* method[GlucoseSanguin] from $JDV-J155-MethodGlucoseSanguin-ENS (required)
* method[GlucoseSanguin] ^short = "JDV pour la glycémie sanguine"
* method[GlucoseSanguin] ^binding.description = "JDV_J155-MethodGlucoseSanguin-ENS"
* method[GlucoseSanguin].coding.system 1..1
* method[GlucoseSanguin].coding.code 1..1

* method[GlucoseInterstitiel] from $JDV-J156-MethodGlucoseInterstitiel-ENS (required)
* method[GlucoseInterstitiel] ^short = "JDV pour la glycémie interstitielle"
* method[GlucoseInterstitiel] ^binding.description = "JDV_J156-MethodGlucoseInterstitiel-ENS"
* method[GlucoseInterstitiel].coding.system 1..1
* method[GlucoseInterstitiel].coding.code 1..1

* device only Reference($PhdDevice)
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) =>cette référence est obligatoire"
* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = "JDV_J148-ReferenceRangeAppliesTo-CISIS"
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..