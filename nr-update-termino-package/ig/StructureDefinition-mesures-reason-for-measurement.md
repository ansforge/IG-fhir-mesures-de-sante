# Raison de la mesure - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Raison de la mesure**

## Extension: Raison de la mesure 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement | *Version*:3.1.0 |
| Active as of 2025-10-13 | *Computable Name*:MesReasonForMeasurement |

Extension du Motif de la mesure, exprimé en texte libre (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…).

**Context of Use**

This extension may be used on the following element(s):

* Element ID Observation

**Usage info**

**Usages:**

* Use this Extension: [Température](StructureDefinition-mesures-fr-observation-body-temperature.md), [Poids](StructureDefinition-mesures-fr-observation-body-weight.md), [Taille](StructureDefinition-mesures-fr-observation-bodyheight.md), [Pression Artérielle](StructureDefinition-mesures-fr-observation-bp.md)...Show 5 more,[Glycémie](StructureDefinition-mesures-observation-glucose.md),[Périmètre Crânien](StructureDefinition-mesures-observation-head-circumference.md),[Niveau de douleur](StructureDefinition-mesures-observation-pain-severity.md),[Nombre de pas par jour](StructureDefinition-mesures-observation-steps-by-day.md)and[Tour de taille](StructureDefinition-mesures-observation-waist-circumference.md)
* Examples for this Extension: [Bundle/bundle-example](Bundle-bundle-example.md), [Observation/ExampleMesFrObservationBodyWeight001](Observation-ExampleMesFrObservationBodyWeight001.md), [Observation/ExampleMesObservationGlucose001](Observation-ExampleMesObservationGlucose001.md), [Observation/ExampleMesObservationPainSeverity001](Observation-ExampleMesObservationPainSeverity001.md)...Show 2 more,[Observation/ExampleMesObservationStepsByDay001](Observation-ExampleMesObservationStepsByDay001.md)and[Observation/ExampleObservationWaistCircumference001](Observation-ExampleObservationWaistCircumference001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-reason-for-measurement)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-reason-for-measurement.csv), [Excel](StructureDefinition-mesures-reason-for-measurement.xlsx), [Schematron](StructureDefinition-mesures-reason-for-measurement.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-reason-for-measurement",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
  "version" : "3.1.0",
  "name" : "MesReasonForMeasurement",
  "title" : "Raison de la mesure",
  "status" : "active",
  "date" : "2025-10-13T07:28:17+00:00",
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
  "description" : "Extension du Motif de la mesure, exprimé en texte libre  (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…).",
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
        "short" : "Motif de la mesure",
        "definition" : "Extension du Motif de la mesure, exprimé en texte libre  (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
