    
### Généralités
   
La mesure du poids du patient est recueillie dans une observation "MesFrObservationBodyHeight".
   
### Les éléments clefs de l'implémentation
   
Les éléments clefs de l'implémentation de cette mesure de santé sont les suivants:
   
#### Le code LOINC de la mesure
   
Le code loinc de la mesure est spécifié dans code.coding.code.
Sa valeur est fixée à "8302-2". 
   
~~~~~~~~
"code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "8302-2"
      }
    ]
  }
~~~~~~~~
{: .language-json}
   
   
### La valeur de la mesure
   
La valeur mesurée est renseignée, en cm, dans l'élément "valueQuantity":
   
~~~~~~~~
 "valueQuantity": {
    "system": "http://unitsofmeasure.org",
    "code": "cm",
    "value": 184,
    "unit": "cm"
  }
~~~~~~~~
{: .language-json}
  
  
### Le déclaration de conformité
  

On peut déclarer la conformité au profil "MesFrObservationBodyHeight" dans le but de permettre au système récepteur d'identifier le type de mesure qu'il manipule.
Cette déclaration de conformité se fait dans l'élément "meta":
  
~~~~~~~~
"meta": {
    "profile": [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bodyheight"
    ]
  }
~~~~~~~~
{: .language-json}
   
   
### Spécifier le sujet de l'observation
  
Il est obligatoire de spécifier le sujet de la mesure à travers l'élément "subject":

~~~~~~~
"subject": {
    "reference": "Patient/ExamplefrPatient001",
    "display": "Pierre Durand"
  }
~~~~~~~
{: .language-json}
  
  
  
### Exemple complet
  
  
  
~~~~~~~~
{
  "resourceType": "Observation",
  "id": "ExampleMesFrObservationBodyHeight001",
  "meta": {
    "profile": [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bodyheight"
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
        "code": "8302-2"
      }
    ]
  },
  "valueQuantity": {
    "system": "http://unitsofmeasure.org",
    "code": "cm",
    "value": 185,
    "unit": "cm"
  },
  "status": "final",
  "subject": {
    "reference": "Patient/ExamplefrPatient001",
    "display": "Pierre Durand"
  },
  "effectiveDateTime": "1999-07-02"
}

~~~~~~~~
{: .language-json}
  
  
  
