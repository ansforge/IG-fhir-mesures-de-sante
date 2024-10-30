
Quatre profils cholestérol ont été définis pour leur échanges


<div class="figure" style="width:100%;">
    <p>{% include cholesterol-overview.svg %}</p>
</div>


{% sql {
  "query" : " select name as Name, Description, Web from Resources WHERE Type = 'StructureDefinition'",
  "class" : "lines",
  "columns" : [
    { "name" : "Titre du profil", "type" : "link", "source" : "Name", "target" : "Web"},
    { "name" : "Description", "type" : "markdown", "source" : "Description"}

  ]

} %}

and Description like "%cholestérol%

Ces profils peuvent être associés au sein du profil Bundle [MesBundleFluxAlimentationLipid](./StructureDefinition-mesures-bundle-flux-alimentation-lipid.html) pour permettre leur échange de manière groupée.
