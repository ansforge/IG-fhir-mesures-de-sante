
### Généralités
  
La mesure du poids du patient est recueillie dans une observation "MesFrObservationBodyWeight".
  
### Les éléments clefs de l'implémentation
  
Les éléments clefs de l'implémentation de cette mesure de santé sont les suivants:

#### Le code LOINC de la mesure

Le code loinc de la mesure est spécifié dans code.coding.code.
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
  
  
### Le déclaration de conformité

On peut déclarer la conformité au profil "MesFrObservationBodyWeight" dans le but de permettre au système récepteur d'identifier le type de mesure qu'il manipule.
Cette déclaration de conformité se fait dans l'élément "meta":

~~~~~~~~
"meta": {
    "profile": [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-body-weight"
    ]
  }
~~~~~~~~
{: .language-json}
  
### Les extensions autorisées
  
#### MesReasonForMeasurement : motif de la mesure

Le motif de la mesure peut être précisé dans cette extension, sous forme de chaine de caractères:

~~~~~~~~
"extension": [
    {
      "url": "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
      "valueString": "Calcul IMC"
    }
  ]
~~~~~~~~
{: .language-json}
  

#### supportingInfo : autre information

L'extension supportingInfo permet d'ajouter une information supplémentaire sous forme d'une référence vers une ressource.

  
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
