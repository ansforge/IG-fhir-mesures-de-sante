# Cholestérol - total - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cholestérol - total**

## Resource Profile: Cholestérol - total 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total | *Version*:3.1.0 |
| Active as of 2025-12-23 | *Computable Name*:MesFrObservationCholesterolTotal |

 
Profil biologie de la ressource Observation pour définir le cholestérol total 

**Utilisations:**

* Utiliser ce Profil: [Bundle d'alimentation des mesures de biologie](StructureDefinition-mesures-bundle-flux-alimentation-biologie.md)
* Référer à ce Profil: [DiagnosticReport mesures biologie](StructureDefinition-mesures-diagnostic-report.md)
* Exemples pour ce Profil: [Observation/cholesterol-total-example](Observation-cholesterol-total-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-observation-cholesterol-total)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-observation-cholesterol-total.csv), [Excel](StructureDefinition-mesures-observation-cholesterol-total.xlsx), [Schematron](StructureDefinition-mesures-observation-cholesterol-total.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-observation-cholesterol-total",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total",
  "version" : "3.1.0",
  "name" : "MesFrObservationCholesterolTotal",
  "title" : "Cholestérol - total",
  "status" : "active",
  "date" : "2025-12-23T16:18:55+00:00",
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
  "description" : "Profil biologie de la ressource Observation pour définir le cholestérol total",
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
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2093-3",
              "display" : "Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique"
            }
          ]
        }
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
        "patternString" : "mmol/L"
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
        "patternCode" : "mmol/L"
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
        "min" : 1,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789"
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
            "source" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.high",
        "path" : "Observation.referenceRange.high",
        "min" : 1
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
