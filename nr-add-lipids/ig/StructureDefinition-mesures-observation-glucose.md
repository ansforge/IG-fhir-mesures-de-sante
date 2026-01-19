# Glycémie - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Glycémie**

## Resource Profile: Glycémie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-glucose | *Version*:3.1.0 |
| Active as of 2026-01-19 | *Computable Name*:MesObservationGlucose |

 
Profil biologie de la ressource Observation pour définir une Glycémie 
Ce profil permet de gérer 3 types d’indicateurs de glycémie: 
* le taux de glucose sanguin, mesuré en mg/dl
* le taux de glucose interstitiel, mesuré en mg/dl
* l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %
 
L’extension MesNumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) . 
L’extension MesMomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin. 

**Utilisations:**

* Utiliser ce Profil: [Bundle d'alimentation des mesures de biologie](StructureDefinition-mesures-bundle-flux-alimentation-biologie.md)
* Référer à ce Profil: [DiagnosticReport mesures biologie](StructureDefinition-mesures-diagnostic-report.md)
* Exemples pour ce Profil: [Observation/ExampleMesObservationGlucose001](Observation-ExampleMesObservationGlucose001.md) and [Observation/glycemia-example](Observation-glycemia-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-observation-glucose)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-observation-glucose.csv), [Excel](StructureDefinition-mesures-observation-glucose.xlsx), [Schematron](StructureDefinition-mesures-observation-glucose.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-observation-glucose",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-glucose",
  "version" : "3.1.0",
  "name" : "MesObservationGlucose",
  "title" : "Glycémie",
  "status" : "active",
  "date" : "2026-01-19T08:51:58+00:00",
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
  "description" : "Profil biologie de la ressource Observation pour définir une Glycémie\n\nCe profil permet de gérer 3 types d'indicateurs de glycémie:\n- le taux de glucose sanguin, mesuré en mg/dl\n- le taux de glucose interstitiel, mesuré en mg/dl\n- l’index de gestion de glycémie (IGG) qui procure une estimation de l’HbA1c également mesuré en %\n\nL'extension MesNumberOfDays permet de spécifier le nombre de jours dans la mesure du taux de glucose interstitiel et de l’index de gestion de glycémie (IGG) .\n\nL'extension MesMomentOfMeasurement (contexte de la mesure) est utilisée dans le cas de la mesure du glucose sanguin.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/vitalsigns",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.meta.source",
        "path" : "Observation.meta.source",
        "short" : "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
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
        "id" : "Observation.extension:MesOriginOfData",
        "path" : "Observation.extension",
        "sliceName" : "MesOriginOfData",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-origin-of-data"
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
        "id" : "Observation.extension:MesMomentOfMeasurement.value[x]",
        "path" : "Observation.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J157-MomentGlucose-ENS/FHIR/JDV-J157-MomentGlucose-ENS"
        }
      },
      {
        "id" : "Observation.extension:MesNumberOfDays",
        "path" : "Observation.extension",
        "sliceName" : "MesNumberOfDays",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-number-of-days"
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
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Types de glycémie:\r\n• Glucose sanguin\r\n• Glucose interstitiel\r\n• Index de gestion de glycémie (IGG)",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J154-TypeGlucose-ENS/FHIR/JDV-J154-TypeGlucose-ENS"
        }
      },
      {
        "id" : "Observation.code.coding.system",
        "path" : "Observation.code.coding.system",
        "min" : 1
      },
      {
        "id" : "Observation.code.coding.code",
        "path" : "Observation.code.coding.code",
        "min" : 1
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
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "type" : [
          {
            "code" : "dateTime"
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
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.value[x].value",
        "path" : "Observation.value[x].value",
        "short" : "Valeur mesurée"
      },
      {
        "id" : "Observation.value[x].system",
        "path" : "Observation.value[x].system",
        "min" : 1,
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.value[x].code",
        "path" : "Observation.value[x].code",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "description" : "https://mos.esante.gouv.fr/NOS/JDV_J163-GlucoseUnits-ENS/FHIR/JDV-J163-GlucoseUnits-ENS",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J163-GlucoseUnits-ENS/FHIR/JDV-J163-GlucoseUnits-ENS"
        }
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
        "id" : "Observation.method",
        "path" : "Observation.method",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/mesures/ValueSet/method-glucose-vs"
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
