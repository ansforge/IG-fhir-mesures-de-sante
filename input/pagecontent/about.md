### A propos de ce guide

Cet Implementation Guide a été généré avec l'outil HL7 publisher développé par HL7. Il permet d'associer une documentation technique et une documentation narrative au sein d'un même site web :
* La documentation narrative se trouve dans les différentes pages de cette spécification naviguable à travers les boutons "prev", "bottom", "next" présents en haut et bas de page ou avec la barre de navigation.
* Une représentation graphique des profils spécifiés sous forme de [table logique](http://hl7.org/fhir/R4/formats.html#table) se trouve dans l'onglet Autres ressources > [artifacts](artifacts.html).

Cette nouvelle proposition de diffusion de spécifications se base sur les tendances internationales d'HL7 et utilise les outils open source [FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/) et [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).
Exemples d'usage :
* L'IG [US core](https://www.hl7.org/fhir/us/core)
* L'IG [mcode](http://hl7.org/fhir/us/mcode)
* L'IG [CH core](http://build.fhir.org/ig/hl7ch/ch-core)
* L'IG [BE core](https://build.fhir.org/ig/hl7-be/core)

Une fois validé et publié sur le [FHIR Registry](https://registry.fhir.org/), ce guide pourra être utilisé comme héritage pour être surspécifié. Par exemple, il pourra être surspécifié et versionné pour créer une documentation applicative.


Ce guide a été généré à partir de ce [repository GitHub](https://github.com/ansforge/FIG_ans-ig-mesures), qui contient également l'historique des commits.

Liens utiles :
- [Documentation ANS sur les IGs](https://interop.esante.gouv.fr/ig/documentation)
- [Documentation IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)

### Téléchargements et usage

L'implementation guide contient un package [téléchargeable ici](package.tgz) permettant de valider les instances par rapport aux profils qu'il contient.

Pour cela, il suffit de télécharger le [package.tgz](package.tgz) et l'importer dans un serveur, par exemple sur hapi en suivant ce [script python](https://github.com/nmdp-bioinformatics/igloader) open source.

Vous pourrez ensuite utiliser l'opération [$validate](https://www.hl7.org/fhir/resource-operation-validate.html) pour valider les instances de ressource contre un profil issu de cette spécification.

Ensemble des ressources téléchargeables : 
* [L'ensemble de la specification (zip)](full-ig.zip)
* [Package (tgz)](package.tgz)
* [JSON Définitions (zip)](definitions.json.zip)
* [JSON Exemples (zip)](examples.json.zip)
* [XML Definitions (zip)](definitions.xml.zip)
* [XML Exemples (zip)](examples.ttl.zip)
* [Turtle Définitions](definitions.ttl.zip)