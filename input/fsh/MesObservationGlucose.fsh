
Profile: MesObservationGlucose
Parent: $vitalsigns
Id: mesures-observation-glucose
Description: """Glycémie - profil créé pour l'alimentation de l'Espace Numérique de Santé.

Ce profil permet de gérer 4 types d'indicateurs de glycémie:
- le taux de glucose sanguin, mesuré en mg/dl
- le taux de glucose interstitiel, mesuré en mg/dl
- l’hémoglobine glyquée (Hb1Ac) mesurée en %
- l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %

L'extension MesNumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .

L'extension MesMomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin."""

* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1 and
    mesures-moment-of-measurement named MesMomentOfMeasurement 0..1 and
    mesures-number-of-days named MesNumberOfDays 0..1 and
    mesures-diabetis-type named MesDiabetisType 0..1

* extension[MesMomentOfMeasurement].value[x] from $JDV-J157-MomentGlucose-MES (required)

* category[VSCat].coding.display = "Signes vitaux" 

* code from $JDV-J154-TypeGlucose-MES (extensible)
* code ^short = "Types de glycémie"
* code ^definition = "Types de glycémie:\r\n• Glucose sanguin\r\n• Glucose interstitiel\r\n• Hémoglobine glyquée (HbA1c)\r\n• Index de gestion de glycémie (IGG)"
* code ^binding.description = "Glucose sanguin ou intersticiel"
* code.coding.system 1..
* code.coding.code 1..

* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* effective[x] only dateTime
* performer only Reference(CareTeam or RelatedPerson or $fr-practitioner or PractitionerRole or $fr-organization or $fr-patient)

* value[x] only Quantity
* valueQuantity.value ^short = "Valeur mesurée"
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" 
* valueQuantity.code 1..
* valueQuantity.code from $JDV-J163-GlucoseUnits-MES (required)
* valueQuantity.code ^binding.description = $JDV-J163-GlucoseUnits-MES

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method from method-glucose-vs (required)
* method ^short = "JDV pour la glycémie"
* method.coding.system 1..1
* method.coding.code 1..1

* device only Reference($PhdDevice)
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) =>cette référence est obligatoire"

* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = "JDV_J148-ReferenceRangeAppliesTo-CISIS"
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..
