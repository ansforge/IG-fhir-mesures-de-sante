Règles de nommage des ressources de conformité
id : utiliser le format kebab-case, ex : fr-patient. (/!\ sur Forge, l'id n'est pas obligatoire, c'est important de le rajouter!)
title : similaire au nom, avec espaces. Ex : Fr Patient
name : utiliser le format PascalCase sans espace. Ex : FrPatient
url : [base]/[ResourceType]/[id] (généré automatiquement par sushi). A noter que [ResourceType] doit respecter le nom et la casse des ressources définies dans FHIR core (ex: StructureDefinition).
SearchParameter.code : toujours en minuscule! Mots séparés par des tirets "-" si besoin
Lors de la création d'un IG pour un projet en particulier, il est possible de préfixer l'ensemble des ressources de conformité par le trigramme du projet (ex : "ror-...")

Ces règles ont été définies en s'inspirant de l'IG us-core, exemple du profil Us Core Patient :

id : us-core-patient
title : US Core Patient Profile
name : USCorePatientProfile
url : http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
L'id de package ne doit pas avoir de majuscule.

Nom des slices:

Prendre l'id de l'extension s'il s'agit d'une extension
Sinon, lowerCamelCase
Documentation :

https://confluence.hl7.org/pages/viewpage.action?pageId=35718826#GuidetoDesigningResources-NamingRules&Guidelines
Les URL canoniques
L'URL canonique est un outil très puissant dans le standard HL7 FHIR, il permet d'identifier de manière unique:

chaque implementation guide
chaque profil
L'URL canonique de l'IG
L'URL canonique de l'IG permet d'accéder à sa page web, c'est à dire la spécification narrative et technique (ex : https://www.hl7.org/fhir/us/core). Dans le cas des IG de l'ANS, l'url canonique est https://interop.esante.gouv.fr/ig/fhir/[code]

L'URL canonique des ressources de conformance
A partir de ce lien, il y a une API Rest FHIR, qui permet d'accéder aux ressources de conformité conformément à la FHIR search (https://www.hl7.org/fhir/search.html). On obtient ainsi les url canoniques de chaque profil (ex : http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient). L'URL canonique des profils est construite au format : [base]/[ResourceType]/[id] pour qu'elle corresponde à une requête FHIR Search

L'outil HL7 IG Publisher, combiné avec sushi, gère automatiquement certaines redirections et génère automatiquement les urls des profils à partir de l'url base indiquée.

Ainsi, l'url canonique d'un profil permet de facilement retrouver la spécification d'où elle est issue de manière très efficace et claire.

A noter le ResourceType doit respecter la même casse et le même nom que les ResourceName FHIR.

Documentation :

https://confluence.hl7.org/pages/viewpage.action?pageId=35718627#IGPublisherDocumentation-CanonicalURL
https://confluence.hl7.org/pages/viewpage.action?pageId=81027536#MaintainingaFHIRIGPublication-CanonicalURLs
La gestion des dépendances:

Il faut toujours utiliser des packages issus du FHIR Package Registry lorsque l'on définit des dépendances. La duplication des fichiers ou la référence par URL est une très mauvaise pratique car on perd tout l'intérêt du versioning
FSH / SUSHI
Factorisation
Sushi et FSH permettent de factoriser beaucoup d'informations, et de les centraliser afin d'en faciliter l'accès et la gestion. Il est recommandé de faire bénéficier au maximum les projets de cette possibilité de centraliser les informations redondantes.

Statut et version des profils
Dans le cas où les structures-definitions d'un projet sont au même niveau de statut ( Active, draft etc...) , il est recommandé de configurer le statut dans le fichier sushi-config.yaml et de supprimer le paramètre "status" renseigné dans les profils.
Idem pour la version du profil.
Le statut et la version des l'ensemble des profils seront renseignées exclusivement dans sushi-config.yaml:

status: active
version: 0.1.3 (utiliser le semver)

Extensions et ValueSets
Il est recommandé de classer les extensions et les valueSets source (FSH) dans des sous-répertoires spécifiques, input\fsh\Extensions et input\fsh\ValueSets. Les structure-definitions des profils seront placés dans input\fsh.

Gestion des alias
Les alias FSH sont des variables permettant de définir un raccourci pour une URL ou un OID.

Par exemple, on peut ainsi définir l’alias $phdDevice pour représenter l’URL «http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice» et l’utiliser de la manière suivante au sein d’un profil FSH :

Alias: $PhdDevice = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice * device only Reference($PhdDevice)

Par soucis de clarté, il est recommandé de rassembler tous les alias dans un fichier unique, appelé « aliases.fsh » et situé dans le répertoire racine (évite les redondances et facilite la gestion).

Exemple:

Alias: $PhdDevice = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice
Alias: $UCUM = http://unitsofmeasure.org
Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $FrObservationBp = http://interopsante.org/fhir/StructureDefinition/FrObservationBp
Alias: $fr-patient = http://interopsante.org/fhir/StructureDefinition/FrPatient

 Add a custom footer