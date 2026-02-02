# Bundle d'alimentation des mesures de biologie - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle d'alimentation des mesures de biologie**

## Resource Profile: Bundle d'alimentation des mesures de biologie 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-bundle-flux-alimentation-biologie | *Version*:3.2.0-ballot |
| Active as of 2026-02-02 | *Computable Name*:MesBundleFluxAlimentationBiologie |

 
Profil biologie de la ressource Bundle du flux d’alimentation des mesures de biologie à transmettre 

**Utilisations:**

* Exemples pour ce Profil: [Bundle/example-mes-fr-bundle-bio-003](Bundle-example-mes-fr-bundle-bio-003.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-bundle-flux-alimentation-biologie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-bundle-flux-alimentation-biologie.csv), [Excel](StructureDefinition-mesures-bundle-flux-alimentation-biologie.xlsx), [Schematron](StructureDefinition-mesures-bundle-flux-alimentation-biologie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-bundle-flux-alimentation-biologie",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-bundle-flux-alimentation-biologie",
  "version" : "3.2.0-ballot",
  "name" : "MesBundleFluxAlimentationBiologie",
  "title" : "Bundle d'alimentation des mesures de biologie",
  "status" : "active",
  "date" : "2026-02-02T08:10:43+00:00",
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
  "description" : "Profil biologie de la ressource Bundle du flux d'alimentation des mesures de biologie à transmettre",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle",
        "constraint" : [
          {
            "key" : "mesures-inv-1",
            "severity" : "error",
            "human" : "Si le cholestérol HDL est présent, alors le cholestérol total doit également être présent.",
            "expression" : "entry.resource.where(code = '2085-9').exists() implies entry.resource.where(code = '2093-3').exists()",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-bundle-flux-alimentation-biologie"
          },
          {
            "key" : "mesures-inv-2",
            "severity" : "error",
            "human" : "Si le cholestérol total est présent, alors le cholestérol HDL doit également être présent.",
            "expression" : "entry.resource.where(code = '2093-3').exists() implies entry.resource.where(code = '2085-9').exists()",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-bundle-flux-alimentation-biologie"
          }
        ]
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "Slice based on the request.url pattern",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation-ldl",
        "path" : "Bundle.entry",
        "sliceName" : "mes-observation-ldl",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-observation-ldl.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-ldl"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-observation-ldl.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation-ldl.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-observation-ldl.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:mes-observation-hdl",
        "path" : "Bundle.entry",
        "sliceName" : "mes-observation-hdl",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-observation-hdl.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-hdl"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-observation-hdl.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation-hdl.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-observation-hdl.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:mes-observation-trigly",
        "path" : "Bundle.entry",
        "sliceName" : "mes-observation-trigly",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-observation-trigly.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-trigly"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-observation-trigly.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation-trigly.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-observation-trigly.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:mes-observation-total",
        "path" : "Bundle.entry",
        "sliceName" : "mes-observation-total",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-observation-total.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-observation-total.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation-total.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-observation-total.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:mes-observation-aspect",
        "path" : "Bundle.entry",
        "sliceName" : "mes-observation-aspect",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-observation-aspect.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-aspect"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-observation-aspect.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation-aspect.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-observation-aspect.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:mes-observation-glycemie",
        "path" : "Bundle.entry",
        "sliceName" : "mes-observation-glycemie",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-observation-glycemie.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-glucose"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-observation-glycemie.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation-glycemie.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-observation-glycemie.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:mes-diagnostic-report",
        "path" : "Bundle.entry",
        "sliceName" : "mes-diagnostic-report",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-diagnostic-report.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DiagnosticReport",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-diagnostic-report"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-diagnostic-report.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-diagnostic-report.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-diagnostic-report.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "DiagnosticReport"
      }
    ]
  }
}

```
