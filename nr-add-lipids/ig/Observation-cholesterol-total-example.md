# cholesterol-total-example - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cholesterol-total-example**

## Example Observation: cholesterol-total-example

Profil: [Cholestérol - total](StructureDefinition-mesures-observation-cholesterol-total.md)

**status**: Final

**code**: Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 2024-10-15

**value**: 0.4 mmol/L(Détails : code UCUMmmol/L = 'mmol/L')

**method**: DEG

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 2.8 mmol/L(Détails : code UCUMmmol/L = 'mmol/L') | 11.1 mmol/L(Détails : code UCUMmmol/L = 'mmol/L') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "cholesterol-total-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "2093-3",
        "display" : "Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique"
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
    "value" : 0.4,
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
        "value" : 11.1,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      }
    }
  ]
}

```
