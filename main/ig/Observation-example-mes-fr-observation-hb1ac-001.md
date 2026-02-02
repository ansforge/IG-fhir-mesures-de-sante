# Exemple de mesure Hb1Ac - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure Hb1Ac**

## Example Observation: Exemple de mesure Hb1Ac

Profil: [Hémoglobine glyquée (Hb1Ac)](StructureDefinition-mesures-observation-hb1ac.md)

**status**: Final

**category**: Vital Signs

**code**: Hémoglobine A1c/hémoglobine totale [Fraction massique] Sang ; Numérique

**subject**: [Pierre Jean Durand (official) Male, Date de Naissance :1974-12-25 ( urn:oid:1.2.250.1.213.1.4.8#123456789012244 (use: official, ))](Patient-example-mes-fr-patient-001.md)

**effective**: 2025-07-07 09:00:00+0200

**performer**: [Jean Dupont](Practitioner-example-mes-fr-practitionner-001.md)

**value**: 6.5 % (Détails : code UCUM% = '%')

**method**: High-performance liquid chromatography



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-hb1ac-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-hb1ac"
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
        "code" : "4548-4"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example-mes-fr-patient-001"
  },
  "effectiveDateTime" : "2025-07-07T09:00:00+02:00",
  "performer" : [
    {
      "reference" : "Practitioner/example-mes-fr-practitionner-001",
      "display" : "Jean Dupont"
    }
  ],
  "valueQuantity" : {
    "value" : 6.5,
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "method" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/ValueSet/method-glucose-vs",
        "code" : "HPLC",
        "display" : "High-performance liquid chromatography"
      }
    ]
  }
}

```
