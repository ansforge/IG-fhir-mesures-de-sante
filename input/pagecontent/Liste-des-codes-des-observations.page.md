  
     
|     Ressource                            |     Code de l'observation                                                                                                                     |     display                                         |
|------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------|
|     MesFrObservationBodyWeight          |    <http://loinc.org/29463-7>                                                                                                                   |     "Poids corporel"                                |
|     MesFrObservationBodyHeight          |     <http://loinc.org/8302-2>                                                                                                                   |     "Taille"                                        |
|     MesFrObservationHeartrate           |     <http://loinc.org/8867-4>                                                                                                                   |     "Fréquence cardiaque"                           |
|     MesFrObservationBp                  |     <http://loinc.org/85354-9>                                                                                                                  |     "Pression artérielle"                           |
|     MesFrObservationBodyTemperature     |     <http://loinc.org/8310-5>                                                                                                                   |     "Température corporelle"                        |
|     MesFrObservationBmi                 |     <http://loinc.org/39156-5>                                                                                                                  |     "Indice de masse corporelle (IMC)"              |
|     MesObservationWaistCircumference    |     <http://loinc.org/8280-0>                                                                                                                   |     "Tour de taille"                                |
|     MesObservationGlucose               |     <http://loinc.org/2339-0>  <br />   <https://ncit-stage.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C159776>    |     "Glucose sanguin"  <br />"Glucose interstitiel"    |
|     MesObservationStepsByDay            |     <http://loinc.org/41950-7>                                                                                                                  |     "Nombre de pas quotidien"                       |
|     MesObservationPainSeverity          |     <http://loinc.org/72514-3>                                                                                                                  |     "Niveau de douleur"                             |
|     MesObservationHeadCircumference     |     <http://loinc.org/8287-5>                                                                                                                                        |     " Périmètre   cranien "                         |  
{: .grid }
    


{% sql select  '[' || Title || '](' || Url || ')' as "Titre du profil",
        GROUP_CONCAT(json_extract(Resources.json,    REPLACE(fullkey,'id', 'fixedCode'))) as code,
        GROUP_CONCAT(json_extract(Resources.json,    REPLACE(fullkey,'id', 'fixedUri'))) as système
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

* Code du profil glycémie issus du JDV J153 https://mos.esante.gouv.fr/NOS/JDV_J154-TypeGlucose-ENS/FHIR/JDV-J154-TypeGlucose-ENS
* 