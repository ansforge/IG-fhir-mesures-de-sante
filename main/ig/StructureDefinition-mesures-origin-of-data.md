# Origine de la donnée - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Origine de la donnée**

## Extension: Origine de la donnée 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-origin-of-data | *Version*:3.1.0 |
| Active as of 2025-10-13 | *Computable Name*:MesOriginOfData |

Extension pour tracer l’origine de la donnée issue d’un compte rendu de biologie (CR-Bio).

**Context of Use**

This extension may be used on the following element(s):

* Element ID Observation

**Usage info**

**Usages:**

* Use this Extension: [Indice de Masse Corporelle](StructureDefinition-mesures-fr-observation-bmi.md), [Température](StructureDefinition-mesures-fr-observation-body-temperature.md), [Poids](StructureDefinition-mesures-fr-observation-body-weight.md), [Taille](StructureDefinition-mesures-fr-observation-bodyheight.md)...Show 9 more,[Pression Artérielle](StructureDefinition-mesures-fr-observation-bp.md),[Fréquence Cardiaque](StructureDefinition-mesures-fr-observation-heartrate.md),[Saturation en Oxygène](StructureDefinition-mesures-fr-observation-oxygen-sat.md),[Fréquence respiratoire](StructureDefinition-mesures-fr-observation-resp-rate.md),[Glycémie](StructureDefinition-mesures-observation-glucose.md),[Périmètre Crânien](StructureDefinition-mesures-observation-head-circumference.md),[Niveau de douleur](StructureDefinition-mesures-observation-pain-severity.md),[Nombre de pas par jour](StructureDefinition-mesures-observation-steps-by-day.md)and[Tour de taille](StructureDefinition-mesures-observation-waist-circumference.md)
* Examples for this Extension: [Observation/ExampleMesObservationGlucose001](Observation-ExampleMesObservationGlucose001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-origin-of-data)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-origin-of-data.csv), [Excel](StructureDefinition-mesures-origin-of-data.xlsx), [Schematron](StructureDefinition-mesures-origin-of-data.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-origin-of-data",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-origin-of-data",
  "version" : "3.1.0",
  "name" : "MesOriginOfData",
  "title" : "Origine de la donnée",
  "status" : "active",
  "date" : "2025-10-13T07:29:03+00:00",
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
  "description" : "Extension pour tracer l'origine de la donnée issue d'un compte rendu de biologie (CR-Bio).",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Origine de la donnée",
        "definition" : "Extension pour tracer l'origine de la donnée issue d'un compte rendu de biologie (CR-Bio)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 3
      },
      {
        "id" : "Extension.extension:hasBeenConverted",
        "path" : "Extension.extension",
        "sliceName" : "hasBeenConverted",
        "short" : "Indication permettant de savoir si la valeur a été convertie.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:hasBeenConverted.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:hasBeenConverted.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "hasBeenConverted"
      },
      {
        "id" : "Extension.extension:hasBeenConverted.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.extension:documentId",
        "path" : "Extension.extension",
        "sliceName" : "documentId",
        "short" : "Identifiant du document dont est issu la donnée, par exemple le CR-Bio dont est issu une glycémie.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:documentId.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:documentId.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "documentId"
      },
      {
        "id" : "Extension.extension:documentId.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Extension.extension:originalCode",
        "path" : "Extension.extension",
        "sliceName" : "originalCode",
        "short" : "Code original de la donnée. Il permet notamment d'identifier le niveau de comparabilité des résultats entre eux. Le choix a été fait de ne pas indiquer directement le numéro de comparabilité mais d'indiquer directement le code LOINC d'origine pour identifier le numéro de comparabilité dans le jeu de valeur circuit de la biologie.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:originalCode.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:originalCode.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "originalCode"
      },
      {
        "id" : "Extension.extension:originalCode.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-origin-of-data"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
