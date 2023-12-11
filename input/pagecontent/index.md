Le guide ***mesures de santé*** propose la mise en place des fonctions d'alimentation et de consultation des mesures de santé d’un usager. 

Ce guide s’adresse aux éditeurs de logiciels qui souhaitent mettre en œuvre ces fonctions d'alimentation et de consultation des mesures de santé d'un usager.  

Les spécifications techniques de ce guide s’appuient:

* sur le standard HL7 FHIR et plus particulièrement sur un sous-ensemble des ressources définies par ce standard ainsi que sur la notion d’extension et de profilage des ressources.  
* sur les profils français de la ressource Observation (Profls Interop'Santé ou ANS)
* sur le profil PHD de la ressource Device profilé dans l'Implementation Guide PHD et dont l'usage est défini dans le profil IHE « Personal Health Device Observation Upload (POU) » pour représenter le dispositif connecté ayant effectué la mesure.  
  
Pour les opérations sur les ressources, l’API REST définie par le standard HL7 FHIR est mise en œuvre notamment la logique de la transaction PCH-01 du profil IHE « Personal Health Device Observation Upload (POU) » pour l’alimentation.  

Le lecteur doit être familier de ces concepts pour les mettre en œuvre.

### Liste des profils définis

{% sql SELECT Title, Url FROM Resources WHERE Type = 'StructureDefinition' and Description like "%Profil%"; %}

Cette liste pourra être complétée par d’autres mesures jugées pertinentes (Ex. Fréquence Respiratoire (FR)).  
  
### Contexte métier

Les spécifications techniques des Mesures de santé au format FHIR(1) ont été élaborées à partir des éléments métiers définis par la Cnam (Caisse Nationale d’Assurance Maladie). Elles s’appuient sur les recommandations sémantiques du CGTS (Centre de Gestion des terminologies de Santé) de l’ANS (Agence du Numérique en Santé).
  
### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR (R4.0.1).  
  
Elles font référence à un certain nombre de ressources du standard ainsi qu'aux spécifications de l'API REST FHIR, basée sur le protocole HTTP.  
  
La syntaxe retenue pour les échanges est la syntaxe JSON.  
  
FHIR (Fast Healthcare Interoperability Resources) est un standard élaboré par HL7 qui décrit un ensemble de formats de données et d’éléments, appelés ressources, ainsi qu’une API (Application Programming Interface) pour l’échange des informations de santé.  
  
HL7 (Health Level Seven) est un organisme à but non lucratif accrédité par l’ANSI (American National Standards Institute) et impliqué dans le développement de standards d’interopérabilité internationaux pour l’informatique de santé.  

Il regroupe des experts de l’informatique de santé qui collaborent pour créer un cadre et des standards connexes pour l’échange, l’intégration, le partage et l’accès à des données de santé.  

Il vise à promouvoir l’utilisation de ces standards entre les organisations de santé et au sein d’une même organisation.  
  
### Dépendances

{% include dependency-table.xhtml %}
