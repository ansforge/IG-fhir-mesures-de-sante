# Exemple de mesure de la glycémie (001) - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de la glycémie (001)**

## Example Observation: Exemple de mesure de la glycémie (001)

Profil: [Glycémie](StructureDefinition-mesures-observation-glucose.md)

**Raison de la mesure**: Malaise du patient

**Moment de la mesure**: Glucose post prandial

**Nombre de jours**: 7j

**status**: Final

**category**: Vital Signs

**code**: Hémoglobine A1c %

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2022-11-06

**value**: 92 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 70 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL') | 100 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-glucose-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-glucose"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
      "valueString" : "Malaise du patient"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-moment-of-measurement",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc",
            "code" : "16915-1",
            "display" : "Glucose post prandial"
          }
        ]
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-number-of-days",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP",
            "code" : "GEN-275",
            "display" : "7j"
          }
        ]
      }
    }
  ],
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc",
        "code" : "4548-4"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example-mes-fr-patient-001",
    "type" : "Patient",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2022-11-06",
  "valueQuantity" : {
    "value" : 92,
    "unit" : "milligramme par décilitre",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "referenceRange" : [
    {
      "low" : {
        "value" : 70,
        "unit" : "milligramme par décilitre",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "high" : {
        "value" : 100,
        "unit" : "milligramme par décilitre",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      }
    }
  ]
}

```
