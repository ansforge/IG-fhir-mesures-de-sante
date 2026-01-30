# Fréquence Cardiaque - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fréquence Cardiaque**

## Resource Profile: Fréquence Cardiaque 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-heartrate | *Version*:3.1.1 |
| Active as of 2026-01-30 | *Computable Name*:MesFrObservationHeartrate |

 
Profil de la ressource Observation pour définir une Fréquence Cardiaque (acronyme : FC ou HR) 

**Utilisations:**

* Utiliser ce Profil: [Bundle d'alimentation](StructureDefinition-mesures-bundle-flux-alimentation.md)
* Exemples pour ce Profil: [Observation/example-mes-fr-observation-heartrate-001](Observation-example-mes-fr-observation-heartrate-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-fr-observation-heartrate)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-fr-observation-heartrate.csv), [Excel](StructureDefinition-mesures-fr-observation-heartrate.xlsx), [Schematron](StructureDefinition-mesures-fr-observation-heartrate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-fr-observation-heartrate",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-heartrate",
  "version" : "3.1.1",
  "name" : "MesFrObservationHeartrate",
  "title" : "Fréquence Cardiaque",
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
  "description" : "Profil de la ressource Observation pour définir une Fréquence Cardiaque (acronyme : FC ou HR)",
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
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-heartrate",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.meta.source",
        "path" : "Observation.meta.source",
        "short" : "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
      },
      {
        "id" : "Observation.extension:levelOfExertion",
        "path" : "Observation.extension",
        "sliceName" : "levelOfExertion",
        "short" : "Cette extension permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire",
        "definition" : "Cette extension permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"
      },
      {
        "id" : "Observation.extension:bodyPosition",
        "path" : "Observation.extension",
        "sliceName" : "bodyPosition",
        "short" : "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation.",
        "definition" : "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."
      },
      {
        "id" : "Observation.extension:supportingInfo",
        "path" : "Observation.extension",
        "sliceName" : "supportingInfo",
        "definition" : "Autres ressources pertinentes *du dossier patient*"
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
        "short" : "Moment de la mesure",
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
        "id" : "Observation.method",
        "path" : "Observation.method",
        "short" : "Méthode de la mesure",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J147-MethodHeartrate-ENS/FHIR/JDV-J147-MethodHeartrate-ENS"
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
