
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

Les codes MDC caractérisent le type de dispositifs utilisés. Dans ce volet les mesures sont issues des dispositifs PHD dont le type est définit uniquement par la valeur 65573.

Dans le profil PhdDevice, l'attribut System-Type-Spec-List contient une liste de spécialisations auxquelles le PHD est conforme. Ces éléments de cette liste indiquent non seulement la fonction du PHD, mais également ses spécificités et la version du dispositif. L’ensemble de ces informations est présent au niveau du profil PhdDevice.

Les codes de la nomenclature MDC (Médical Device Communication) sont issus de la norme de nomenclature ISO/IEEE 11073-10101. Elle contient également les codes utilisés dans les dispositifs « Personal Health Devices » (PHD) et autres dispositifs médicaux pour l'identification des mesures physiologiques ainsi que pour les alarmes et de nombreuses conditions techniques telles que l'état d'étalonnage et l'état de la batterie.

### Liste des codes des observations

{% sql select  '[' || Title || '](' || Url || ')' as "Titre du profil",
        coalesce(GROUP_CONCAT(json_extract(Resources.json,    REPLACE(fullkey,'id', 'fixedCode'))),  'Non défini') as code,
        coalesce(GROUP_CONCAT(json_extract(Resources.json,    REPLACE(fullkey,'id', 'fixedUri'))),  'Non défini') as système
from  Resources,  json_tree(Resources.json,"$.snapshot.element") as jtree
where Resources.type="StructureDefinition"
and json_extract(Resources.json,'$.type') = 'Observation'
and (jtree.key='id'   )
and (
        json_extract(Resources.json, REPLACE(fullkey,'id', 'id')) like 'Observation.code.coding%.code'
        or
        json_extract(Resources.json, REPLACE(fullkey,'id', 'id')) like 'Observation.code.coding%.system'
    )
GROUP BY `Titre du profil` %}

Le profil glycémie peut supporter plusieurs codes issus du [JDV J153](https://mos.esante.gouv.fr/NOS/JDV_J154-TypeGlucose-ENS/FHIR/JDV-J154-TypeGlucose-ENS)

### Les jeux de valeurs

Les ressources Mesures de santé utilisent les jeux de valeurs suivants

|     Nom du JDV                                |     OID   du JDV               |     URL                                                                                                                  |     Profils utilisant ce JDV                                                                               |
|-----------------------------------------------|--------------------------------|--------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|     JDV_J145-MethodBodyWeight-ENS             |     1.2.250.1.213.1.1.5.600    |     <https://mos.esante.gouv.fr/NOS/JDV_J145-MethodBodyWeight-ENS/FHIR/JDV-J145-MethodBodyWeight-ENS>                      |     MesFrObservationBodyWeight                                                                            |
|     JDV_J146-MethodBodyHeight-ENS             |     1.2.250.1.213.1.1.5.601    |     <https://mos.esante.gouv.fr/NOS/JDV_J146-MethodBodyHeight-ENS/FHIR/JDV-J146-MethodBodyHeight-ENS>                      |     MesFrObservationBodyHeight                                                                            |
|     JDV_J147-MethodHeartrate-ENS              |     1.2.250.1.213.1.1.5.602    |     <https://mos.esante.gouv.fr/NOS/JDV_J147-MethodHeartrate-ENS/FHIR/JDV-J147-MethodHeartrate-ENS>                        |     MesFrObservationHeartrate                                                                             |
|     JDV_J149-BodySiteBP-ENS                   |     1.2.250.1.213.1.1.5.604    |     <https://mos.esante.gouv.fr/NOS/JDV_J149-BodySiteBP-ENS/FHIR/JDV-J149-BodySiteBP-ENS>                                  |     MesFrObservationBP                                                                                    |
|     JDV_J150-MethodBP-ENS                     |     1.2.250.1.213.1.1.5.605    |     <https://mos.esante.gouv.fr/NOS/JDV_J150-MethodBP-ENS/FHIR/JDV-J150-MethodBP-ENS>                                      |     MesFrObservationBP                                                                                    |
|     JDV_J151-BodySiteBodyTemperature-ENS      |     1.2.250.1.213.1.1.5.606    |     <https://mos.esante.gouv.fr/NOS/JDV_J151-BodySiteBodyTemperature-ENS/FHIR/JDV-J151-BodySiteBodyTemperature-ENS>        |     MesFrObservationBodyTemperature                                                                       |
|     JDV_J152-MethodBodyTemperature-ENS        |     1.2.250.1.213.1.1.5.607    |     <https://mos.esante.gouv.fr/NOS/JDV_J152-MethodBodyTemperature-ENS/FHIR/JDV-J152-MethodBodyTemperature-ENS>            |     MesFrObservationBodyTemperature                                                                       |
|     JDV-J153-TypeDiabete-ENS                  |     1.2.250.1.213.1.1.5.608    |     <https://mos.esante.gouv.fr/NOS/JDV_J153-TypeDiabete-ENS/FHIR/JDV-J153-TypeDiabete-ENS>                                |     MesObservationGlucose     extension:MesDiabetisType                                                  |
|     JDV_J154-TypeGlucose-ENS                  |     1.2.250.1.213.1.1.5.609    |     <https://mos.esante.gouv.fr/NOS/JDV_J154-TypeGlucose-ENS/FHIR/JDV-J154-TypeGlucose-ENS>                                |     MesObservationGlucose                                                                                 |
|     JDV_J155-MethodGlucoseSanguin-ENS         |     1.2.250.1.213.1.1.5.610    |     <https://mos.esante.gouv.fr/NOS/JDV_J155-MethodGlucoseSanguin-ENS/FHIR/JDV-J155-MethodGlucoseSanguin-ENS>              |     MesObservationGlucose                                                                                 |
|     JDV_J156-MethodGlucoseInterstitiel-ENS    |     1.2.250.1.213.1.1.5.611    |     <https://mos.esante.gouv.fr/NOS/JDV_J156-MethodGlucoseInterstitiel-ENS/FHIR/JDV-J156-MethodGlucoseInterstitiel-ENS>    |     MesObservationGlucose                                                                                 |
|     JDV_J157-MomentGlucose-ENS                |     1.2.250.1.213.1.1.5.612    |     <https://mos.esante.gouv.fr/NOS/JDV_J157-MomentGlucose-ENS/FHIR/JDV-J157-MomentGlucose-ENS>                            |     MesObservationGlucose                                                                                 |
|     JDV_J158-MethodStepsByDay-ENS>             |     1.2.250.1.213.1.1.5.613    |     <https://mos.esante.gouv.fr/NOS/JDV_J158-MethodStepsByDay-ENS/FHIR/JDV-J158-MethodStepsByDay-ENS>                      |     MesObservationStepsByDay                                                                              |
|     JDV_J159-MethodPainSeverity-ENS           |     1.2.250.1.213.1.1.5.614    |     <https://mos.esante.gouv.fr/NOS/JDV_J159-MethodPainSeverity-ENS/FHIR/JDV-J159-MethodPainSeverity-ENS>                  |     MesObservationPainSeverity                                                                            |
|     JDV_J163-GlucoseUnits-ENS>                 |     1.2.250.1.213.1.1.5.639    |     <https://mos.esante.gouv.fr/NOS/JDV_J163-GlucoseUnits-ENS/FHIR/JDV-J163-GlucoseUnits-ENS>                              |     MesObservationGlucose                                                                                 |
|     JDV_J164-GlucoseNumberOfDays-ENS>          |     1.2.250.1.213.1.1.5.640    |     <https://mos.esante.gouv.fr/NOS/JDV_J164-GlucoseNumberOfDays-ENS/FHIR/JDV-J164-GlucoseNumberOfDays-ENS>                |     MesObservationGlucose                                                                                 |
{: .grid }
