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

### Liste des profils

Les profils FHIR pour les mesures de santé s'appuient sur la ressource Observation définie par le standard HL7 FHIR, en ajoutant quelques contraintes indiquées dans la description détaillée de chaque profil.
  
Pour chaque ressource, le lien vers la spécification technique InteropSanté est indiqué.
Cette liste pourra être complétée par d’autres mesures jugées pertinentes.  

#### Liste des profils signes vitaux

<!-- like "%Profil%" rajouté car induit une erreur si vide -->
{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description not like '%Profil biologie%' and Description like '%Profil%'",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}

#### Liste des profils de paramètres biologiques

<!-- like "%Profil%" rajouté car induit une erreur si vide -->
{% sql {
    "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like '%Profil biologie%' ",
    "class" : "lines",
    "columns" : [
        { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
        { "title" : "Description", "type" : "markdown", "source" : "Description"}
    ]
} %}

### Problématique connue

Un certain nombre de problématiques connues ont été identifiées. Si vous souhaitez réagir par rapport à ces problématiques connues, merci de commenter dans une [issue GitHub](https://github.com/ansforge/IG-fhir-mesures-de-sante).

1/ Les profils mesures de santé sont optionnellement liés à un device qui doivent hériter du profil PHD (Personal Health Device), couvrant uniquement les appareils personnels connectés. Des discussions sont en cours pour intégrer les dispositifs médicaux prescrits dans le parcours de soins modélisé à l'international par le guide d'implémentation PoCD.

2/ Dans le cadre des mesures biologiques (glycémie, cholestérol), l'intervalle de référence n'est pas rendu techniquement obligatoire dans les profils FHIR contrairement aux [profils internationaux](https://www.hl7.org/fhir/R4/lipid-report.html). Cet intervalle peut varier en fonction de nombreux facteurs tel que l'âge, le sexe, les antécédents... Ceux-ci doivent être nécessairement indiqués si la donnée provient d'un compte rendu de biologie.
Pour l'heure, les données usager sont considérées comme pouvant être interprétées sans intervalle de référence.

3/ Il y a une incohérence entre l'unité de la glycémie qui est actuellement en "g/L" et les unités du cholestérol actuellement en "mmol/L", faut-il faire la modification pour uniformiser et respecter l'unité du système international, c'est à dire en "mmol/L"?

En cas de besoins allant dans ce sens, merci de le spécifier dans une [issue GitHub](https://github.com/ansforge/IG-fhir-mesures-de-sante).

### Contributeurs

Les spécifications techniques des Mesures de santé au format FHIR ont été élaborées par l'ANS (Agence du Numérique en Santé) à partir des éléments métiers définis par la CNAM (Caisse Nationale d’Assurance Maladie). Elles s’appuient sur les recommandations sémantiques du CGTS (Centre de Gestion des terminologies de Santé) de l’ANS et sur les recommandations de la SFIL (Société Française d'Informatique de Laboratoire).

### Dépendances

{% include dependency-table.xhtml %}

### Propriété intellectuelle

{% include ip-statements.xhtml %}
