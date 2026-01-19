# Origine de la donnée - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Origine de la donnée**

## Extension: Origine de la donnée 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-origin-of-data | *Version*:3.1.0 |
| Active as of 2026-01-19 | *Computable Name*:MesOriginOfData |

Extension pour tracer l’origine de la donnée issue d’un compte rendu de biologie (CR-Bio).

**Context of Use**

This extension may be used on the following element(s):

* Element ID Observation

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [Indice de Masse Corporelle](StructureDefinition-mesures-fr-observation-bmi.md), [Température](StructureDefinition-mesures-fr-observation-body-temperature.md), [Poids](StructureDefinition-mesures-fr-observation-body-weight.md), [Taille](StructureDefinition-mesures-fr-observation-bodyheight.md)...Show 15 more,[Pression Artérielle](StructureDefinition-mesures-fr-observation-bp.md),[Fréquence Cardiaque](StructureDefinition-mesures-fr-observation-heartrate.md),[Saturation en Oxygène](StructureDefinition-mesures-fr-observation-oxygen-sat.md),[Fréquence respiratoire](StructureDefinition-mesures-fr-observation-resp-rate.md),[Cholestérol - aspect](StructureDefinition-mesures-observation-cholesterol-aspect.md),[Cholestérol - HDL](StructureDefinition-mesures-observation-cholesterol-hdl.md),[Cholestérol - LDL](StructureDefinition-mesures-observation-cholesterol-ldl.md),[Cholestérol - Ratio LDL/HDL](StructureDefinition-mesures-observation-cholesterol-ratio.md),[Cholestérol - total](StructureDefinition-mesures-observation-cholesterol-total.md),[Cholestérol - triglycerides](StructureDefinition-mesures-observation-cholesterol-trigly.md),[Glycémie](StructureDefinition-mesures-observation-glucose.md),[Périmètre Crânien](StructureDefinition-mesures-observation-head-circumference.md),[Niveau de douleur](StructureDefinition-mesures-observation-pain-severity.md),[Nombre de pas par jour](StructureDefinition-mesures-observation-steps-by-day.md)and[Tour de taille](StructureDefinition-mesures-observation-waist-circumference.md)
* Exemples pour ce Extension: [Bundle/bundle-example-bio](Bundle-bundle-example-bio.md), [Observation/cholesterol-hdl-example](Observation-cholesterol-hdl-example.md), [Observation/cholesterol-ldl-example](Observation-cholesterol-ldl-example.md), [Observation/cholesterol-total-example](Observation-cholesterol-total-example.md) and [Observation/cholesterol-trigly-example](Observation-cholesterol-trigly-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-origin-of-data)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-origin-of-data.csv), [Excel](StructureDefinition-mesures-origin-of-data.xlsx), [Schematron](StructureDefinition-mesures-origin-of-data.sch) 

#### Contraintes



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
  "date" : "2026-01-19T09:23:14+00:00",
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
        ],
        "patternBoolean" : true
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
        "id" : "Extension.extension:originalValue",
        "path" : "Extension.extension",
        "sliceName" : "originalValue",
        "short" : "Valeur originale | Original value",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:originalValue.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:originalValue.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "originalValue"
      },
      {
        "id" : "Extension.extension:originalValue.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
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
