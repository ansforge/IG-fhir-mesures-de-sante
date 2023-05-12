
### Généralités

La mesure bodyWeight blablabla

### Les éléments clefs de l'implémentation

#### Le code LOINC de la mesure

Le code loinc est spécifié dans code.coding.code.
Sa valeur est fixée à "29463-7".

~~~~~~~~
"code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "29463-7"
      }
    ]
  }
~~~~~~~~
{: .language-json}

### La valeur de la mesure

La valeur mesurée est renseignée, en kg, dans l'élément "valueQuantity":

~~~~~~~~
 "valueQuantity": {
    "system": "http://unitsofmeasure.org",
    "code": "kg",
    "value": 96,
    "unit": "Kg"
  }
~~~~~~~~
{: .language-json}


### Exemple complet

~~~~~~~~
{
  "resourceType": "Observation",
  "id": "ExampleMesFrObservationBodyWeight001",
  "meta": {
    "profile": [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-body-weight"
    ]
  },
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "29463-7"
      }
    ]
  },
  "extension": [
    {
      "url": "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
      "valueString": "Calcul IMC"
    }
  ],
  "valueQuantity": {
    "system": "http://unitsofmeasure.org",
    "code": "kg",
    "value": 96,
    "unit": "Kg"
  },
  "status": "final",
  "subject": {
    "reference": "Patient/ExamplefrPatient001",
    "display": "Pierre Durand",
    "type": "Patient"
  },
  "effectiveDateTime": "2022-11-06",
  "method": {
    "coding": [
      {
        "code": "K50BI02",
        "system": "https://mos.esante.gouv.fr/NOS/TRE_R306-CLADIMED/FHIR/TRE-R306-CLADIMED"
      }
    ]
  }
}
~~~~~~~~
{: .language-json}
