# Accueil - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/ImplementationGuide/ans.fhir.fr.mesures | *Version*:3.1.0 |
| Active as of 2025-10-13 | *Computable Name*:Mesures |

 **Vital Signs Implementation Guide**
 This implementation guide contains the profiles to share vital-signs for the French ecosystem. 

> **Attention !**Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante et publiée à utiliser est accessible à l'adresse https://interop.esante.gouv.fr/ig/fhir/mesures

Le guide ****mesures de santé**** propose la mise en place des fonctions d’alimentation et de consultation des mesures de santé d’un usager.

Ce guide s’adresse aux éditeurs de logiciels qui souhaitent mettre en œuvre ces fonctions d’alimentation et de consultation des mesures de santé d’un usager.

Les spécifications techniques de ce guide s’appuient:

* sur le standard HL7 FHIR et plus particulièrement sur un sous-ensemble des ressources définies par ce standard ainsi que sur la notion d’extension et de profilage des ressources.
* sur les profils français de la ressource Observation (Profls Interop’Santé ou ANS)
* sur le profil PHD de la ressource Device profilé dans l’Implementation Guide PHD et dont l’usage est défini dans le profil IHE « Personal Health Device Observation Upload (POU) » pour représenter le dispositif connecté ayant effectué la mesure.

Pour les opérations sur les ressources, l’API REST définie par le standard HL7 FHIR met en œuvre la logique de la transaction PCH-01 du profil IHE « Personal Health Device Observation Upload (POU) » pour l’alimentation.

Le lecteur doit être familier de ces concepts pour les mettre en œuvre.

### Liste des profils définis

| | |
| :--- | :--- |
| Titre du profil | Description |
| [MesBundleFluxAlimentation](StructureDefinition-mesures-bundle-flux-alimentation.md) | Profil de la ressource Bundle du flux d'alimentation à envoyer au serveur |
| [MesFrObservationBmi](StructureDefinition-mesures-fr-observation-bmi.md) | Profil de la ressource Observation pour définir un Indice de Masse Corporelle (acronyme : IMC ou BMI) |
| [MesFrObservationBodyTemperature](StructureDefinition-mesures-fr-observation-body-temperature.md) | Profil de la ressource Observation pour définir une température |
| [MesFrObservationBodyWeight](StructureDefinition-mesures-fr-observation-body-weight.md) | Profil de la ressource Observation pour définir un poids |
| [MesFrObservationBodyHeight](StructureDefinition-mesures-fr-observation-bodyheight.md) | Profil de la ressource Observation pour définir une taille |
| [MesFrObservationBp](StructureDefinition-mesures-fr-observation-bp.md) | Profil de la ressource Observation pour définir une Pression Artérielle (acronyme : PA ou BP) |
| [MesFrObservationHeartrate](StructureDefinition-mesures-fr-observation-heartrate.md) | Profil de la ressource Observation pour définir une Fréquence Cardiaque (acronyme : FC ou HR) |
| [MesFrObservationOxygenSat](StructureDefinition-mesures-fr-observation-oxygen-sat.md) | Profil de la ressource Observation pour définir une Saturation en Oxygène (acronyme : SPO2) |
| [MesFrObservationRespiratoryRate](StructureDefinition-mesures-fr-observation-resp-rate.md) | Profil de la ressource Observation pour définir une fréquence respiratoire (acronyme : FR) |
| [MesObservationGlucose](StructureDefinition-mesures-observation-glucose.md) | Profil de la ressource Observation pour définir une GlycémieCe profil permet de gérer 4 types d'indicateurs de glycémie:* le taux de glucose sanguin, mesuré en mg/dl
* le taux de glucose interstitiel, mesuré en mg/dl
* l’hémoglobine glyquée (Hb1Ac) mesurée en %
* l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %
L'extension MesNumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .L'extension MesMomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin. |
| [MesObservationHeadCircumference](StructureDefinition-mesures-observation-head-circumference.md) | Profil de la ressource Observation pour définir un Périmètre Crânien |
| [MesObservationPainSeverity](StructureDefinition-mesures-observation-pain-severity.md) | Profil de la ressource Observation pour définir un niveau de douleur |
| [MesObservationStepsByDay](StructureDefinition-mesures-observation-steps-by-day.md) | Profil de la ressource Observation pour définir un nombre de pas par jour |
| [MesObservationWaistCircumference](StructureDefinition-mesures-observation-waist-circumference.md) | Profil de la ressource Observation pour définir une taille en cm |

Les profils FHIR pour les mesures de santé s’appuient sur la ressource Observation définie par le standard HL7 FHIR, en ajoutant quelques contraintes indiquées dans la description détaillée de chaque profil.

Pour chaque ressource, le lien vers la spécification technique InteropSanté est indiqué. Cette liste pourra être complétée par d’autres mesures jugées pertinentes.

### Contexte métier

Les spécifications techniques des Mesures de santé au format FHIR ont été élaborées à partir des éléments métiers définis par la CNAM (Caisse Nationale d’Assurance Maladie). Elles s’appuient sur les recommandations sémantiques du CGTS (Centre de Gestion des terminologies de Santé) de l’ANS (Agence du Numérique en Santé).

### Standards utilisés

FHIR (Fast Healthcare Interoperability Resources) est un standard élaboré par HL7 qui décrit un ensemble de formats de données et d’éléments, appelés ressources, ainsi qu’une API (Application Programming Interface) pour l’échange des informations de santé.

HL7 (Health Level Seven) est un organisme à but non lucratif accrédité par l’ANSI (American National Standards Institute) et impliqué dans le développement de standards d’interopérabilité internationaux pour l’informatique de santé. Il regroupe des experts de l’informatique de santé qui collaborent pour créer un cadre et des standards connexes pour l’échange, l’intégration, le partage et l’accès à des données de santé, visant à promouvoir l’utilisation de ces standards entre les organisations de santé et au sein d’une même organisation.

Ces spécifications techniques se basent sur le standard HL7 FHIR R4 (4.0.1), faisant référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basée sur le protocole HTTP. La syntaxe retenue pour les échanges est la syntaxe JSON.

### Problématique connue

Les profils mesures de santé sont optionnellement liés à un device qui doit hériter du profil PHD (Personal Health Device), couvrant uniquement les appareils personnels connectés. Des discussions sont en cours pour intégrer les dispositifs médicaux prescrits dans le parcours de soins modélisé à l’international par le guide d’implémentation PoCD. En cas de besoins allant dans ce sens, merci de le spécifier dans une [issue GitHub](https://github.com/ansforge/IG-fhir-mesures-de-sante).

### Dépendances








### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* IEEE maintains copyright on all content from IEEE 11073 standards. All rights reserved. Implementers should obtain official copies of all applicable standards documents directly from IEEE. The inclusion of IEEE 11073 terminology codes and definitions in HL7 messages and related implementation guides is permitted under existing agreements. For permission regarding any other usage, please contact IEEE at copyrights@ieee.org.

* [ISO/IEEE 11073 Medical Device Communication Nomenclature](http://terminology.hl7.org/6.5.0/CodeSystem-v3-mdc.html): [Bundle/bundle-example](Bundle-bundle-example.md) and [Device/phd-74E8FFFEFF051C00](Device-phd-74E8FFFEFF051C00.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [MesBundleFluxAlimentation](StructureDefinition-mesures-bundle-flux-alimentation.md), [MesFrObservationBmi](StructureDefinition-mesures-fr-observation-bmi.md)...Show 17 more,[MesFrObservationBodyHeight](StructureDefinition-mesures-fr-observation-bodyheight.md),[MesFrObservationBodyTemperature](StructureDefinition-mesures-fr-observation-body-temperature.md),[MesFrObservationBodyWeight](StructureDefinition-mesures-fr-observation-body-weight.md),[MesFrObservationBp](StructureDefinition-mesures-fr-observation-bp.md),[MesFrObservationHeartrate](StructureDefinition-mesures-fr-observation-heartrate.md),[MesFrObservationOxygenSat](StructureDefinition-mesures-fr-observation-oxygen-sat.md),[MesFrObservationRespiratoryRate](StructureDefinition-mesures-fr-observation-resp-rate.md),[MesMomentOfMeasurement](StructureDefinition-mesures-moment-of-measurement.md),[MesNumberOfDays](StructureDefinition-mesures-number-of-days.md),[MesObservationGlucose](StructureDefinition-mesures-observation-glucose.md),[MesObservationHeadCircumference](StructureDefinition-mesures-observation-head-circumference.md),[MesObservationPainSeverity](StructureDefinition-mesures-observation-pain-severity.md),[MesObservationStepsByDay](StructureDefinition-mesures-observation-steps-by-day.md),[MesObservationWaistCircumference](StructureDefinition-mesures-observation-waist-circumference.md),[MesReasonForMeasurement](StructureDefinition-mesures-reason-for-measurement.md),[Mesures](index.md)and[MethodeGlucoseVS](ValueSet-method-glucose-vs.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html): [Bundle/bundle-example](Bundle-bundle-example.md), [MesFrObservationBodyHeight](StructureDefinition-mesures-fr-observation-bodyheight.md)...Show 18 more,[MesFrObservationBodyTemperature](StructureDefinition-mesures-fr-observation-body-temperature.md),[MesFrObservationBodyWeight](StructureDefinition-mesures-fr-observation-body-weight.md),[MesObservationGlucose](StructureDefinition-mesures-observation-glucose.md),[MesObservationStepsByDay](StructureDefinition-mesures-observation-steps-by-day.md),[MesObservationWaistCircumference](StructureDefinition-mesures-observation-waist-circumference.md),[Observation/ExampleMesFrObservationBP001](Observation-ExampleMesFrObservationBP001.md),[Observation/ExampleMesFrObservationBmi001](Observation-ExampleMesFrObservationBmi001.md),[Observation/ExampleMesFrObservationBodyHeight001](Observation-ExampleMesFrObservationBodyHeight001.md),[Observation/ExampleMesFrObservationBodyTemperature001](Observation-ExampleMesFrObservationBodyTemperature001.md),[Observation/ExampleMesFrObservationBodyWeight001](Observation-ExampleMesFrObservationBodyWeight001.md),[Observation/ExampleMesFrObservationHeartrate001](Observation-ExampleMesFrObservationHeartrate001.md),[Observation/ExampleMesFrOxygenSat](Observation-ExampleMesFrOxygenSat.md),[Observation/ExampleMesFrRespRate](Observation-ExampleMesFrRespRate.md),[Observation/ExampleMesObservationGlucose001](Observation-ExampleMesObservationGlucose001.md),[Observation/ExampleMesObservationHeadCircumference001](Observation-ExampleMesObservationHeadCircumference001.md),[Observation/ExampleMesObservationPainSeverity001](Observation-ExampleMesObservationPainSeverity001.md),[Observation/ExampleMesObservationStepsByDay001](Observation-ExampleMesObservationStepsByDay001.md)and[Observation/ExampleObservationWaistCircumference001](Observation-ExampleObservationWaistCircumference001.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Bundle/bundle-example](Bundle-bundle-example.md), [MesObservationGlucose](StructureDefinition-mesures-observation-glucose.md)...Show 16 more,[MesObservationHeadCircumference](StructureDefinition-mesures-observation-head-circumference.md),[MesObservationPainSeverity](StructureDefinition-mesures-observation-pain-severity.md),[MesObservationStepsByDay](StructureDefinition-mesures-observation-steps-by-day.md),[MesObservationWaistCircumference](StructureDefinition-mesures-observation-waist-circumference.md),[Observation/ExampleMesFrObservationBP001](Observation-ExampleMesFrObservationBP001.md),[Observation/ExampleMesFrObservationBmi001](Observation-ExampleMesFrObservationBmi001.md),[Observation/ExampleMesFrObservationBodyHeight001](Observation-ExampleMesFrObservationBodyHeight001.md),[Observation/ExampleMesFrObservationBodyTemperature001](Observation-ExampleMesFrObservationBodyTemperature001.md),[Observation/ExampleMesFrObservationBodyWeight001](Observation-ExampleMesFrObservationBodyWeight001.md),[Observation/ExampleMesFrObservationHeartrate001](Observation-ExampleMesFrObservationHeartrate001.md),[Observation/ExampleMesFrOxygenSat](Observation-ExampleMesFrOxygenSat.md),[Observation/ExampleMesFrRespRate](Observation-ExampleMesFrRespRate.md),[Observation/ExampleMesObservationHeadCircumference001](Observation-ExampleMesObservationHeadCircumference001.md),[Observation/ExampleMesObservationPainSeverity001](Observation-ExampleMesObservationPainSeverity001.md),[Observation/ExampleMesObservationStepsByDay001](Observation-ExampleMesObservationStepsByDay001.md)and[Observation/ExampleObservationWaistCircumference001](Observation-ExampleObservationWaistCircumference001.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](https://interop.esante.gouv.fr/terminologies/1.2.0/CodeSystem-900000000000207008-20250701.html): [MesFrObservationBodyTemperature](StructureDefinition-mesures-fr-observation-body-temperature.md), [MesFrObservationBp](StructureDefinition-mesures-fr-observation-bp.md), [MesFrObservationHeartrate](StructureDefinition-mesures-fr-observation-heartrate.md) and [MesFrObservationOxygenSat](StructureDefinition-mesures-fr-observation-oxygen-sat.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/6.5.0/CodeSystem-observation-category.html): [Bundle/bundle-example](Bundle-bundle-example.md), [Observation/ExampleMesFrObservationBP001](Observation-ExampleMesFrObservationBP001.md)...Show 12 more,[Observation/ExampleMesFrObservationBmi001](Observation-ExampleMesFrObservationBmi001.md),[Observation/ExampleMesFrObservationBodyHeight001](Observation-ExampleMesFrObservationBodyHeight001.md),[Observation/ExampleMesFrObservationBodyTemperature001](Observation-ExampleMesFrObservationBodyTemperature001.md),[Observation/ExampleMesFrObservationBodyWeight001](Observation-ExampleMesFrObservationBodyWeight001.md),[Observation/ExampleMesFrObservationHeartrate001](Observation-ExampleMesFrObservationHeartrate001.md),[Observation/ExampleMesFrOxygenSat](Observation-ExampleMesFrOxygenSat.md),[Observation/ExampleMesFrRespRate](Observation-ExampleMesFrRespRate.md),[Observation/ExampleMesObservationGlucose001](Observation-ExampleMesObservationGlucose001.md),[Observation/ExampleMesObservationHeadCircumference001](Observation-ExampleMesObservationHeadCircumference001.md),[Observation/ExampleMesObservationPainSeverity001](Observation-ExampleMesObservationPainSeverity001.md),[Observation/ExampleMesObservationStepsByDay001](Observation-ExampleMesObservationStepsByDay001.md)and[Observation/ExampleObservationWaistCircumference001](Observation-ExampleObservationWaistCircumference001.md)
* [ObservationInterpretation](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ObservationInterpretation.html): [MesFrObservationBmi](StructureDefinition-mesures-fr-observation-bmi.md), [MesFrObservationBodyHeight](StructureDefinition-mesures-fr-observation-bodyheight.md)...Show 6 more,[MesFrObservationBodyTemperature](StructureDefinition-mesures-fr-observation-body-temperature.md),[MesFrObservationBodyWeight](StructureDefinition-mesures-fr-observation-body-weight.md),[MesFrObservationBp](StructureDefinition-mesures-fr-observation-bp.md),[MesFrObservationHeartrate](StructureDefinition-mesures-fr-observation-heartrate.md),[Observation/ExampleMesFrObservationBP001](Observation-ExampleMesFrObservationBP001.md)and[Observation/ExampleMesFrObservationBmi001](Observation-ExampleMesFrObservationBmi001.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ans.fhir.fr.mesures",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/ImplementationGuide/ans.fhir.fr.mesures",
  "version" : "3.1.0",
  "name" : "Mesures",
  "title" : "Guide d'implémentation FHIR - Mesures de santé",
  "status" : "active",
  "date" : "2025-10-13T07:29:09+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "packageId" : "ans.fhir.fr.mesures",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "hl7_fhir_fr_core",
      "uri" : "https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core",
      "packageId" : "hl7.fhir.fr.core",
      "version" : "2.1.0"
    },
    {
      "id" : "hl7_fhir_uv_phd",
      "uri" : "http://hl7.org/fhir/uv/phd/ImplementationGuide/hl7.fhir.uv.phd",
      "packageId" : "hl7.fhir.uv.phd",
      "version" : "1.0.0"
    },
    {
      "id" : "ans_fr_terminologies",
      "uri" : "https://interop.esante.gouv.fr/terminologies/ImplementationGuide/ans.fr.terminologies",
      "packageId" : "ans.fr.terminologies",
      "version" : "1.2.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interop.esante.gouv.fr/ig/fhir/mesures/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://interop.esante.gouv.fr/ig/fhir/mesures/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-bundle-flux-alimentation"
        },
        "name" : "Bundle d'alimentation",
        "description" : "Profil de la ressource Bundle du flux d'alimentation à envoyer au serveur",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/bundle-example"
        },
        "name" : "bundle-example",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-bundle-flux-alimentation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ExamplefrPatient001"
        },
        "name" : "ExamplefrPatient001",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/ExampleFrPractitionner001"
        },
        "name" : "ExampleFrPractitionner001",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesFrObservationBmi001"
        },
        "name" : "ExampleMesFrObservationBmi001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bmi"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesFrObservationBodyHeight001"
        },
        "name" : "ExampleMesFrObservationBodyHeight001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bodyheight"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesFrObservationBodyTemperature001"
        },
        "name" : "ExampleMesFrObservationBodyTemperature001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-body-temperature"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesFrObservationBodyWeight001"
        },
        "name" : "ExampleMesFrObservationBodyWeight001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-body-weight"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesFrObservationBP001"
        },
        "name" : "ExampleMesFrObservationBP001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bp"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesFrObservationHeartrate001"
        },
        "name" : "ExampleMesFrObservationHeartrate001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-heartrate"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesFrOxygenSat"
        },
        "name" : "ExampleMesFrOxygenSat",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-oxygen-sat"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesFrRespRate"
        },
        "name" : "ExampleMesFrRespRate",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-resp-rate"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesObservationGlucose001"
        },
        "name" : "ExampleMesObservationGlucose001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-glucose"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesObservationHeadCircumference001"
        },
        "name" : "ExampleMesObservationHeadCircumference001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-head-circumference"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesObservationPainSeverity001"
        },
        "name" : "ExampleMesObservationPainSeverity001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-pain-severity"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleMesObservationStepsByDay001"
        },
        "name" : "ExampleMesObservationStepsByDay001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-steps-by-day"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ExampleObservationWaistCircumference001"
        },
        "name" : "ExampleObservationWaistCircumference001",
        "exampleCanonical" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-waist-circumference"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-fr-observation-heartrate"
        },
        "name" : "Fréquence Cardiaque",
        "description" : "Profil de la ressource Observation pour définir une Fréquence Cardiaque (acronyme : FC ou HR)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-fr-observation-resp-rate"
        },
        "name" : "Fréquence respiratoire",
        "description" : "Profil de la ressource Observation pour définir une fréquence respiratoire (acronyme : FR)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-observation-glucose"
        },
        "name" : "Glycémie",
        "description" : "Profil de la ressource Observation pour définir une Glycémie\n\nCe profil permet de gérer 4 types d'indicateurs de glycémie:\n- le taux de glucose sanguin, mesuré en mg/dl\n- le taux de glucose interstitiel, mesuré en mg/dl\n- l’hémoglobine glyquée (Hb1Ac) mesurée en %\n- l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %\n\nL'extension MesNumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .\n\nL'extension MesMomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-fr-observation-bmi"
        },
        "name" : "Indice de Masse Corporelle",
        "description" : "Profil de la ressource Observation pour définir un Indice de Masse Corporelle (acronyme : IMC ou BMI)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-moment-of-measurement"
        },
        "name" : "Moment de la mesure",
        "description" : "Moment de la mesure.\nPeut être exprimé par un texte libre ou un code.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/method-glucose-vs"
        },
        "name" : "Méthode de mesures de glycémie sanguine ou interstitielle",
        "description" : "Méthode de mesures de glycémie sanguine ou interstitielle.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-observation-pain-severity"
        },
        "name" : "Niveau de douleur",
        "description" : "Profil de la ressource Observation pour définir un niveau de douleur",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-number-of-days"
        },
        "name" : "Nombre de jours",
        "description" : "Extension sur le Nombre de jours. \r\nUtilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-observation-steps-by-day"
        },
        "name" : "Nombre de pas par jour",
        "description" : "Profil de la ressource Observation pour définir un nombre de pas par jour",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Device"
          }
        ],
        "reference" : {
          "reference" : "Device/phd-74E8FFFEFF051C00"
        },
        "name" : "phd-74E8FFFEFF051C00",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-fr-observation-body-weight"
        },
        "name" : "Poids",
        "description" : "Profil de la ressource Observation pour définir un poids",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-fr-observation-bp"
        },
        "name" : "Pression Artérielle",
        "description" : "Profil de la ressource Observation pour définir une Pression Artérielle (acronyme : PA ou BP)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-observation-head-circumference"
        },
        "name" : "Périmètre Crânien",
        "description" : "Profil de la ressource Observation pour définir un Périmètre Crânien",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-reason-for-measurement"
        },
        "name" : "Raison de la mesure",
        "description" : "Extension du Motif de la mesure, exprimé en texte libre  (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-fr-observation-oxygen-sat"
        },
        "name" : "Saturation en Oxygène",
        "description" : "Profil de la ressource Observation pour définir une Saturation en Oxygène (acronyme : SPO2)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-fr-observation-bodyheight"
        },
        "name" : "Taille",
        "description" : "Profil de la ressource Observation pour définir une taille",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-fr-observation-body-temperature"
        },
        "name" : "Température",
        "description" : "Profil de la ressource Observation pour définir une température",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/mesures-observation-waist-circumference"
        },
        "name" : "Tour de taille",
        "description" : "Profil de la ressource Observation pour définir une taille en cm",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Accueil",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Le-flux-d-alimentation-des-mesures.html"
            }
          ],
          "nameUrl" : "Le-flux-d-alimentation-des-mesures.html",
          "title" : "Le flux d'alimentation des mesures de santé",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Les-profils-utilises-pour-les-mesures-de-sante.html"
            }
          ],
          "nameUrl" : "Les-profils-utilises-pour-les-mesures-de-sante.html",
          "title" : "Les profils utilisés pour les mesures de santé",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Le-profil-FHIR-des-objets-connectes.html"
            }
          ],
          "nameUrl" : "Le-profil-FHIR-des-objets-connectes.html",
          "title" : "Le profil FHIR des objets connectés",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Terminologies.html"
            }
          ],
          "nameUrl" : "Terminologies.html",
          "title" : "Terminologies",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "downloads.html"
            }
          ],
          "nameUrl" : "downloads.html",
          "title" : "Téléchargements et usages",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
