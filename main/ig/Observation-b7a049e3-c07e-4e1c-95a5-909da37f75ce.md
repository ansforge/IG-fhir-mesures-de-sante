# Exemple de mesure du cholestérol total - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure du cholestérol total**

## Example Observation: Exemple de mesure du cholestérol total

Profil: [Cholestérol - total](StructureDefinition-mesures-observation-cholesterol-total.md)

> **Valeur originale**
* has-been-converted: true
* original-code: Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique
* original-value: 0.155 g/L (Détails : code UCUMg/L = 'g/L')

**status**: Final

**code**: Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2024-10-15

**value**: 0.4 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')

**method**: DEG

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L') | 11.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "b7a049e3-c07e-4e1c-95a5-909da37f75ce",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total"
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
                "code" : "2093-3",
                "display" : "Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique"
              }
            ]
          }
        },
        {
          "url" : "original-value",
          "valueQuantity" : {
            "value" : 0.155,
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
        "code" : "2093-3",
        "display" : "Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique"
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
    "value" : 0.4,
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
