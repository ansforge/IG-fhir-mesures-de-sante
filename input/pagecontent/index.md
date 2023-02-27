


Le nouveau projet Mon espace santé prévoit la mise en place des fonctions d'alimentation et de consultation des mesures de santé d’un usager : 

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


Cette liste pourra être complétée par d’autres mesures jugées pertinentes (Ex. Saturation artérielle (SpO2)).  

Ce document s’adresse aux éditeurs de logiciels qui souhaitent mettre en œuvre ces fonctions d'alimentation et de consultation des mesures de santé d'un usager.  

Cette spécification technique s’appuie sur le standard HL7 FHIR et plus particulièrement sur un sous-ensemble des ressources définies par ce standard ainsi que sur la notion d’extension et de profilage des ressources. Elle est fondée sur les profils français de la ressource Observation lorsqu'ils existent et propose une contextualisation de la ressource pour la France dans le cas contraire. Elle se base sur le profil PHD de la ressource Device défini par le profil IHE « Personal Health Device Observation Upload (POU) » pour réprésenter le dispositif ayant effectué la mesure. Pour les opérations sur les ressources, l’API REST définie par le standard HL7 FHIR est mise en œuvre notamment la logique de la transaction PCH-01 du profil IHE « Personal Health Device Observation Upload (POU) » pour l’alimentation.  L’hypothèse est faite que le lecteur est familier de ces concepts.  
&nbsp;  
&nbsp;
&nbsp;
&nbsp;
&nbsp;