<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Vital Signs Implementation Guide</b><br>
This implementation guide contains the profiles to share vital-signs for the French ecosystem.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<blockquote class="stu-note">
<p>
  <b>Attention !</b> Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante et publiée à utiliser est accessible à l'adresse https://interop.esante.gouv.fr/ig/fhir/mesures
</p>
</blockquote>
{% endif %}

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS">
</div>

Le guide ***mesures de santé*** propose la mise en place des fonctions d'alimentation et de consultation des mesures de santé d’un usager.

Ce guide s’adresse aux éditeurs de logiciels qui souhaitent mettre en œuvre ces fonctions d'alimentation et de consultation des mesures de santé d'un usager.  

Les spécifications techniques de ce guide s’appuient:

* sur le standard HL7 FHIR et plus particulièrement sur un sous-ensemble des ressources définies par ce standard ainsi que sur la notion d’extension et de profilage des ressources.  
* sur les profils français de la ressource Observation (Profls Interop'Santé ou ANS)
* sur le profil PHD de la ressource Device profilé dans l'Implementation Guide PHD et dont l'usage est défini dans le profil IHE « Personal Health Device Observation Upload (POU) » pour représenter le dispositif connecté ayant effectué la mesure.  
  
Pour les opérations sur les ressources, l’API REST définie par le standard HL7 FHIR met en œuvre la logique de la transaction PCH-01 du profil IHE « Personal Health Device Observation Upload (POU) » pour l’alimentation.  

Le lecteur doit être familier de ces concepts pour les mettre en œuvre.

### Liste des profils définis

<!-- like "%Profil%" rajouté car induit une erreur si vide -->
{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like '%Profil%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}

Les profils FHIR pour les mesures de santé s'appuient sur la ressource Observation définie par le standard HL7 FHIR, en ajoutant quelques contraintes indiquées dans la description détaillée de chaque profil.
  
Pour chaque ressource, le lien vers la spécification technique InteropSanté est indiqué.
Cette liste pourra être complétée par d’autres mesures jugées pertinentes.  
  
### Contexte métier

Les spécifications techniques des Mesures de santé au format FHIR ont été élaborées à partir des éléments métiers définis par la CNAM (Caisse Nationale d’Assurance Maladie). Elles s’appuient sur les recommandations sémantiques du CGTS (Centre de Gestion des terminologies de Santé) de l’ANS (Agence du Numérique en Santé).
  
### Standards utilisés

FHIR (Fast Healthcare Interoperability Resources) est un standard élaboré par HL7 qui décrit un ensemble de formats de données et d’éléments, appelés ressources, ainsi qu’une API (Application Programming Interface) pour l’échange des informations de santé. 

HL7 (Health Level Seven) est un organisme à but non lucratif accrédité par l’ANSI (American National Standards Institute) et impliqué dans le développement de standards d’interopérabilité internationaux pour l’informatique de santé. Il regroupe des experts de l’informatique de santé qui collaborent pour créer un cadre et des standards connexes pour l’échange, l’intégration, le partage et l’accès à des données de santé, visant à promouvoir l’utilisation de ces standards entre les organisations de santé et au sein d’une même organisation.  

Ces spécifications techniques se basent sur le standard HL7 FHIR R4 (4.0.1), faisant référence à un certain nombre de ressources du standard ainsi qu'aux spécifications de l'API REST FHIR, basée sur le protocole HTTP. La syntaxe retenue pour les échanges est la syntaxe JSON.

### Problématique connue

Les profils mesures de santé sont optionnellement liés à un device qui doit hériter du profil PHD (Personal Health Device), couvrant uniquement les appareils personnels connectés. Des discussions sont en cours pour intégrer les dispositifs médicaux prescrits dans le parcours de soins modélisé à l'international par le guide d'implémentation PoCD.
En cas de besoins allant dans ce sens, merci de le spécifier dans une [issue GitHub](https://github.com/ansforge/IG-fhir-mesures-de-sante).

### Dépendances

{% include dependency-table.xhtml %}

### Propriété intellectuelle

{% include ip-statements.xhtml %}
