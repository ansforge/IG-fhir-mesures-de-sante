# Exemple de mesure du cholestérol triglycérides - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure du cholestérol triglycérides**

## Example Observation: Exemple de mesure du cholestérol triglycérides

Profil: [Cholestérol - triglycerides](StructureDefinition-mesures-observation-cholesterol-trigly.md)

> **Valeur originale**
* has-been-converted: true
* original-code: Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique
* original-value: 4.9 g/L (Détails : code UCUMg/L = 'g/L')

**status**: Final

**code**: LDL Cholesterol

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

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
  "id" : "example-mes-fr-observation-cholesterol-trigly-003",
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
                "display" : "Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique"
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
    "reference" : "Patient/example-mes-fr-patient-001",
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
        "value" : 21.1,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      }
    }
  ]
}

```
