# cholesterol-ldl-example - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cholesterol-ldl-example**

## Example Observation: cholesterol-ldl-example

Profil: [Cholestérol - LDL](StructureDefinition-mesures-observation-cholesterol-ldl.md)

**status**: Final

**code**: LDL Cholesterol

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 2024-10-15

**value**: 7.8 mmol/L(Détails : code UCUMmmol/L = 'mmol/L')

**method**: DEG

### ReferenceRanges

| | |
| :--- | :--- |
| - | **High** |
| * | 2.6 mmol/L(Détails : code UCUMmmol/L = 'mmol/L') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "cholesterol-ldl-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-ldl"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "2089-1",
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
    "value" : 7.8,
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
      "high" : {
        "value" : 2.6,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      }
    }
  ]
}

```
