# Exemple de mesure du cholestérol LDL - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure du cholestérol LDL**

## Example Observation: Exemple de mesure du cholestérol LDL

Profil: [Cholestérol - LDL](StructureDefinition-mesures-observation-cholesterol-ldl.md)

> **Valeur originale**
* has-been-converted: true
* original-code: Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique
* original-value: 3.02 g/L (Détails : code UCUMg/L = 'g/L')

**status**: Final

**code**: Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2024-10-15

**value**: 7.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')

**method**: DEG

### ReferenceRanges

| | |
| :--- | :--- |
| - | **High** |
| * | 2.6 mmol/L (Détails : code UCUMmmol/L = 'mmol/L') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-ldl"
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
                "code" : "2089-1",
                "display" : "Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique"
              }
            ]
          }
        },
        {
          "url" : "original-value",
          "valueQuantity" : {
            "value" : 3.02,
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
        "code" : "2089-1",
        "display" : "Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example-mes-fr-patient-001",
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
        "system" : "https://smt.esante.gouv.fr/terminologie-tccr",
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
