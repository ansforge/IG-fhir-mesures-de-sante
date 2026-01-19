# Artifacts Summary - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bundle d'alimentation](StructureDefinition-mesures-bundle-flux-alimentation.md) | Profil de la ressource Bundle du flux d’alimentation à envoyer au serveur |
| [Bundle d'alimentation des mesures de biologie](StructureDefinition-mesures-bundle-flux-alimentation-biologie.md) | Profil biologie de la ressource Bundle du flux d’alimentation des mesures de biologie à transmettre |
| [Cholestérol - HDL](StructureDefinition-mesures-observation-cholesterol-hdl.md) | Profil biologie de la ressource Observation pour définir le cholestérol HDL |
| [Cholestérol - LDL](StructureDefinition-mesures-observation-cholesterol-ldl.md) | Profil biologie de la ressource Observation pour définir le cholestérol LDL |
| [Cholestérol - Ratio LDL/HDL](StructureDefinition-mesures-observation-cholesterol-ratio.md) | Profil biologie de la ressource Observation pour définir le ratio cholestérol LDL/HDL |
| [Cholestérol - aspect](StructureDefinition-mesures-observation-cholesterol-aspect.md) | Profil biologie de la ressource Observation pour définir l’aspect du cholestérol |
| [Cholestérol - total](StructureDefinition-mesures-observation-cholesterol-total.md) | Profil biologie de la ressource Observation pour définir le cholestérol total |
| [Cholestérol - triglycerides](StructureDefinition-mesures-observation-cholesterol-trigly.md) | Profil biologie de la ressource Observation pour définir le cholestérol triglycerides |
| [DiagnosticReport mesures biologie](StructureDefinition-mesures-diagnostic-report.md) | Profil biologie de la ressource DiagnosticReport pour définir un rapport de biologie |
| [Fréquence Cardiaque](StructureDefinition-mesures-fr-observation-heartrate.md) | Profil de la ressource Observation pour définir une Fréquence Cardiaque (acronyme : FC ou HR) |
| [Fréquence respiratoire](StructureDefinition-mesures-fr-observation-resp-rate.md) | Profil de la ressource Observation pour définir une fréquence respiratoire (acronyme : FR) |
| [Glycémie](StructureDefinition-mesures-observation-glucose.md) | Profil biologie de la ressource Observation pour définir une GlycémieCe profil permet de gérer 3 types d’indicateurs de glycémie:* le taux de glucose sanguin, mesuré en mg/dl
* le taux de glucose interstitiel, mesuré en mg/dl
* l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %
L’extension MesNumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .L’extension MesMomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin. |
| [Hémoglobine glyquée (Hb1Ac)](StructureDefinition-mesures-observation-hb1ac.md) | Profil de la ressource Observation pour définir l’hémoglobine glyquée (Hb1Ac) mesurée en %. |
| [Indice de Masse Corporelle](StructureDefinition-mesures-fr-observation-bmi.md) | Profil de la ressource Observation pour définir un Indice de Masse Corporelle (acronyme : IMC ou BMI) |
| [Niveau de douleur](StructureDefinition-mesures-observation-pain-severity.md) | Profil de la ressource Observation pour définir un niveau de douleur |
| [Nombre de pas par jour](StructureDefinition-mesures-observation-steps-by-day.md) | Profil de la ressource Observation pour définir un nombre de pas par jour |
| [Poids](StructureDefinition-mesures-fr-observation-body-weight.md) | Profil de la ressource Observation pour définir un poids |
| [Pression Artérielle](StructureDefinition-mesures-fr-observation-bp.md) | Profil de la ressource Observation pour définir une Pression Artérielle (acronyme : PA ou BP) |
| [Périmètre Crânien](StructureDefinition-mesures-observation-head-circumference.md) | Profil de la ressource Observation pour définir un Périmètre Crânien |
| [Saturation en Oxygène](StructureDefinition-mesures-fr-observation-oxygen-sat.md) | Profil de la ressource Observation pour définir une Saturation en Oxygène (acronyme : SPO2) |
| [Taille](StructureDefinition-mesures-fr-observation-bodyheight.md) | Profil de la ressource Observation pour définir une taille |
| [Température](StructureDefinition-mesures-fr-observation-body-temperature.md) | Profil de la ressource Observation pour définir une température |
| [Tour de taille](StructureDefinition-mesures-observation-waist-circumference.md) | Profil de la ressource Observation pour définir une taille en cm |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Moment de la mesure](StructureDefinition-mesures-moment-of-measurement.md) | Extension pour indiquer le moment de la mesure |
| [Nombre de jours](StructureDefinition-mesures-number-of-days.md) | Extension sur le Nombre de jours. Utilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie. |
| [Origine de la donnée](StructureDefinition-mesures-origin-of-data.md) | Extension pour tracer l’origine de la donnée issue d’un compte rendu de biologie (CR-Bio). |
| [Raison de la mesure](StructureDefinition-mesures-reason-for-measurement.md) | Extension du Motif de la mesure, exprimé en texte libre. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Méthode de mesures de glycémie sanguine ou interstitielle](ValueSet-method-glucose-vs.md) | Méthode de mesures de glycémie sanguine ou interstitielle. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ExampleFrPractitionner001](Practitioner-ExampleFrPractitionner001.md) |  |
| [ExampleMesFrObservationBP001](Observation-ExampleMesFrObservationBP001.md) |  |
| [ExampleMesFrObservationBmi001](Observation-ExampleMesFrObservationBmi001.md) |  |
| [ExampleMesFrObservationBodyHeight001](Observation-ExampleMesFrObservationBodyHeight001.md) |  |
| [ExampleMesFrObservationBodyTemperature001](Observation-ExampleMesFrObservationBodyTemperature001.md) |  |
| [ExampleMesFrObservationBodyWeight001](Observation-ExampleMesFrObservationBodyWeight001.md) |  |
| [ExampleMesFrObservationHeartrate001](Observation-ExampleMesFrObservationHeartrate001.md) |  |
| [ExampleMesFrOxygenSat](Observation-ExampleMesFrOxygenSat.md) |  |
| [ExampleMesFrRespRate](Observation-ExampleMesFrRespRate.md) |  |
| [ExampleMesObservationGlucose001](Observation-ExampleMesObservationGlucose001.md) |  |
| [ExampleMesObservationHeadCircumference001](Observation-ExampleMesObservationHeadCircumference001.md) |  |
| [ExampleMesObservationPainSeverity001](Observation-ExampleMesObservationPainSeverity001.md) |  |
| [ExampleMesObservationStepsByDay001](Observation-ExampleMesObservationStepsByDay001.md) |  |
| [ExampleObservationWaistCircumference001](Observation-ExampleObservationWaistCircumference001.md) |  |
| [ExamplefrPatient001](Patient-ExamplefrPatient001.md) |  |
| [Exemple de mesure Hb1Ac](Observation-exemple-observation-hb1ac.md) | Observation d’une hémoglobine glyquée mesurée à 6.5 % |
| [bundle-example-bio](Bundle-bundle-example-bio.md) |  |
| [bundle-example-body-weight](Bundle-bundle-example-body-weight.md) |  |
| [cholesterol-dr](DiagnosticReport-cholesterol-dr.md) |  |
| [cholesterol-hdl-example](Observation-cholesterol-hdl-example.md) |  |
| [cholesterol-ldl-example](Observation-cholesterol-ldl-example.md) |  |
| [cholesterol-total-example](Observation-cholesterol-total-example.md) |  |
| [cholesterol-trigly-example](Observation-cholesterol-trigly-example.md) |  |
| [glycemia-example](Observation-glycemia-example.md) |  |
| [phd-74E8FFFEFF051C00](Device-phd-74E8FFFEFF051C00.md) |  |

