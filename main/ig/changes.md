# Historique des changements - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* **Historique des changements**

## Historique des changements

### Release 3.2.0 de l’Implementation Guide Mesures de santé

Modifications apportées dans la release [3.2.0](https://github.com/ansforge/IG-fhir-mesures-de-sante/milestone/5?closed=1) :

* Suppression du type de diabète dans la ressource Glucose et décommissionnement du JDV J153 [119](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/119)
* Suppression du jdv 148 et mise à jour du dernier package FRCore [122](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/122)
* Création d’un profil spécifique pour hémoglobine glyquée [127](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/127)
* Ajout d’une extension origine de la donnée [128](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/128)
* Mise à jour du profil périmètre crânien et mise à jour du code loinc [130](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/130)
* Mise à jour du package terminologies

### Release 3.1.0 de l’Implementation Guide Mesures de santé

[Modifications apportées dans cette release](https://github.com/ansforge/IG-fhir-mesures-de-sante/milestone/4?closed=1) :

* Uniformisation de l’usage des devices dans l’ensemble des profils [112](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/112)
* Ajout de l’extension reason for measurement dans Observation height [108](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/108)
* Ajout du profil bundle du flux d’alimentation [49](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/49), [67](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/67)
* Mise à jour du narratif [50](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/50), [63](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/63), [69](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/69), [75](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/75), [83](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/83), [84](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/84), [92](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/92), [96](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/96), [97](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/97)
* Fix profil MesObservationHeadCircumference [56](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/56)
* Fix bindings (GlucoseNumberOfDays, interpretation) [57](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/57), [59](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/59), [61](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/61)
* Ajout patient obligatoire dans le profil blood pressure [76](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/76)
* Changement display signes vitaux pour correspondre au profil international [77](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/77)
* Ajout du tag MS aux device. Suppression device de MesObservationPainSeverity et MesObservationWaistCircumference [78](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/78)
* Ajout tag MS à method et passage du binding required à extensible [79](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/79)
* Ajout profils et exemple satO2 et FR [80](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/80), [85](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/85), [89](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/89), [91](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/91)
* Ajout dépendances NOS et FrCore [88](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/88), [106](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/106)
* Fix divers [99](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/99)
* Ajout exemple du bundle d’alimentation [98](https://github.com/ansforge/IG-fhir-mesures-de-sante/pull/98)

### Release 3.0.1 de l’Implementation Guide Mesures de santé

* Rajout de l’onglet ressources de conformité dans le header
* Suppression de l’obligation de préciser le profil dans meta.profile
* Mise à jour des exemples

### Release 3.0.0 de l’Implementation Guide Mesures de santé

* Les symboles underscore ont été supprimés des nom des profils, et le prefixe `ENS_` est devenu `Mes`,
* Dans les profils qui ne descendent pas des profils InteropSante, les références Fr-Patient, Fr-Practitionner, etc… ont été corrigées
* Dans EnsObservationGlucose, le slice sur method (illégal) a été supprimé et remplacé par un binding sur un JDV MethodeGlucoseVS qui inclut les deux JDV,
* La racine des URL canoniques ANS a été changée en http://interop.esante.gouv.fr/ig/fhir/mesures

### Release 1.2 de l’Implementation Guide Mesures de santé

Première version du volet mesures en pdf

