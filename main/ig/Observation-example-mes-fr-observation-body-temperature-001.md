# Exemple de mesure de la température corporelle - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de la température corporelle**

## Example Observation: Exemple de mesure de la température corporelle

Profil: [Température](StructureDefinition-mesures-fr-observation-body-temperature.md)

**status**: Final

**category**: Vital Signs

**code**: Température corporelle [Température] Patient ; Numérique

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2022-11-06

**value**: 36.5 C (Détails : code UCUMCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-body-temperature-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-body-temperature"
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
        "code" : "8310-5"
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
    "value" : 36.5,
    "unit" : "C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
