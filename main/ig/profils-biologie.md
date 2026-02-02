# Les profils FHIR des paramètres biologiques - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* **Les profils FHIR des paramètres biologiques**

## Les profils FHIR des paramètres biologiques

Les mesures de biologie peuvent se transmettre accompagnées d’une ressource DiagnosticReport permettant d’indiquer le contexte du rapport.

Ces profils peuvent être associés au sein du profil Bundle [MesBundleFluxAlimentationBiologie](./StructureDefinition-mesures-bundle-flux-alimentation-biologie.md) pour permettre leur échange de manière groupée.

### Choix effectués sur le cholestérol

* L’unité privilégiée pour les profils cholestérol est “mmol/L” pour correspondre au système international.
* Ces profils cholestérol étant liés par une ressource DiagnosticReport, ceux-ci sont utilisés uniquement pour partager les résultats d’un compte rendu de biologie.

### Liste des profils


| | |
| :--- | :--- |
| Titre du profil | Description |
| [MesBundleFluxAlimentationBiologie](StructureDefinition-mesures-bundle-flux-alimentation-biologie.md) | Profil biologie de la ressource Bundle du flux d'alimentation des mesures de biologie à transmettre |
| [MesDiagnosticReport](StructureDefinition-mesures-diagnostic-report.md) | Profil biologie de la ressource DiagnosticReport pour définir un rapport de biologie |
| [MesObservationCholesterolAspect](StructureDefinition-mesures-observation-cholesterol-aspect.md) | Profil biologie de la ressource Observation pour définir l'aspect du cholestérol |
| [MesObservationCholesterolHDL](StructureDefinition-mesures-observation-cholesterol-hdl.md) | Profil biologie de la ressource Observation pour définir le cholestérol HDL |
| [MesObservationCholesterolLDL](StructureDefinition-mesures-observation-cholesterol-ldl.md) | Profil biologie de la ressource Observation pour définir le cholestérol LDL |
| [MesObservationCholesterolTotal](StructureDefinition-mesures-observation-cholesterol-total.md) | Profil biologie de la ressource Observation pour définir le cholestérol total |
| [MesObservationCholesterolTrigly](StructureDefinition-mesures-observation-cholesterol-trigly.md) | Profil biologie de la ressource Observation pour définir le cholestérol triglycerides |
| [MesObservationGlucose](StructureDefinition-mesures-observation-glucose.md) | Profil biologie de la ressource Observation pour définir une GlycémieCe profil permet de gérer 3 types d'indicateurs de glycémie:* le taux de glucose sanguin, mesuré en mg/dl
* le taux de glucose interstitiel, mesuré en mg/dl
* l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %
L'extension MesNumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .L'extension MesMomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin. |

### Exemples de requêtes FHIR

#### Récupérer toutes les mesures de cholestérol associées à un DiagnosticReport

##### Requête 1 : Récupérer un DiagnosticReport avec ses Observations incluses

```
GET [base]/DiagnosticReport?_id=[id]&_include=DiagnosticReport:result

```

Cette requête récupère le DiagnosticReport spécifié et inclut toutes les ressources Observation référencées dans `DiagnosticReport.result`.

##### Requête 2 : Récupérer uniquement les observations de cholestérol liées à un DiagnosticReport

```
GET [base]/Observation?_has:DiagnosticReport:result:_id=[id]&code=http://loinc.org|2093-3,http://loinc.org|2085-9,http://loinc.org|2089-1

```

Cette requête utilise le reverse chaining (`_has`) pour rechercher les Observations référencées par un DiagnosticReport spécifique via `DiagnosticReport.result`, et filtre sur les codes LOINC du cholestérol :

* `2093-3` : Cholesterol [Mass/volume] in Serum or Plasma
* `2085-9` : Cholesterol in HDL [Mass/volume] in Serum or Plasma
* `2089-1` : Cholesterol in LDL [Mass/volume] in Serum or Plasma

##### Requête 3 : Récupérer toutes les observations de cholestérol avec leur DiagnosticReport associé

```
GET [base]/Observation?code=http://loinc.org|2093-3,http://loinc.org|2085-9,http://loinc.org|2089-1&_revinclude=DiagnosticReport:result

```

Cette requête recherche toutes les observations de cholestérol et inclut les DiagnosticReports qui les référencent.

