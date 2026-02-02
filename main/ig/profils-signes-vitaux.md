# Les profils FHIR des signes vitaux - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* **Les profils FHIR des signes vitaux**

## Les profils FHIR des signes vitaux

Les profils spécifiques (préfixés “Mes”) spécifiés pour les mesures de santé sont basés sur la ressource FHIR standard “Observation”.

Si un profil InteropSanté existe pour une mesure, le profil spécifique “Mes” correspondant est issu du profil InteropSanté.

Sinon, le profil spécifique “Mes” correspondant est issu du profil FHIR “Vital-signs”.

Le schema ci-dessous illustre la hiérarchie des profils des mesures de santé MES :

### Profils héritant de FrCore

### Profils héritant de HL7 FHIR

