# Valeur originale - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Valeur originale**

## Extension: Valeur originale 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data | *Version*:3.1.1 |
| Active as of 2026-01-30 | *Computable Name*:MesOriginalData |

Extension permettant de renseigner la donnée originale. Dans le cas où une conversion d’unité a été effectuée sur la valeur de la mesure, cette extension permet de conserver la valeur originale telle que mesurée par le dispositif.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Observation

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [Cholestérol - aspect](StructureDefinition-mesures-observation-cholesterol-aspect.md), [Cholestérol - HDL](StructureDefinition-mesures-observation-cholesterol-hdl.md), [Cholestérol - LDL](StructureDefinition-mesures-observation-cholesterol-ldl.md), [Cholestérol - total](StructureDefinition-mesures-observation-cholesterol-total.md)... Show 2 more, [Cholestérol - triglycerides](StructureDefinition-mesures-observation-cholesterol-trigly.md) and [Glycémie](StructureDefinition-mesures-observation-glucose.md)
* Exemples pour ce Extension: [Bundle/example-mes-fr-bundle-bio-003](Bundle-example-mes-fr-bundle-bio-003.md), [Observation/645f7341-715f-44fb-87e9-93f2e7d125a5](Observation-645f7341-715f-44fb-87e9-93f2e7d125a5.md), [Observation/7b166d82-27b6-4878-9765-3fe101618edf](Observation-7b166d82-27b6-4878-9765-3fe101618edf.md), [Observation/9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e](Observation-9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e.md) and [Observation/b7a049e3-c07e-4e1c-95a5-909da37f75ce](Observation-b7a049e3-c07e-4e1c-95a5-909da37f75ce.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-original-data)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-original-data.csv), [Excel](StructureDefinition-mesures-original-data.xlsx), [Schematron](StructureDefinition-mesures-original-data.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-original-data",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data",
  "version" : "3.1.1",
  "name" : "MesOriginalData",
  "title" : "Valeur originale",
  "status" : "active",
  "date" : "2026-01-30T09:23:26+00:00",
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
  "description" : "Extension permettant de renseigner la donnée originale. \r\nDans le cas où une conversion d'unité a été effectuée sur la valeur de la mesure, cette extension permet de conserver la valeur originale telle que mesurée par le dispositif.",
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
        "short" : "Nombre de jours",
        "definition" : "Extension permettant de renseigner la donnée originale. \r\nDans le cas où une conversion d'unité a été effectuée sur la valeur de la mesure, cette extension permet de conserver la valeur originale telle que mesurée par le dispositif."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 3
      },
      {
        "id" : "Extension.extension:has-been-converted",
        "path" : "Extension.extension",
        "sliceName" : "has-been-converted",
        "short" : "Indication permettant de savoir si la valeur a été convertie.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:has-been-converted.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:has-been-converted.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "has-been-converted"
      },
      {
        "id" : "Extension.extension:has-been-converted.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "patternBoolean" : true
      },
      {
        "id" : "Extension.extension:original-code",
        "path" : "Extension.extension",
        "sliceName" : "original-code",
        "short" : "Code original de la donnée. Il permet notamment d'identifier le niveau de comparabilité des résultats entre eux. Le choix a été fait de ne pas indiquer directement le numéro de comparabilité mais d'indiquer directement le code LOINC d'origine pour identifier le numéro de comparabilité dans le jeu de valeur circuit de la biologie.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:original-code.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:original-code.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "original-code"
      },
      {
        "id" : "Extension.extension:original-code.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:original-value",
        "path" : "Extension.extension",
        "sliceName" : "original-value",
        "short" : "Valeur originale | Original value",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:original-value.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:original-value.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "original-value"
      },
      {
        "id" : "Extension.extension:original-value.value[x]",
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
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data"
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
