# Cholestérol - Ratio LDL/HDL - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cholestérol - Ratio LDL/HDL**

## Resource Profile: Cholestérol - Ratio LDL/HDL 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-ratio | *Version*:3.1.0 |
| Active as of 2026-01-19 | *Computable Name*:MesFrObservationCholesterolRatio |

 
Profil biologie de la ressource Observation pour définir le ratio cholestérol LDL/HDL 

**Utilisations:**

* Utiliser ce Profil: [Bundle d'alimentation des mesures de biologie](StructureDefinition-mesures-bundle-flux-alimentation-biologie.md)
* Référer à ce Profil: [DiagnosticReport mesures biologie](StructureDefinition-mesures-diagnostic-report.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-observation-cholesterol-ratio)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-observation-cholesterol-ratio.csv), [Excel](StructureDefinition-mesures-observation-cholesterol-ratio.xlsx), [Schematron](StructureDefinition-mesures-observation-cholesterol-ratio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-observation-cholesterol-ratio",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-ratio",
  "version" : "3.1.0",
  "name" : "MesFrObservationCholesterolRatio",
  "title" : "Cholestérol - Ratio LDL/HDL",
  "status" : "active",
  "date" : "2026-01-19T09:56:13+00:00",
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
  "description" : "Profil biologie de la ressource Observation pour définir le ratio cholestérol LDL/HDL",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
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
        "short" : "Valeur d'origine de la donnée. Cette extension est présente uniquement si le résultat contenu dans Observation.value provient d'une conversion (par ex. g/L converti en mmol/L)",
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
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11054-4",
              "display" : "Cholestérol LDL/cholestérol HDL [Masse ratio] Sérum/Plasma ; Numérique"
            }
          ]
        }
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
        "min" : 1
      },
      {
        "id" : "Observation.value[x].unit",
        "path" : "Observation.value[x].unit",
        "min" : 1,
        "patternString" : "{ratio}"
      },
      {
        "id" : "Observation.value[x].system",
        "path" : "Observation.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.value[x].code",
        "path" : "Observation.value[x].code",
        "min" : 1,
        "patternCode" : "{ratio}"
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
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-technique-biologie-cisis"
        }
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "L'intervalle de référence est obligatoire pour interpréter le résultat par rapport à la norme, qui peut varier selon de nombreux critères : la méthode d'analyse, l'age, le sexe, ...",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "mes-ir",
            "severity" : "error",
            "human" : "L'intervalle de référence est obligatoire dans le cas où la donnée provient d'un compte rendu de biologie.",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-ratio"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.low",
        "path" : "Observation.referenceRange.low",
        "min" : 1
      },
      {
        "id" : "Observation.referenceRange.high",
        "path" : "Observation.referenceRange.high",
        "max" : "0"
      },
      {
        "id" : "Observation.referenceRange.type",
        "path" : "Observation.referenceRange.type",
        "max" : "0"
      },
      {
        "id" : "Observation.referenceRange.appliesTo",
        "path" : "Observation.referenceRange.appliesTo",
        "max" : "0"
      },
      {
        "id" : "Observation.referenceRange.age",
        "path" : "Observation.referenceRange.age",
        "max" : "0"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "max" : "0"
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "max" : "0"
      }
    ]
  }
}

```
