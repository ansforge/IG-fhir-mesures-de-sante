# Exemple de mesure de la sévérité de la douleur - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de la sévérité de la douleur**

## Example Observation: Exemple de mesure de la sévérité de la douleur

Profil: [Niveau de douleur](StructureDefinition-mesures-observation-pain-severity.md)

**Raison de la mesure**: Malaise du patient

**status**: Final

**category**: Vital Signs

**code**: Pain severity - 0-10 verbal numeric rating [Score] - Reported

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2022-11-06

**value**: 5 Level (Détails : code UCUM1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-pain-severity-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-pain-severity"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
      "valueString" : "Malaise du patient"
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
        "code" : "72514-3"
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
    "value" : 5,
    "unit" : "Level",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  }
}

```
