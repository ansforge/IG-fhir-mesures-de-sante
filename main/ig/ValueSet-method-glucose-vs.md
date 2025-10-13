# Méthode de mesures de glycémie sanguine ou interstitielle - Guide d'implémentation FHIR - Mesures de santé v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Méthode de mesures de glycémie sanguine ou interstitielle**

## ValueSet: Méthode de mesures de glycémie sanguine ou interstitielle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/ValueSet/method-glucose-vs | *Version*:3.1.0 |
| Active as of 2025-10-13 | *Computable Name*:MethodeGlucoseVS |

 
Méthode de mesures de glycémie sanguine ou interstitielle. 

 **References** 

* [Glycémie](StructureDefinition-mesures-observation-glucose.md)

### Logical Definition (CLD)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R312-LPP/FHIR/TRE-R312-LPP`](https://interop.esante.gouv.fr/ig/nos/1.3.0/CodeSystem-TRE-R312-LPP.html) version 📦1.3.0
* Inclut tous les codes définis dans [`https://mos.esante.gouv.fr/NOS/TRE_R307-NCIT/FHIR/TRE-R307-NCIT`](https://interop.esante.gouv.fr/ig/nos/1.3.0/CodeSystem-TRE-R307-NCIT.html) version 📦1.3.0

 

### Expansion

Ce jeu de valeur (ValueSet) contient 18 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "method-glucose-vs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/ValueSet/method-glucose-vs",
  "version" : "3.1.0",
  "name" : "MethodeGlucoseVS",
  "title" : "Méthode de mesures de glycémie sanguine ou interstitielle",
  "status" : "active",
  "date" : "2025-10-13T07:29:09+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Méthode de mesures de glycémie sanguine ou interstitielle.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R312-LPP/FHIR/TRE-R312-LPP"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R307-NCIT/FHIR/TRE-R307-NCIT"
      }
    ]
  }
}

```
