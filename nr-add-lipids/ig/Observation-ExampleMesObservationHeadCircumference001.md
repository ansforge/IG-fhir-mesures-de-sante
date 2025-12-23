# ExampleMesObservationHeadCircumference001 - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleMesObservationHeadCircumference001**

## Example Observation: ExampleMesObservationHeadCircumference001

Profil: [Périmètre Crânien](StructureDefinition-mesures-observation-head-circumference.md)

**status**: Final

**category**: Vital Signs

**code**: Head Occipital-frontal circumference by Tape measure

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 2022-11-06

**value**: 61 cm(Détails : code UCUMcm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleMesObservationHeadCircumference001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-head-circumference"
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
        "code" : "8287-5"
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
    "value" : 61,
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
