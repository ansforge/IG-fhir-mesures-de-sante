


Le projet ***Mon espace santé*** propose la mise en place des fonctions d'alimentation et de consultation des mesures de santé d’un usager : 

    •	Fréquence cardiaque
    •	Pression artérielle (systolique / diastolique)
    •	Nombre de pas
    •	Niveau de douleur
    •	IMC
    •	Poids
    •	Taille
    •	Température
    •	Glycémie
    •	Tour de taille
    •	Périmètre cranien


Cette liste pourra être complétée par d’autres mesures jugées pertinentes (Ex. Saturation pulsée en oxygène (SpO2)).  

Ce guide s’adresse aux éditeurs de logiciels qui souhaitent mettre en œuvre ces fonctions d'alimentation et de consultation des mesures de santé d'un usager.  

Les spécifications techniques de ce guide s’appuient:
* sur le standard HL7 FHIR et plus particulièrement sur un sous-ensemble des ressources définies par ce standard ainsi que sur la notion d’extension et de profilage des ressources.  
  
* sur les profils français de la ressource Observation (Profls Interop'Santé ou ANS)
  
* sur le profil PHD de la ressource Device défini par le profil IHE « Personal Health Device Observation Upload (POU) » pour représenter le dispositif ayant effectué la mesure.  
  
Pour les opérations sur les ressources, l’API REST définie par le standard HL7 FHIR est mise en œuvre notamment la logique de la transaction PCH-01 du profil IHE « Personal Health Device Observation Upload (POU) » pour l’alimentation.  
   
Le lecteur doit être familier de ces concepts pour les mettre en œuvre. 
  
   