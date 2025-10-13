# Les profils utilisés pour les mesures de santé - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* **Les profils utilisés pour les mesures de santé**

## Les profils utilisés pour les mesures de santé

Les profils spécifiques (préfixés “Mes”) spécifiés pour les mesures de santé sont basés sur la ressource FHIR standard “Observation”.

Si un profil InteropSanté existe pour une mesure, le profil spécifique “Mes” correspondant est issu du profil InteropSanté.

Sinon, le profil spécifique “Mes” correspondant est issu du profil FHIR “Vital-signs”.

Le schema ci-dessous illustre la hiérarchie des profils des mesures de santé MES :

