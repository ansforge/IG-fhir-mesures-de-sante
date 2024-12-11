
Quatre profils cholestérol ont été établis, associés par une ressource DiagnosticReport, pour permettre leur échange


<div class="figure" style="width:100%;">
    <p>{% include cholesterol-overview.svg %}</p>
</div>

{% sql {
  "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like '%cholestérol%'",
  "class" : "lines",
  "columns" : [
    { "title" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
    { "title" : "Description", "type" : "markdown", "source" : "Description"}
  ]
} %}

Ces profils peuvent être associés au sein du profil Bundle [MesBundleFluxAlimentationLipid](./StructureDefinition-mesures-bundle-flux-alimentation-cholesterol.html) pour permettre leur échange de manière groupée.

L'unité choisie pour les profils cholestérol est "mmol/L" pour correspondre au système international.

Ces profils cholestérol étant liés par une ressource DiagnosticReport, ceux-ci sont utilisés uniquement pour partager les résultats d'un compte rendu de biologie.