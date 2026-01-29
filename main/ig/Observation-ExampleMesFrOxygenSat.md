# ExampleMesFrOxygenSat - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleMesFrOxygenSat**

## Example Observation: ExampleMesFrOxygenSat

Profil: [Saturation en Oxygène](StructureDefinition-mesures-fr-observation-oxygen-sat.md)

**status**: Final

**category**: Vital Signs

**code**: Oxygen saturation in Arterial blood

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 1999-07-02

**value**: 99 %O2 (Détails : code UCUM% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleMesFrOxygenSat",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-oxygen-sat"
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
        "code" : "2708-6",
        "display" : "Oxygen saturation in Arterial blood"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrPatient001",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "1999-07-02",
  "valueQuantity" : {
    "value" : 99,
    "unit" : "%O2",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  }
}

```
