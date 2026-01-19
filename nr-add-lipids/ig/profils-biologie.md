# Les profils FHIR des paramètres biologiques - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* **Les profils FHIR des paramètres biologiques**

## Les profils FHIR des paramètres biologiques

Les mesures de biologie peuvent se transmettre accompagnées d’une ressource DiagnosticReport permettant d’indiquer le contexte du rapport.

Ces profils peuvent être associés au sein du profil Bundle [MesBundleFluxAlimentationBiologie](./StructureDefinition-mesures-bundle-flux-alimentation-biologie.md) pour permettre leur échange de manière groupée.

### Choix effectués sur le cholestérol

* L’unité privilégiée pour les profils cholestérol est “mmol/L” pour correspondre au système international.
* Ces profils cholestérol étant liés par une ressource DiagnosticReport, ceux-ci sont utilisés uniquement pour partager les résultats d’un compte rendu de biologie.
* Les données pouvant être remplies par un patient (recopie de son CR-bio) se limitent aux mesures de l’aspect, du cholestérol total et des triglycérides. Les mesures d’HDL et de LDL nécessitent la méthode pour être comparée, demandant ainsi trop de détails à l’utilisateur.

### Liste des profils


| | |
| :--- | :--- |
| Titre du profil | Description |
| [MesBundleFluxAlimentationBiologie](StructureDefinition-mesures-bundle-flux-alimentation-biologie.md) | Profil biologie de la ressource Bundle du flux d'alimentation des mesures de biologie à transmettre |
| [MesDiagnosticReport](StructureDefinition-mesures-diagnostic-report.md) | Profil biologie de la ressource DiagnosticReport pour définir un rapport de biologie |
| [MesFrObservationCholesterolAspect](StructureDefinition-mesures-observation-cholesterol-aspect.md) | Profil biologie de la ressource Observation pour définir l'aspect du cholestérol |
| [MesFrObservationCholesterolHDL](StructureDefinition-mesures-observation-cholesterol-hdl.md) | Profil biologie de la ressource Observation pour définir le cholestérol HDL |
| [MesFrObservationCholesterolLDL](StructureDefinition-mesures-observation-cholesterol-ldl.md) | Profil biologie de la ressource Observation pour définir le cholestérol LDL |
| [MesFrObservationCholesterolRatio](StructureDefinition-mesures-observation-cholesterol-ratio.md) | Profil biologie de la ressource Observation pour définir le ratio cholestérol LDL/HDL |
| [MesFrObservationCholesterolTotal](StructureDefinition-mesures-observation-cholesterol-total.md) | Profil biologie de la ressource Observation pour définir le cholestérol total |
| [MesFrObservationCholesterolTrigly](StructureDefinition-mesures-observation-cholesterol-trigly.md) | Profil biologie de la ressource Observation pour définir le cholestérol triglycerides |
| [MesObservationGlucose](StructureDefinition-mesures-observation-glucose.md) | Profil biologie de la ressource Observation pour définir une GlycémieCe profil permet de gérer 3 types d'indicateurs de glycémie:* le taux de glucose sanguin, mesuré en mg/dl
* le taux de glucose interstitiel, mesuré en mg/dl
* l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %
L'extension MesNumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .L'extension MesMomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin. |
| [MesOriginOfData](StructureDefinition-mesures-origin-of-data.md) | Extension pour tracer l'origine de la donnée issue d'un compte rendu de biologie (CR-Bio). |

