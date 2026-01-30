# Exemple de mesure de poids corporel - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de mesure de poids corporel**

## Example Observation: Exemple de mesure de poids corporel

Profil: [Poids](StructureDefinition-mesures-fr-observation-body-weight.md)

**Raison de la mesure**: Calcul IMC

**status**: Final

**category**: Vital Signs

**code**: Poids corporel [Masse] Patient ; Numérique

**subject**: [Pierre Durand](Patient-example-mes-fr-patient-001.md)

**effective**: 2022-11-06

**value**: 96 Kg (Détails : code UCUMkg = 'kg')

**method**: Balance



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "example-mes-fr-observation-body-weight-001",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-body-weight"
    ]
  },
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
      "valueString" : "Calcul IMC"
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
        "code" : "29463-7"
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
    "value" : 96,
    "unit" : "Kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "method" : {
    "coding" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R306-CLADIMED/FHIR/TRE-R306-CLADIMED",
        "code" : "K50BI02"
      }
    ]
  }
}

```
