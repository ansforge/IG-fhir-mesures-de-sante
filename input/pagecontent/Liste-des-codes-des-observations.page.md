
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