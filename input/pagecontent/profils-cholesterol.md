
Quatre profils cholestérol ont été définis pour leur échanges

{% sql SELECT '[' || Title || '](./StructureDefinition-' || id || '.html)' as "Titre du profil", Description FROM Resources WHERE Type = 'StructureDefinition' and Id like "mesures-fr-cholesterol%" %}

Ces profils peuvent être associés au sein du profil Bundle [MesBundleFluxAlimentationLipid](./StructureDefinition-mesures-bundle-flux-alimentation-lipid.html) pour permettre leur échange de manière groupée.
