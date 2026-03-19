# Raison de la mesure - Guide d'implémentation FHIR - Mesures de santé v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Raison de la mesure**

## Extension: Raison de la mesure 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement | *Version*:3.2.0 |
| Active as of 2026-03-19 | *Computable Name*:MesReasonForMeasurement |

Extension du Motif de la mesure, exprimé en texte libre.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Observation

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [Indice de Masse Corporelle](StructureDefinition-mesures-fr-observation-bmi.md), [Température](StructureDefinition-mesures-fr-observation-body-temperature.md), [Poids](StructureDefinition-mesures-fr-observation-body-weight.md), [Taille](StructureDefinition-mesures-fr-observation-bodyheight.md)... Show 15 more, [Pression Artérielle](StructureDefinition-mesures-fr-observation-bp.md), [Fréquence Cardiaque](StructureDefinition-mesures-fr-observation-heartrate.md), [Saturation en Oxygène](StructureDefinition-mesures-fr-observation-oxygen-sat.md), [Fréquence respiratoire](StructureDefinition-mesures-fr-observation-resp-rate.md), [Cholestérol - aspect](StructureDefinition-mesures-observation-cholesterol-aspect.md), [Cholestérol - HDL](StructureDefinition-mesures-observation-cholesterol-hdl.md), [Cholestérol - LDL](StructureDefinition-mesures-observation-cholesterol-ldl.md), [Cholestérol - total](StructureDefinition-mesures-observation-cholesterol-total.md), [Cholestérol - triglycerides](StructureDefinition-mesures-observation-cholesterol-trigly.md), [Glycémie](StructureDefinition-mesures-observation-glucose.md), [Hémoglobine glyquée (Hb1Ac)](StructureDefinition-mesures-observation-hb1ac.md), [Périmètre Crânien](StructureDefinition-mesures-observation-head-circumference.md), [Niveau de douleur](StructureDefinition-mesures-observation-pain-severity.md), [Nombre de pas par jour](StructureDefinition-mesures-observation-steps-by-day.md) and [Tour de taille](StructureDefinition-mesures-observation-waist-circumference.md)
* Exemples pour ce/t/te Extension: [Bundle/example-mes-fr-bundle-bio-003](Bundle-example-mes-fr-bundle-bio-003.md), [Bundle/example-mes-fr-bundle-body-weight](Bundle-example-mes-fr-bundle-body-weight.md), [Observation/8057b6ec-1417-4f1f-9a00-b0c46e7e71b1](Observation-8057b6ec-1417-4f1f-9a00-b0c46e7e71b1.md), [Observation/example-mes-fr-observation-body-weight-001](Observation-example-mes-fr-observation-body-weight-001.md)... Show 4 more, [Observation/example-mes-fr-observation-glucose-001](Observation-example-mes-fr-observation-glucose-001.md), [Observation/example-mes-fr-observation-pain-severity-001](Observation-example-mes-fr-observation-pain-severity-001.md), [Observation/example-mes-fr-observation-steps-by-day-001](Observation-example-mes-fr-observation-steps-by-day-001.md) and [Observation/example-mes-fr-observation-waist-circum-001](Observation-example-mes-fr-observation-waist-circum-001.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-reason-for-measurement)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-reason-for-measurement.csv), [Excel](StructureDefinition-mesures-reason-for-measurement.xlsx), [Schematron](StructureDefinition-mesures-reason-for-measurement.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-reason-for-measurement",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
  "version" : "3.2.0",
  "name" : "MesReasonForMeasurement",
  "title" : "Raison de la mesure",
  "status" : "active",
  "date" : "2026-03-19T08:22:38+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension du Motif de la mesure, exprimé en texte libre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Motif de la mesure",
      "definition" : "Extension du Motif de la mesure, exprimé en texte libre."
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
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
