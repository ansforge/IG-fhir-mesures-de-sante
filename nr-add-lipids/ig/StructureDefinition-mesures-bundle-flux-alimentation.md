# Bundle d'alimentation - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle d'alimentation**

## Resource Profile: Bundle d'alimentation 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-bundle-flux-alimentation | *Version*:3.1.0 |
| Active as of 2026-01-19 | *Computable Name*:MesBundleFluxAlimentation |

 
Profil de la ressource Bundle du flux d’alimentation à envoyer au serveur 

**Utilisations:**

* Exemples pour ce Profil: [Bundle/bundle-example-body-weight](Bundle-bundle-example-body-weight.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-bundle-flux-alimentation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-bundle-flux-alimentation.csv), [Excel](StructureDefinition-mesures-bundle-flux-alimentation.xlsx), [Schematron](StructureDefinition-mesures-bundle-flux-alimentation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-bundle-flux-alimentation",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-bundle-flux-alimentation",
  "version" : "3.1.0",
  "name" : "MesBundleFluxAlimentation",
  "title" : "Bundle d'alimentation",
  "status" : "active",
  "date" : "2026-01-19T09:54:18+00:00",
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
  "description" : "Profil de la ressource Bundle du flux d'alimentation à envoyer au serveur",
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
        "path" : "Bundle"
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
              "type" : "pattern",
              "path" : "request.url"
            }
          ],
          "description" : "Slice based on the request.url pattern",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation",
        "path" : "Bundle.entry",
        "sliceName" : "mes-observation",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-observation.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bmi",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bodyheight",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-body-temperature",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-body-weight",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bp",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-heartrate",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-head-circumference",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-pain-severity",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-steps-by-day",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-waist-circumference",
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-oxygen-sat"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-observation.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-observation.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-observation.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Observation"
      },
      {
        "id" : "Bundle.entry:mes-device",
        "path" : "Bundle.entry",
        "sliceName" : "mes-device",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:mes-device.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Device",
            "profile" : ["http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:mes-device.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:mes-device.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:mes-device.request.url",
        "path" : "Bundle.entry.request.url",
        "patternUri" : "Device"
      }
    ]
  }
}

```
