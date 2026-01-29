# ExampleMesObservationStepsByDay001 - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleMesObservationStepsByDay001**

## Example Observation: ExampleMesObservationStepsByDay001

Profil: [Nombre de pas par jour](StructureDefinition-mesures-observation-steps-by-day.md)

**Raison de la mesure**: Essoufflement du patient

**status**: Final

**category**: Vital Signs

**code**: Number of steps in 24 hour Measured

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 2022-11-06

**value**: 2500 steps/day (Détails : code UCUM1/(24.h) = '1/(24.h)')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleMesObservationStepsByDay001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-steps-by-day"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
      "valueString" : "Essoufflement du patient"
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
        "system" : "http://loinc.org",
        "code" : "41950-7"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrPatient001",
    "type" : "Patient",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2022-11-06",
  "valueQuantity" : {
    "value" : 2500,
    "unit" : "steps/day",
    "system" : "http://unitsofmeasure.org",
    "code" : "1/(24.h)"
  }
}

```
