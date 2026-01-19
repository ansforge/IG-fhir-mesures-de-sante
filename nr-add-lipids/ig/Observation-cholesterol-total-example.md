# cholesterol-total-example - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cholesterol-total-example**

## Example Observation: cholesterol-total-example

Profil: [Cholestérol - total](StructureDefinition-mesures-observation-cholesterol-total.md)

**status**: Final

**code**: Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique

**subject**: [Pierre Durand](Patient-ExamplefrPatient001.md)

**effective**: 2024-10-15

**value**: 0.4 mmol/L(Détails : code UCUMmmol/L = 'mmol/L')

**method**: 

**Exception lors de la génération du narratif : Error accessing https://smt.esante.gouv.fr/fhir for https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789: Error fetching the server's capability statement: Error from https://smt.esante.gouv.fr/fhir: Oops ! window.onload=function(){var e=document.getElementById("_alt");document.getElementById("_dt").textContent=new Date().toLocaleString();document.getElementById("_id").textContent.match(/[0-9a-f]{32}/)||e.parentNode.removeChild(e)} body{text-align:center;padding:10%;font:18px Helvetica}h1{font-size:30px}#_svg{fill:#e41a22;width:50%} ul{display:table; text-align:center; margin:0 auto;} li{text-align:left;} li.items_inside_li{ vertical-align:middle;} Requête bloquée par le pare-feu applicatif Claranet WebFence La requête que vous venez d'exécuter a été bloquée par mesure de sécurité. Alerte ID: Date: Afin de vous débloquer rapidement, merci d'envoyer les informations suivantes : * L'identifiant de l'alerte (voir ci-dessus) * L'URL de la page qui a généré le blocage A l'adresse ans-terminologies@esante.gouv.fr (utilisez ce lien pour préremplir le message).**



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "cholesterol-total-example",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "2093-3",
        "display" : "Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplefrPatient001",
    "type" : "Patient",
    "display" : "Pierre Durand"
  },
  "effectiveDateTime" : "2024-10-15",
  "valueQuantity" : {
    "value" : 0.4,
    "unit" : "mmol/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/L"
  },
  "method" : {
    "coding" : [
      {
        "system" : "https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789",
        "code" : "DEG"
      }
    ]
  },
  "referenceRange" : [
    {
      "low" : {
        "value" : 2.8,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      },
      "high" : {
        "value" : 11.1,
        "unit" : "mmol/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mmol/L"
      }
    }
  ]
}

```
