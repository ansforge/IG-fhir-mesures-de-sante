# Indice de Masse Corporelle - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Indice de Masse Corporelle**

## Resource Profile: Indice de Masse Corporelle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bmi | *Version*:3.1.0 |
| Active as of 2026-01-06 | *Computable Name*:MesFrObservationBmi |

 
Profil de la ressource Observation pour définir un Indice de Masse Corporelle (acronyme : IMC ou BMI) 

**Utilisations:**

* Utiliser ce Profil: [Bundle d'alimentation](StructureDefinition-mesures-bundle-flux-alimentation.md)
* Exemples pour ce Profil: [Observation/ExampleMesFrObservationBmi001](Observation-ExampleMesFrObservationBmi001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-fr-observation-bmi)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-fr-observation-bmi.csv), [Excel](StructureDefinition-mesures-fr-observation-bmi.xlsx), [Schematron](StructureDefinition-mesures-fr-observation-bmi.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-fr-observation-bmi",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bmi",
  "version" : "3.1.0",
  "name" : "MesFrObservationBmi",
  "title" : "Indice de Masse Corporelle",
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
  "description" : "Profil de la ressource Observation pour définir un Indice de Masse Corporelle (acronyme : IMC ou BMI)",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bmi",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.meta.source",
        "path" : "Observation.meta.source",
        "short" : "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
      },
      {
        "id" : "Observation.dataAbsentReason.coding.system",
        "path" : "Observation.dataAbsentReason.coding.system",
        "min" : 1
      },
      {
        "id" : "Observation.dataAbsentReason.coding.code",
        "path" : "Observation.dataAbsentReason.coding.code",
        "min" : 1
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/ValueSet/observation-interpretation"
        }
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
