# Artifacts Summary - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

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
| [Raison de la mesure](StructureDefinition-mesures-reason-for-measurement.md) | Extension du Motif de la mesure, exprimé en texte libre. |
| [Valeur originale](StructureDefinition-mesures-original-data.md) | Extension permettant de renseigner la donnée originale. Dans le cas où une conversion d’unité a été effectuée sur la valeur de la mesure, cette extension permet de conserver la valeur originale telle que mesurée par le dispositif. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Méthode de mesures de glycémie sanguine ou interstitielle](ValueSet-method-glucose-vs.md) | Méthode de mesures de glycémie sanguine ou interstitielle. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Exemple de bundle FHIR pour un bilan lipidique et une glycémie](Bundle-example-mes-fr-bundle-bio-003.md) | Exemple de bundle FHIR pour un bilan lipidique et une glycémie |
| [Exemple de bundle FHIR pour une mesure de poids corporel avec un dispositif PHD](Bundle-example-mes-fr-bundle-body-weight.md) | Exemple de bundle FHIR pour une mesure de poids corporel avec un dispositif PHD |
| [Exemple de dispositif PHD : un oxymètre Nonin](Device-example-mes-fr-phd-device-001.md) | Exemple de dispositif PHD : un oxymètre Nonin |
| [Exemple de mesure Hb1Ac](Observation-example-mes-fr-observation-hb1ac-001.md) | Observation d’une hémoglobine glyquée mesurée à 6.5 % |
| [Exemple de mesure de l'IMC](Observation-example-mes-fr-observation-bmi-001.md) | Exemple de mesure de l’IMC |
| [Exemple de mesure de la fréquence cardiaque](Observation-example-mes-fr-observation-heartrate-001.md) | Exemple de mesure de la fréquence cardiaque |
| [Exemple de mesure de la fréquence respiratoire](Observation-example-mes-fr-observation-resp-rate-001.md) | Exemple de mesure de la fréquence respiratoire |
| [Exemple de mesure de la glycémie](Observation-8057b6ec-1417-4f1f-9a00-b0c46e7e71b1.md) | Exemple de mesure de la glycémie |
| [Exemple de mesure de la glycémie (001)](Observation-example-mes-fr-observation-glucose-001.md) | Exemple de mesure de la glycémie (001) |
| [Exemple de mesure de la pression artérielle](Observation-example-mes-fr-observation-bp-001.md) | Exemple de mesure de la pression artérielle |
| [Exemple de mesure de la saturation en oxygène](Observation-example-mes-fr-observation-oxygen-sat-001.md) | Exemple de mesure de la saturation en oxygène |
| [Exemple de mesure de la sévérité de la douleur](Observation-example-mes-fr-observation-pain-severity-001.md) | Exemple de mesure de la sévérité de la douleur |
| [Exemple de mesure de la température corporelle](Observation-example-mes-fr-observation-body-temperature-001.md) | Exemple de mesure de la température corporelle |
| [Exemple de mesure de poids corporel](Observation-example-mes-fr-observation-body-weight-001.md) | Exemple de mesure de poids corporel |
| [Exemple de mesure de taille corporelle](Observation-example-mes-fr-observation-body-height-001.md) | Exemple de mesure de taille corporelle |
| [Exemple de mesure du cholestérol HDL](Observation-7b166d82-27b6-4878-9765-3fe101618edf.md) | Exemple de mesure du cholestérol HDL |
| [Exemple de mesure du cholestérol LDL](Observation-9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e.md) | Exemple de mesure du cholestérol LDL |
| [Exemple de mesure du cholestérol total](Observation-b7a049e3-c07e-4e1c-95a5-909da37f75ce.md) | Exemple de mesure du cholestérol total |
| [Exemple de mesure du cholestérol triglycérides (003)](Observation-645f7341-715f-44fb-87e9-93f2e7d125a5.md) | Exemple de mesure du cholestérol triglycérides (003) |
| [Exemple de mesure du nombre de pas par jour](Observation-example-mes-fr-observation-steps-by-day-001.md) | Exemple de mesure du nombre de pas par jour |
| [Exemple de mesure du périmètre crânien](Observation-example-mes-fr-observation-head-circumference-001.md) | Exemple de mesure du périmètre crânien |
| [Exemple de mesure du tour de taille](Observation-example-mes-fr-observation-waist-circum-001.md) | Exemple de mesure du tour de taille |
| [Exemple de patient français](Patient-example-mes-fr-patient-001.md) | Exemple de patient français (ressource Patient) |
| [Exemple de practicien français](Practitioner-example-mes-fr-practitionner-001.md) | Exemple de practicien français (ressource Practitioner) |
| [Exemple de rapport diagnostique de bilan lipidique](DiagnosticReport-example-mes-fr-diagnostic-report-cholesterol-003.md) | Exemple de rapport diagnostique de bilan lipidique |

