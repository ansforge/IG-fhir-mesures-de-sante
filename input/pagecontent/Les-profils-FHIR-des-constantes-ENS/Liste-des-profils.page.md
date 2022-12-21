## {{page-title}}

&nbsp;

Ce paragraphe présente les profils FHIR des mesures de santé.


|     Nom   de la constante                               |     Profils FHIR InteropSanté       |     Profils   FHIR ENS (décrites dans ce document)    |   |
|---------------------------------------------------------|-------------------------------------|-------------------------------------------------------|---|
|     Poids                                               |     FrObservationBodyWeight         |     ENS_FrObservationBodyWeight                       |   |
|     Taille                                              |     FrObservationBodyHeight         |     ENS_FrObservationBodyHeight                       |   |
|     Fréquence   cardiaque                               |     FrObservationHeartrate          |     ENS_FrObservationHeartrate                        |   |
|     Pression   artérielle (systolique / diastolique)    |     FrObservationBp                 |     ENS_FrObservationBP                               |   |
|     Température                                         |     FrObservationBodyTemperature    |     ENS_FrObservationBodyTemperature                  |   |
|     IMC                                                 |     FrObservationBmi                |     ENS_FrObservationBMI                              |   |
|     Tour de taille                                      |     vitalsigns                      |     ENS_ObservationWaistCircumference                 |   |
|     Glycémie                                            |     vitalsigns                      |     ENS_ObservationGlucose                            |   |
|     Nombre de pas   pendant la journée                  |     vitalsigns                      |     ENS_ObservationStepsByDay                         |   |
|     Niveau de la   douleur                              |     vitalsigns                      |     ENS_ObservationPainSeverity                       |   |
|     Périmètre   cranien                                 |     vitalsigns                      |     ENS_ObservationHeadCircumference                  |   |

&nbsp;

Les profils FHIR pour les mesures de santé décrites dans ce document s'appuient sur la ressource standard Observation définie par HL7, en ajoutant quelques contraintes : Ces contraintes sont indiquées dans la description détaillé de chaque profil.

Pour chaque ressource détaillée dans la suite de ce document, le lien vers la spécification technique InteropSanté (sur Simplifier) est indiqué lorsqu'elle existe.
