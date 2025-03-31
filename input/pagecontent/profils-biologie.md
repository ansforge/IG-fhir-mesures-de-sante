
Les mesures de biologie peuvent se transmettre accompagnée d'une ressource DiagnosticReport permettant d'indiquer le contexte du rapport.

Ces profils peuvent être associés au sein du profil Bundle [MesBundleFluxAlimentationBiologie](./StructureDefinition-mesures-bundle-flux-alimentation-biologie.html) pour permettre leur échange de manière groupée.

### Choix effectués sur le cholestérol

* Six profils cholestérol (Aspect, HDL, LDL, Ratio, Trigly, total) ont été établis, associés par une ressource DiagnosticReport, pour permettre leur échange.

* Le cas échéant, l'unité choisie pour les profils cholestérol est "mmol/L" pour correspondre au système international.

* Ces profils cholestérol étant liés par une ressource DiagnosticReport, ceux-ci sont utilisés uniquement pour partager les résultats d'un compte rendu de biologie.

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
