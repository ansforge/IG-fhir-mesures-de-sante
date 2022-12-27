Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $workflow-supportingInfo = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
Alias: $fr-patient = http://interopsante.org/fhir/StructureDefinition/FrPatient
Alias: $fr-encounter = http://interopsante.org/fhir/StructureDefinition/FrEncounter
Alias: $fr-practitioner = http://interopsante.org/fhir/StructureDefinition/FrPractitioner
Alias: $fr-practitioner-role-exercice = http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice
Alias: $fr-organization = http://interopsante.org/fhir/StructureDefinition/FrOrganization
Alias: $PhdDevice = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice
Alias: $JDV-J157-MomentGlucose-ENS = https://mos.esante.gouv.fr/NOS/JDV_J157-MomentGlucose-ENS/FHIR/JDV-J157-MomentGlucose-ENS
Alias: $JDV-J164-GlucoseNumberOfDays-ENS = https://mos.esante.gouv.fr/NOS/JDV_J164-GlucoseNumberOfDays-ENS/FHIR/JDV-J164-GlucoseNumberOfDays-ENS
Alias: $JDV-J154-TypeGlucose-ENS = https://mos.esante.gouv.fr/NOS/JDV_J154-TypeGlucose-ENS/FHIR/JDV-J154-TypeGlucose-ENS
Alias: $JDV-J163-GlucoseUnits-ENS = https://mos.esante.gouv.fr/NOS/JDV_J163-GlucoseUnits-ENS/FHIR/JDV-J163-GlucoseUnits-ENS
Alias: $JDV-J155-MethodGlucoseSanguin-ENS = https://mos.esante.gouv.fr/NOS/JDV_J155-MethodGlucoseSanguin-ENS/FHIR/JDV-J155-MethodGlucoseSanguin-ENS
Alias: $JDV-J156-MethodGlucoseInterstitiel-ENS = https://mos.esante.gouv.fr/NOS/JDV_J156-MethodGlucoseInterstitiel-ENS/FHIR/JDV-J156-MethodGlucoseInterstitiel-ENS
Alias: $JDV-J148-ReferenceRangeAppliesTo-CISIS = https://mos.esante.gouv.fr/NOS/JDV_J148-ReferenceRangeAppliesTo-CISIS/FHIR/JDV-J148-ReferenceRangeAppliesTo-CISIS
Alias: $JDV-J153-TypeDiabete-ENS = https://mos.esante.gouv.fr/NOS/JDV_J153-TypeDiabete-ENS/FHIR/JDV-J153-TypeDiabete-ENS

Profile: MesObservationGlucose
Parent: $vitalsigns
Id: mes-observation-glucose
Description: """Glycémie - profil créé pour l'alimentation de l'Espace Numérique de Santé.

Ce profil permet de gérer 4 types d'indicateurs de glycémie:
- le taux de glucose sanguin, mesuré en mg/dl
- le taux de glucose interstitiel, mesuré en mg/dl
- l’hémoglobine glyquée (Hb1Ac) mesurée en %
- l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %

L'extension ENS_NumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .

L'extension ENS_MomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin."""
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationGlucose"
* ^publisher = "ANS"
* meta 1..
* meta.profile 1..*
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_ObservationGlucose" (exactly)
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mes-reason-for-measurement named ENS_ReasonForMeasurement 0..1 and
    mes-moment-of-measurement named ENS_MomentOfMeasurement 0..1 and
    mes-number-of-days named ENS_NumberOfDays 0..1 and
    mes-diabetis-type named ENS_DiabetisType 0..1
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
* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* effective[x] only dateTime
* performer only Reference(CareTeam or RelatedPerson or $fr-practitioner or $fr-practitioner-role-exercice or $fr-organization or $fr-patient)
* value[x] only Quantity
* value[x].value ^short = "Valeur mesurée"
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].code 1..
* value[x].code from $JDV-J163-GlucoseUnits-ENS (required)
* value[x].code ^binding.description = "JDV-J163-GlucoseUnits-ENS"
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method from method-glucose-vs (required)
* method ^short = "JDV pour la glycémie "
* method.coding.system 1..1
* method.coding.code 1..1

* device only Reference($PhdDevice)
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) =>cette référence est obligatoire"
* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = "JDV_J148-ReferenceRangeAppliesTo-CISIS"
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..
