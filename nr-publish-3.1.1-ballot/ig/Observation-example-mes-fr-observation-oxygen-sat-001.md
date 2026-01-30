# Exemple de mesure de la saturation en oxygène - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de la saturation en oxygène**

## Example Observation: Exemple de mesure de la saturation en oxygène

Profil: [Saturation en Oxygène](StructureDefinition-mesures-fr-observation-oxygen-sat.md)

**status**: Final

**category**: Vital Signs

**code**: Oxygène saturation [Fraction massique] Sang artériel ; Numérique

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 1999-07-02

**value**: 99 %O2 (Détails : code UCUM% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-oxygen-sat-001",
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
        "display" : "Oxygène saturation [Fraction massique] Sang artériel ; Numérique"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example-mes-fr-patient-001",
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
