# cholesterol-trigly-example - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cholesterol-trigly-example**

## Example Observation: cholesterol-trigly-example

Profil: [Cholestérol - triglycerides](StructureDefinition-mesures-observation-cholesterol-trigly.md)

> **Valeur originale**
* has-been-converted: true
* original-code: Triglyceride [Mass/volume] in Serum or Plasma
* original-value: 4.9 g/L (Détails : code UCUMg/L = 'g/L')

**status**: Final

**code**: LDL Cholesterol

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 2024-10-15

**value**: 5.6 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')

**method**: DEG

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L') | 21.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "cholesterol-trigly-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-trigly"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "has-been-converted",
          "valueBoolean" : true
        },
        {
          "url" : "original-code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "2571-8",
                "display" : "Triglyceride [Mass/volume] in Serum or Plasma"
              }
            ]
          }
        },
        {
          "url" : "original-value",
          "valueQuantity" : {
            "value" : 4.9,
            "unit" : "g/L",
            "system" : "http://unitsofmeasure.org",
            "code" : "g/L"
          }
        }
      ],
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data"
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "2571-8",
        "display" : "LDL Cholesterol"
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
    "value" : 5.6,
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
        "value" : 2.8,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      },
      "high" : {
        "value" : 21.1,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      }
    }
  ]
}

```
