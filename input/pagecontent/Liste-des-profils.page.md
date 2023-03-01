  
  
Ce paragraphe présente les profils FHIR des mesures de santé.  
  
  
|     Nom   de la constante                               |    Profils de référence             |   organisme de référence |  Profils   FHIR ENS (décrites dans ce document)    | 
|---------------------------------------------------------|-------------------------------------|-------------------------------------------------------|---|
|     Poids                                               |     FrObservationBodyWeight         | Interop'Santé |     MesFrObservationBodyWeight                       |   
|     Taille                                              |     FrObservationBodyHeight         | Interop'Santé |     MesFrObservationBodyHeight                       |   
|     Fréquence   cardiaque                               |     FrObservationHeartrate          | Interop'Santé |     MesFrObservationHeartrate                        |   
|     Pression   artérielle (systolique / diastolique)    |     FrObservationBp                 | Interop'Santé |     MesFrObservationBP                               |   
|     Température                                         |     FrObservationBodyTemperature    | Interop'Santé |     MesFrObservationBodyTemperature                  |   
|     IMC                                                 |     FrObservationBmi                | Interop'Santé |     MesFrObservationBMI                              |   
|     Tour de taille                                      |     vitalsigns                      | HL7           |     MesObservationWaistCircumference                 |   
|     Glycémie                                            |     vitalsigns                      | HL7           |     MesObservationGlucose                            |   
|     Nombre de pas   pendant la journée                  |     vitalsigns                      | HL7           |     MesObservationStepsByDay                         |   
|     Niveau de la   douleur                              |     vitalsigns                      | HL7           |     MesObservationPainSeverity                       |   
|     Périmètre   cranien                                 |     vitalsigns                      | HL7           |     MesObservationHeadCircumference                  |   
{: .grid }
&nbsp;  
  
Les profils FHIR pour les mesures de santé décrites dans ce document s'appuient sur la ressource standard Observation définie par HL7, en ajoutant quelques contraintes : Ces contraintes sont indiquées dans la description détaillé de chaque profil.
  
Pour chaque ressource détaillée dans la suite de ce document, le lien vers la spécification technique InteropSanté (sur Simplifier) est indiqué lorsqu'elle existe.
  