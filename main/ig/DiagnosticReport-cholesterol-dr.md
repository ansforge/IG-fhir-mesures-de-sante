# cholesterol-dr - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cholesterol-dr**

## Example DiagnosticReport: cholesterol-dr

Profil: [DiagnosticReport mesures biologie](StructureDefinition-mesures-diagnostic-report.md)

## Compte rendu du laboratoire [Recherche] Patient ; Document 

|
|

**Détails du rapport**

* **Code**: [Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique](Observation-cholesterol-total-example.md)
  * **Valeur**: 0.4 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')- 11.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [HDL Cholesterol](Observation-cholesterol-hdl-example.md)
  * **Valeur**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: >3.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [LDL Cholesterol](Observation-cholesterol-ldl-example.md)
  * **Valeur**: 7.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: <2.6 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [LDL Cholesterol](Observation-cholesterol-trigly-example.md)
  * **Valeur**: 5.6 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')- 21.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [Hémoglobine A1c %](Observation-glycemia-example.md)
  * **Valeur**: 92 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL')
  * **Plage de référence**: 70 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL')- 100 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL')
  * **Drapeaux**: Final
  * **When For**: 2022-11-06



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "cholesterol-dr",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-diagnostic-report"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11502-2",
        "display" : "Compte rendu du laboratoire [Recherche] Patient ; Document"
      }
    ]
  },
  "result" : [
    {
      "reference" : "Observation/cholesterol-total-example"
    },
    {
      "reference" : "Observation/cholesterol-hdl-example"
    },
    {
      "reference" : "Observation/cholesterol-ldl-example"
    },
    {
      "reference" : "Observation/cholesterol-trigly-example"
    },
    {
      "reference" : "Observation/glycemia-example"
    }
  ]
}

```
