---
topic: Lesprofilsutilisespourlesconstantes
---
## {{page-title}}
&nbsp;

Les profils spécifiques (préfixés "ENS_") spécifiés dans ce document pour les mesures de santé sont basés sur la ressource standard "Observation".

Si un profil InteropSanté existe pour une mesure, le profil spécifique "ENS" correspondant est issu du profil InteropSanté.

Sinon, le profil spécifique "ENS" correspondant est issu du profil FHIR "Vital-signs".
Le schema ci-dessous illustre la hiérarchie des profils des mesures de santé ENS :

{{render:schemaProfilsENS}}

