# DiagnosticReport mesures biologie - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiagnosticReport mesures biologie**

## Resource Profile: DiagnosticReport mesures biologie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-diagnostic-report | *Version*:3.1.1 |
| Active as of 2026-01-29 | *Computable Name*:MesDiagnosticReport |

 
Profil biologie de la ressource DiagnosticReport pour définir un rapport de biologie 

**Utilisations:**

* Utiliser ce Profil: [Bundle d'alimentation des mesures de biologie](StructureDefinition-mesures-bundle-flux-alimentation-biologie.md)
* Exemples pour ce Profil: [DiagnosticReport/cholesterol-dr](DiagnosticReport-cholesterol-dr.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-diagnostic-report)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-diagnostic-report.csv), [Excel](StructureDefinition-mesures-diagnostic-report.xlsx), [Schematron](StructureDefinition-mesures-diagnostic-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-diagnostic-report",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-diagnostic-report",
  "version" : "3.1.1",
  "name" : "MesDiagnosticReport",
  "title" : "DiagnosticReport mesures biologie",
  "status" : "active",
  "date" : "2026-01-29T14:24:01+00:00",
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
  "description" : "Profil biologie de la ressource DiagnosticReport pour définir un rapport de biologie",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DiagnosticReport.code",
        "path" : "DiagnosticReport.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11502-2",
              "display" : "Compte rendu du laboratoire [Recherche] Patient ; Document"
            }
          ]
        }
      },
      {
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "DiagnosticReport.result:ldl-cholesterol",
        "path" : "DiagnosticReport.result",
        "sliceName" : "ldl-cholesterol",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-ldl"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.result:hdl-cholesterol",
        "path" : "DiagnosticReport.result",
        "sliceName" : "hdl-cholesterol",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-hdl"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.result:total-cholesterol",
        "path" : "DiagnosticReport.result",
        "sliceName" : "total-cholesterol",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.result:trigly-cholesterol",
        "path" : "DiagnosticReport.result",
        "sliceName" : "trigly-cholesterol",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.result:cholesterol-aspect",
        "path" : "DiagnosticReport.result",
        "sliceName" : "cholesterol-aspect",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-aspect"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.result:glycemie",
        "path" : "DiagnosticReport.result",
        "sliceName" : "glycemie",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-glucose"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
