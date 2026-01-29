# ExampleMesFrObservationBodyHeight001 - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleMesFrObservationBodyHeight001**

## Example Observation: ExampleMesFrObservationBodyHeight001

Profil: [Taille](StructureDefinition-mesures-fr-observation-bodyheight.md)

**status**: Final

**category**: Vital Signs

**code**: Taille du patient [Longueur] Patient ; Numérique

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 1999-07-02

**value**: 185 cm (Détails : code UCUMcm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleMesFrObservationBodyHeight001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bodyheight"
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
        "code" : "8302-2"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrPatient001",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "1999-07-02",
  "valueQuantity" : {
    "value" : 185,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
