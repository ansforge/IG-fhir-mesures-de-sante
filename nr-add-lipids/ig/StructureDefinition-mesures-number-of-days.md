# Nombre de jours - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nombre de jours**

## Extension: Nombre de jours 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-number-of-days | *Version*:3.1.0 |
| Active as of 2026-01-06 | *Computable Name*:MesNumberOfDays |

Extension sur le Nombre de jours. Utilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie.

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [Glycémie](StructureDefinition-mesures-observation-glucose.md)
* Exemples pour ce Extension: [Bundle/bundle-example-bio](Bundle-bundle-example-bio.md) and [Observation/glycemia-example](Observation-glycemia-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-number-of-days)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-number-of-days.csv), [Excel](StructureDefinition-mesures-number-of-days.xlsx), [Schematron](StructureDefinition-mesures-number-of-days.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-number-of-days",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-number-of-days",
  "version" : "3.1.0",
  "name" : "MesNumberOfDays",
  "title" : "Nombre de jours",
  "status" : "active",
  "date" : "2026-01-06T09:57:05+00:00",
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
  "description" : "Extension sur le Nombre de jours. \r\nUtilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie.",
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
        "definition" : "Extension sur le Nombre de jours. \r\nUtilisé pour les mesures du taux de glucose interstitiel et l’index de gestion de glycémie."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-number-of-days"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J164-GlucoseNumberOfDays-ENS/FHIR/JDV-J164-GlucoseNumberOfDays-ENS"
        }
      }
    ]
  }
}

```
