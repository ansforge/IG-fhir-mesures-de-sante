# Exemple de mesure du tour de taille - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure du tour de taille**

## Example Observation: Exemple de mesure du tour de taille

Profil: [Tour de taille](StructureDefinition-mesures-observation-waist-circumference.md)

**Raison de la mesure**: Prise de masse importante récente (confinement)

**status**: Final

**category**: Vital Signs

**code**: Waist Circumference at umbilicus by Tape measure

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2022-11-06

**value**: 117 cm (Détails : code UCUMcm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-waist-circum-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-waist-circumference"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
      "valueString" : "Prise de masse importante récente (confinement)"
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
        "code" : "8280-0"
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
    "value" : 117,
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
