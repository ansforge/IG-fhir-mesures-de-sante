# Exemple de mesure de la fréquence respiratoire - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de la fréquence respiratoire**

## Example Observation: Exemple de mesure de la fréquence respiratoire

Profil: [Fréquence respiratoire](StructureDefinition-mesures-fr-observation-resp-rate.md)

**status**: Final

**category**: Vital Signs

**code**: Respiratory rate

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2023-07-02

**value**: 18 /min (Détails : code UCUM/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-resp-rate-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-resp-rate"
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
        "code" : "9279-1"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example-mes-fr-patient-001",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2023-07-02",
  "valueQuantity" : {
    "value" : 18,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
