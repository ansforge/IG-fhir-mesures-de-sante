
Les mesures de biologie peuvent se transmettre accompagnées d'une ressource DiagnosticReport permettant d'indiquer le contexte du rapport.

Ces profils peuvent être associés au sein du profil Bundle [MesBundleFluxAlimentationBiologie](./StructureDefinition-mesures-bundle-flux-alimentation-biologie.html) pour permettre leur échange de manière groupée.

### Choix effectués sur le cholestérol

* L'unité privilégiée pour les profils cholestérol est "mmol/L" pour correspondre au système international.

* Ces profils cholestérol étant liés par une ressource DiagnosticReport, ceux-ci sont utilisés uniquement pour partager les résultats d'un compte rendu de biologie.

<!-- * Les données pouvant être remplies par un patient (recopie de son CR-bio) se limitent aux mesures de l'aspect, du cholestérol total et des triglycérides. Les mesures d'HDL et de LDL nécessitent la méthode pour être comparée, demandant ainsi trop de détails à l'utilisateur. -->

### Liste des profils

<div class="figure" style="width:100%; overflow:auto">
    <p>{% include bio-overview.svg %}</p>
</div>

{% sql {
  "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like '%biologie%'",
  "class" : "lines",
  "columns" : [
    { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
    { "title" : "Description", "type" : "markdown", "source" : "Description"}
  ]
} %}

### Exemples de requêtes FHIR

#### Récupérer toutes les mesures de cholestérol associées à un DiagnosticReport

##### Requête 1 : Récupérer un DiagnosticReport avec ses Observations incluses

```http
GET [base]/DiagnosticReport?_id=[id]&_include=DiagnosticReport:result
```

Cette requête récupère le DiagnosticReport spécifié et inclut toutes les ressources Observation référencées dans `DiagnosticReport.result`.

<!-- Exemple HAPI fonctionnel au 19.01.2026 https://hapi.fhir.org/baseR4/DiagnosticReport?_id=45020507&_include=DiagnosticReport:result -->

##### Requête 2 : Récupérer uniquement les observations de cholestérol liées à un DiagnosticReport

```http
GET [base]/Observation?_has:DiagnosticReport:result:_id=[id]&code=http://loinc.org|2093-3,http://loinc.org|2085-9,http://loinc.org|2089-1
```

Cette requête utilise le reverse chaining (`_has`) pour rechercher les Observations référencées par un DiagnosticReport spécifique via `DiagnosticReport.result`, et filtre sur les codes LOINC du cholestérol :

* `2093-3` : Cholesterol [Mass/volume] in Serum or Plasma
* `2085-9` : Cholesterol in HDL [Mass/volume] in Serum or Plasma
* `2089-1` : Cholesterol in LDL [Mass/volume] in Serum or Plasma

<!-- Exemple HAPI fonctionnel au 19.01.2026 https://hapi.fhir.org/baseR4/Observation?_has:DiagnosticReport:result:_id=45020507&code=Culture%20Blood%20-%20Central%20Line -->

##### Requête 3 : Récupérer toutes les observations de cholestérol avec leur DiagnosticReport associé

```http
GET [base]/Observation?code=http://loinc.org|2093-3,http://loinc.org|2085-9,http://loinc.org|2089-1&_revinclude=DiagnosticReport:result
```

<!-- Exemple HAPI fonctionnel au 19.01.2026  https://hapi.fhir.org/baseR4/Observation?_revinclude=DiagnosticReport:result&code=Culture%20Blood%20-%20Central%20Line -->

Cette requête recherche toutes les observations de cholestérol et inclut les DiagnosticReports qui les référencent.
