# Tour de taille - Guide d'implémentation FHIR - Mesures de santé v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tour de taille**

## Resource Profile: Tour de taille 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-waist-circumference | *Version*:3.2.0 |
| Active as of 2026-06-26 | *Computable Name*:MesObservationWaistCircumference |

 
Profil de la ressource Observation pour définir une taille en cm 

**Utilisations:**

* Utilise ce/t/te Profil: [Bundle d'alimentation](StructureDefinition-mesures-bundle-flux-alimentation.md)
* Exemples pour ce/t/te Profil: [Observation/example-mes-fr-observation-waist-circum-001](Observation-example-mes-fr-observation-waist-circum-001.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-observation-waist-circumference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-observation-waist-circumference.csv), [Excel](StructureDefinition-mesures-observation-waist-circumference.xlsx), [Schematron](StructureDefinition-mesures-observation-waist-circumference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-observation-waist-circumference",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-waist-circumference",
  "version" : "3.2.0",
  "name" : "MesObservationWaistCircumference",
  "title" : "Tour de taille",
  "status" : "active",
  "date" : "2026-06-26T10:32:15+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil de la ressource Observation pour définir une taille en cm",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/vitalsigns",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation.meta.source",
      "path" : "Observation.meta.source",
      "short" : "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:supportingInfo",
      "path" : "Observation.extension",
      "sliceName" : "supportingInfo",
      "definition" : "Autres ressources pertinentes *du dossier patient*",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"]
      }]
    },
    {
      "id" : "Observation.extension:MesReasonForMeasurement",
      "path" : "Observation.extension",
      "sliceName" : "MesReasonForMeasurement",
      "short" : "Motif de la mesure",
      "definition" : "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, hypercholestérolémie, risque cardiovasculaire, suivi, ...)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement"]
      }]
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        },
        {
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.code.coding:waistCircumCode",
      "path" : "Observation.code.coding",
      "sliceName" : "waistCircumCode",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "8280-0"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CareTeam",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org",
        "code" : "cm"
      }
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "min" : 1
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
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"]
      }],
      "mustSupport" : true
    }]
  }
}

```
