# Exemple de mesure de la pression artérielle - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de la pression artérielle**

## Example Observation: Exemple de mesure de la pression artérielle

Profil: [Pression Artérielle](StructureDefinition-mesures-fr-observation-bp.md)

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2012-09-17

**performer**: [Jean Dupont](Practitioner-example-mes-fr-practitionner-001.md)

**interpretation**: Below low normal

**bodySite**: Bras

> **component****code**: Systolic blood pressure**value**: 107 mm[Hg] (Détails : code UCUMmm[Hg] = 'mm[Hg]')**interpretation**: Normal

> **component****code**: Diastolic blood pressure**value**: 60 mm[Hg] (Détails : code UCUMmm[Hg] = 'mm[Hg]')**interpretation**: En-dessous de la normale



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-bp-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bp"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "85354-9"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example-mes-fr-patient-001",
    "type" : "Patient",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2012-09-17",
  "performer" : [
    {
      "reference" : "Practitioner/example-mes-fr-practitionner-001",
      "display" : "Jean Dupont"
    }
  ],
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "low"
        }
      ],
      "text" : "Below low normal"
    }
  ],
  "bodySite" : {
    "coding" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R309-FMA/FHIR/TRE-R309-FMA",
        "code" : "24890",
        "display" : "Bras"
      }
    ]
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 107,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      },
      "interpretation" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "code" : "N",
              "display" : "Normal"
            }
          ],
          "text" : "Normal"
        }
      ]
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 60,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      },
      "interpretation" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "code" : "L",
              "display" : "low"
            }
          ],
          "text" : "En-dessous de la normale"
        }
      ]
    }
  ]
}

```
