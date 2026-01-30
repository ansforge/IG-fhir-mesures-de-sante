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

* **Code**: [Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique](Observation-b7a049e3-c07e-4e1c-95a5-909da37f75ce.md)
  * **Valeur**: 0.4 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')- 11.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique](Observation-7b166d82-27b6-4878-9765-3fe101618edf.md)
  * **Valeur**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: >3.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique](Observation-9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e.md)
  * **Valeur**: 7.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: <2.6 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique](Observation-645f7341-715f-44fb-87e9-93f2e7d125a5.md)
  * **Valeur**: 5.6 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Plage de référence**: 2.8 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')- 21.1 mmol/L (Détails : code UCUMmmol/L = 'mmol/L')
  * **Drapeaux**: Final
  * **When For**: 2024-10-15
* **Code**: [Hémoglobine A1c %](Observation-8057b6ec-1417-4f1f-9a00-b0c46e7e71b1.md)
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
      "reference" : "Observation/b7a049e3-c07e-4e1c-95a5-909da37f75ce"
    },
    {
      "reference" : "Observation/7b166d82-27b6-4878-9765-3fe101618edf"
    },
    {
      "reference" : "Observation/9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e"
    },
    {
      "reference" : "Observation/645f7341-715f-44fb-87e9-93f2e7d125a5"
    },
    {
      "reference" : "Observation/8057b6ec-1417-4f1f-9a00-b0c46e7e71b1"
    }
  ]
}

```
