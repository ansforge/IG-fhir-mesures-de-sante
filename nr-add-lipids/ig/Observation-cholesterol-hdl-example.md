# cholesterol-hdl-example - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cholesterol-hdl-example**

## Example Observation: cholesterol-hdl-example

Profil: [Cholestérol - HDL](StructureDefinition-mesures-observation-cholesterol-hdl.md)

> **Origine de la donnée**
* hasBeenConverted: true
* originalCode: Cholesterol in HDL [Mass/volume] in Serum or Plasma
* originalValue: 1.08 g/L(Détails : code UCUMg/L = 'g/L')

**status**: Final

**code**: HDL Cholesterol

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 2024-10-15

**value**: 2.8 mmol/L(Détails : code UCUMmmol/L = 'mmol/L')

**method**: DEG

### ReferenceRanges

| | |
| :--- | :--- |
| - | **Low** |
| * | 3.1 mmol/L(Détails : code UCUMmmol/L = 'mmol/L') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "cholesterol-hdl-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-hdl"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "hasBeenConverted",
          "valueBoolean" : true
        },
        {
          "url" : "originalCode",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "2085-9",
                "display" : "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
              }
            ]
          }
        },
        {
          "url" : "originalValue",
          "valueQuantity" : {
            "value" : 1.08,
            "unit" : "g/L",
            "system" : "http://unitsofmeasure.org",
            "code" : "g/L"
          }
        }
      ],
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-origin-of-data"
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "2085-9",
        "display" : "HDL Cholesterol"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrPatient001",
    "type" : "Patient",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2024-10-15",
  "valueQuantity" : {
    "value" : 2.8,
    "unit" : "mmol/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/L"
  },
  "method" : {
    "coding" : [
      {
        "system" : "https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789",
        "code" : "DEG"
      }
    ]
  },
  "referenceRange" : [
    {
      "low" : {
        "value" : 3.1,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      }
    }
  ]
}

```
