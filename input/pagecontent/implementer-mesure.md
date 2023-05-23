### Généralités

Cette page présente l'implémentation des éléments communs à l'ensemble des mesures du volet.
<br/><br/>
  
### Le déclaration de conformité (0..*)
  
  
Il est possible de déclarer la conformité au profil de la mesure dans le but de permettre au système récepteur d'identifier le type de mesure qu'il manipule.
Cette déclaration de conformité se fait alors dans l'élément "meta.profile", en rensignant l'URL canonique de la ressource de conformité:
  
Exemple pour MesFrObservationBodyHeight:
  
~~~~~~~~
"meta": {
    "profile": [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bodyheight"
    ]
  }
~~~~~~~~
{: .language-json}  
  
  <br/><br/>

#### Le code LOINC de la mesure (1..1)
<br/><br/>
Le code loinc de la mesure est spécifié dans "code.coding.code".
  
La liste des codes LOINC correspondant à chaque profil de constante est disponible ici:
  
<./Liste-des-codes-des-observations.page.html>
  
  
Exemple d'implémentation du code LOINC pour la constante "Poids":
  
La valeur du code est fixée à "29463-7". 
   
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
<br/><br/>  
  
### Spécifier le sujet de l'observation (1..1)
<br/><br/>
Il est obligatoire de spécifier le sujet de la mesure à travers l'élément "subject", en incluant une référence vers un ressource patient.
   
~~~~~~~
"subject": {
    "reference": "Patient/ExamplefrPatient001",
    "display": "Pierre Durand"
  }
~~~~~~~
{: .language-json}  
<br/><br/>  
  
### Spécifier le statut de l'observation (1..1)
<br/><br/>
Le statut de l'observation doit obligatoirement être renseigné avec l'une des valeurs du JDV suivant:
<http://hl7.org/fhir/R4/valueset-observation-status.html>
  
  
~~~~
"status": "final",
~~~~ 
{: .language-json}  
<br/><br/>  
  
### Renseigner la valeur de la mesure
<br/><br/>
Dans l'ensemble des constantes, à l'exception de la pression arterielle, la valeur mesurée est renseignée dans l'élément "valueQuantity".
  

#### Cas général
<br/><br/>

##### Exemple d'implémentation d'une mesure de taille de 184 cm.
L'unité "cm" est imposée dans le profil "MesFrObservationBodyHeight".
  
~~~~~~~~
 "valueQuantity": {
    "system": "http://unitsofmeasure.org",
    "code": "cm",
    "value": 184,
    "unit": "cm"
  }
~~~~~~~~
{: .language-json}  
<br/><br/>

##### Exemple d'implémentation d'une mesure de glycémie:

   
~~~~~~~~
 "valueQuantity": {
    "system": "http://unitsofmeasure.org",
    "value": 92,
    "code": "mg/dL",
    "unit": "milligramme par décilitre"
  },
~~~~~~~~
{: .language-json}
<br/><br/>
  
    
#### Cas de la pression artérielle
  
Dans le profil "MesFrObservationBp" (pression artérielle), les différentes valeurs (diastolique et systolique) sont renseignées dans l'élément "Component".


~~~~~~
"component": [
    {
      "code": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "8480-6",
            "display": "Tension artérielle systolique"
          }
        ]
      },
      "valueQuantity": {
        "value": 107,
        "code": "mm[Hg]",
        "system": "http://unitsofmeasure.org",
        "unit": "mm[Hg]"
      },
      "interpretation": [
        {
          "coding": [
            {
              "code": "N",
              "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "display": "Normal"
            }
          ],
          "text": "Normal"
        }
      ]
    },
    {
      "code": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "8462-4",
            "display": "Tension artérielle diastolique"
          }
        ]
      },
      "valueQuantity": {
        "value": 60,
        "code": "mm[Hg]",
        "system": "http://unitsofmeasure.org",
        "unit": "mm[Hg]"
      },
~~~~~~
{: .language-json}  
<br/><br/>

