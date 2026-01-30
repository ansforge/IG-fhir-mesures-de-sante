# Saturation en Oxygène - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Saturation en Oxygène**

## Resource Profile: Saturation en Oxygène 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-oxygen-sat | *Version*:3.1.1 |
| Active as of 2026-01-30 | *Computable Name*:MesFrObservationOxygenSat |

 
Profil de la ressource Observation pour définir une Saturation en Oxygène (acronyme : SPO2) 

**Utilisations:**

* Utiliser ce Profil: [Bundle d'alimentation](StructureDefinition-mesures-bundle-flux-alimentation.md)
* Exemples pour ce Profil: [Observation/example-mes-fr-observation-oxygen-sat-001](Observation-example-mes-fr-observation-oxygen-sat-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-fr-observation-oxygen-sat)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-fr-observation-oxygen-sat.csv), [Excel](StructureDefinition-mesures-fr-observation-oxygen-sat.xlsx), [Schematron](StructureDefinition-mesures-fr-observation-oxygen-sat.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-fr-observation-oxygen-sat",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-oxygen-sat",
  "version" : "3.1.1",
  "name" : "MesFrObservationOxygenSat",
  "title" : "Saturation en Oxygène",
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
  "description" : "Profil de la ressource Observation pour définir une Saturation en Oxygène (acronyme : SPO2)",
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
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-saturation-oxygen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.meta.source",
        "path" : "Observation.meta.source",
        "short" : "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
      },
      {
        "id" : "Observation.extension:supportingInfo",
        "path" : "Observation.extension",
        "sliceName" : "supportingInfo",
        "definition" : "Autres ressources pertinentes *du dossier patient*",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:MesReasonForMeasurement",
        "path" : "Observation.extension",
        "sliceName" : "MesReasonForMeasurement",
        "short" : "Motif de la mesure",
        "definition" : "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, hypercholestérolémie, risque cardiovasculaire, suivi, ...)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:MesMomentOfMeasurement",
        "path" : "Observation.extension",
        "sliceName" : "MesMomentOfMeasurement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-moment-of-measurement"
            ]
          }
        ]
      },
      {
        "id" : "Observation.category:VSCat",
        "path" : "Observation.category",
        "sliceName" : "VSCat"
      },
      {
        "id" : "Observation.category:VSCat.coding.display",
        "path" : "Observation.category.coding.display",
        "patternString" : "vital-signs"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter"
            ]
          }
        ]
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J147-MethodHeartrate-ENS/FHIR/JDV-J147-MethodHeartrate-ENS"
        }
      },
      {
        "id" : "Observation.method.coding.system",
        "path" : "Observation.method.coding.system",
        "min" : 1
      },
      {
        "id" : "Observation.method.coding.code",
        "path" : "Observation.method.coding.code",
        "min" : 1
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
