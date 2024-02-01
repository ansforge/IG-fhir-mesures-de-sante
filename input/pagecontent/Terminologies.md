
Les ressources Mesures de santé utilisent les terminologies suivantes :

|**Terminologie**|**Utilisation**|**Lien**|
| :-: | :-: | :- |
| CIM-10|Type de diabète|<https://smt.esante.gouv.fr/terminologie-cim-10/> |
| EMDN|Dispositif médical|<https://smt.esante.gouv.fr/terminologie-emdn/> |
| LOINC|Code de la mesure|<https://smt.esante.gouv.fr/terminologie-loinc-international/> |
| NCIT|Méthode utilisée pour la mesure|<https://smt.esante.gouv.fr/terminologie-ncit/> |
| SNOMED-CT|Localisation anatomique|<https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs> |
| TA\_ASIP|divers|<https://esante.gouv.fr/annexe-vocabulaire-et-jeux-de-valeurs> |
| UCUM|Unités de mesures|<https://smt.esante.gouv.fr/terminologie-UCUM/> |
| MDC | terminologie complète pour les modèles d'appareils | <https://www.hl7.org/fhir/R4/mdc.html/> |

### Description de la nomenclature MDC

Les codes de la nomenclature MDC (Médical Device Communication) sont issus de la norme de nomenclature ISO/IEEE 11073-10101. Elle contient les codes utilisés dans les dispositifs « Personal Health Devices » (PHD) et autres dispositifs médicaux pour l'identification des mesures physiologiques ainsi que pour les alarmes et de nombreuses conditions techniques telles que l'état d'étalonnage et l'état de la batterie.

Les codes MDC caractérisent le type de dispositifs utilisés. Dans ce volet les mesures sont issues des dispositifs PHD dont le type est définit uniquement par la valeur 65573.

Dans le profil PhdDevice, l'attribut System-Type-Spec-List contient une liste de spécialisations auxquelles le PHD est conforme. Ces éléments de cette liste indiquent non seulement la fonction du PHD, mais également ses spécificités et la version du dispositif. L’ensemble de ces informations est présent au niveau du profil PhdDevice.
