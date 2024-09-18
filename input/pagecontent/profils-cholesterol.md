
4 profils cholestérol ont été définis pour leur échange. 

{% sql SELECT '[' || Title || '](./StructureDefinition-' || id || '.html)' as "Titre du profil", Description FROM Resources WHERE Type = 'StructureDefinition' and Id like "mesures-fr-cholesterol%" %}

Qu'il est nécessaire de pousser à Mon Espace Santé en utilisant le profil Bundle [MesBundleFluxAlimentationLipid](./StructureDefinition-mesures-bundle-flux-alimentation-lipid.html)