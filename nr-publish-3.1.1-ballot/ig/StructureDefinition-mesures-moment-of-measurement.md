# Moment de la mesure - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moment de la mesure**

## Extension: Moment de la mesure 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-moment-of-measurement | *Version*:3.1.1 |
| Active as of 2026-01-29 | *Computable Name*:MesMomentOfMeasurement |

Extension pour indiquer le moment de la mesure

**Context of Use**

This extension may be used on the following element(s):

* Element ID Observation

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [Pression Artérielle](StructureDefinition-mesures-fr-observation-bp.md), [Fréquence Cardiaque](StructureDefinition-mesures-fr-observation-heartrate.md), [Saturation en Oxygène](StructureDefinition-mesures-fr-observation-oxygen-sat.md), [Fréquence respiratoire](StructureDefinition-mesures-fr-observation-resp-rate.md) and [Glycémie](StructureDefinition-mesures-observation-glucose.md)
* Exemples pour ce Extension: [Bundle/bundle-example-bio](Bundle-bundle-example-bio.md), [Observation/ExampleMesObservationGlucose001](Observation-ExampleMesObservationGlucose001.md) and [Observation/glycemia-example](Observation-glycemia-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-moment-of-measurement)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-moment-of-measurement.csv), [Excel](StructureDefinition-mesures-moment-of-measurement.xlsx), [Schematron](StructureDefinition-mesures-moment-of-measurement.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-moment-of-measurement",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-moment-of-measurement",
  "version" : "3.1.1",
  "name" : "MesMomentOfMeasurement",
  "title" : "Moment de la mesure",
  "status" : "active",
  "date" : "2026-01-29T16:25:01+00:00",
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
  "description" : "Extension pour indiquer le moment de la mesure",
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
        "short" : "Moment de la mesure",
        "definition" : "Moment de la mesure"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-moment-of-measurement"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.value[x].coding",
        "path" : "Extension.value[x].coding",
        "max" : "1"
      },
      {
        "id" : "Extension.value[x].coding.system",
        "path" : "Extension.value[x].coding.system",
        "min" : 1
      },
      {
        "id" : "Extension.value[x].coding.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1
      }
    ]
  }
}

```
