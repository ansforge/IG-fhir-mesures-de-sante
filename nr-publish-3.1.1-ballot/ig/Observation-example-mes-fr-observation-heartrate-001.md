# Exemple de mesure de la fréquence cardiaque - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de la fréquence cardiaque**

## Example Observation: Exemple de mesure de la fréquence cardiaque

Profil: [Fréquence Cardiaque](StructureDefinition-mesures-fr-observation-heartrate.md)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2022-11-06

**value**: 70 battements/minute (Détails : code UCUM/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-heartrate-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-heartrate"
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
        "code" : "8867-4"
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
    "value" : 70,
    "unit" : "battements/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
