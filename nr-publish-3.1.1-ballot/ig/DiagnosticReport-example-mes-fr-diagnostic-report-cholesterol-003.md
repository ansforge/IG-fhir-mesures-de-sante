# Exemple de rapport diagnostique de bilan lipidique - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de rapport diagnostique de bilan lipidique**

## Example DiagnosticReport: Exemple de rapport diagnostique de bilan lipidique

Profil: [DiagnosticReport mesures biologie](StructureDefinition-mesures-diagnostic-report.md)

## Compte rendu du laboratoire [Recherche] Patient ; Document 

|
|

**Détails du rapport**

* **Code**: [Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique](Observation-example-mes-fr-observation-cholesterol-total-003.md)
  * **Valeur**: 0.4 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')- 11.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique](Observation-example-mes-fr-observation-cholesterol-hdl-003.md)
  * **Valeur**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: >3.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique](Observation-example-mes-fr-observation-cholesterol-ldl-003.md)
  * **Valeur**: 7.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: <2.6 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [LDL Cholesterol](Observation-example-mes-fr-observation-cholesterol-trigly-003.md)
  * **Valeur**: 5.6 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')- 21.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [Hémoglobine A1c %](Observation-example-mes-fr-observation-glycemia-003.md)
  * **Valeur**: 92 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL')
  * **Plage de référence**: 70 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL')- 100 milligramme par décilitre (Détails : code UCUMmg/dL = 'mg/dL')
  * **Drapeaux**: Final
  * **When For**: 2022-11-06



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "example-mes-fr-diagnostic-report-cholesterol-003",
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
      "reference" : "Observation/example-mes-fr-observation-cholesterol-total-003"
    },
    {
      "reference" : "Observation/example-mes-fr-observation-cholesterol-hdl-003"
    },
    {
      "reference" : "Observation/example-mes-fr-observation-cholesterol-ldl-003"
    },
    {
      "reference" : "Observation/example-mes-fr-observation-cholesterol-trigly-003"
    },
    {
      "reference" : "Observation/example-mes-fr-observation-glycemia-003"
    }
  ]
}

```
