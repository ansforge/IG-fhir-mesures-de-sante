
Quatre profils cholestérol ont été définis pour leur échanges


<div class="figure" style="width:100%;">
    <p>{% include cholesterol-overview.svg %}</p>
</div>

{% sql {
  "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition' and Description like '%cholestérol%'",
  "class" : "lines",
  "columns" : [
    { "name" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
    { "name" : "Description", "type" : "markdown", "source" : "Description"}
  ]
} %}

Ces profils peuvent être associés au sein du profil Bundle [MesBundleFluxAlimentationLipid](./StructureDefinition-mesures-bundle-flux-alimentation-cholesterol.html) pour permettre leur échange de manière groupée.
