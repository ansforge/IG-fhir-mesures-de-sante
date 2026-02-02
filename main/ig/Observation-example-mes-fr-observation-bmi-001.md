# Exemple de mesure de l'IMC - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de l'IMC**

## Example Observation: Exemple de mesure de l'IMC

Profil: [Indice de Masse Corporelle](StructureDefinition-mesures-fr-observation-bmi.md)

**status**: Final

**category**: Vital Signs

**code**: Indice de masse corporelle [Ratio] Patient ; Numérique

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2022-11-06

**value**: 28 Kg/m2 (Détails : code UCUMkg/m2 = 'kg/m2')

**interpretation**: High



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-bmi-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bmi"
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
        "code" : "39156-5"
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
    "value" : 28,
    "unit" : "Kg/m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg/m2"
  },
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }
      ]
    }
  ]
}

```
