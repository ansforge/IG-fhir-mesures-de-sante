# Le flux d'alimentation des signes vitaux - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* **Le flux d'alimentation des signes vitaux**

## Le flux d'alimentation des signes vitaux

Le flux d’alimentation unitaire d’une constante reprend la logique de la transaction “PCH 01” (Communicate FHIR PHD data) du profil “IHE POU“ (Personal Health Device Observation Upload).

Ce profil et cette transaction sont détaillés dans la documentation IHE. Ce profil se base sur l’interaction “transaction” de l’API REST de FHIR. Il s’agit d’une requête http POST dont le corps est une ressource “Bundle” de type “transaction”.

### Contenu de la requête d’alimentation

Le corps de cette requête contient un “Bundle” conforme au profil [MesBundleFluxAlimentation](StructureDefinition-mesures-bundle-flux-alimentation.md) qui peut empaquetter jusqu’à deux ressources:

* Une ressource “Observation” suivant un profil MES défini dans ce guide.
* Une ressource “Device” (optionnelle) suivant le profil “PhdDevice” ([https://build.fhir.org/ig/HL7/phd/PhdDeviceProfile.html](https://build.fhir.org/ig/HL7/phd/PhdDeviceProfile.html)), représentant le dispositif ayant effectué la mesure. Elle est référencée depuis l’attribut “device” de la ressource “Observation” : “Observation.device”

Ces 2 ressources sont incorporées dans la liste (“array”) de Bundle.entry. Chaque élément de cette liste est un objet contenant 2 sous-objets : une ressource et la requête HTTP associée. Dans le cas classique de l’écriture d’une observation et du “device” utilisé pour la réaliser, cette liste contient donc 4 objets.

Ci-dessous, la structure d’un “bundle” au format JSON contenant des ressources “Observation” et “Device” dans l’attribut Bundle.entry:

```
{  
    "resourceType": "Bundle",  
    "type": "transaction",  
    "entry": [  
        {  
            "fullUrl": "11234563-069d-112d-829b-f01234567892",  
            "resource": {  
                  "resourceType": "Observation",  
                  "meta": {  
                       "source": "<OID de la solution éditeur>",  
                       "profile": [  
                      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bp"  
                      ]  
                  },  
                {...}  
                "device": {  
                    "reference": "Device/3bc44de3-069d-442d-829b-f3ef68cae372"  
                }  
            },  
            "request": {  
                "method": "POST",  
                "url": "Observation"  
            }  
        },  
        {  
            "resource": {   
                "resourceType": "Device",  
                "meta": {  
                    "profile": [  
                        "http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"  
                    ]  
                },  
                "id": "3bc44de3-069d-442d-829b-f3ef68cae372",  
                {...}  
            },  
            "request": {  
                "method": "POST",  
                "url": "Device",  
                "ifNoneExist": "identifier=urn:oid:<OID du PHD|Identifier PHD>"  
            }  
        }  
    ]  
}  

```

Le champs “type” du “bundle” doit être fixé à “transaction”, l’attribut “request” doit être présent avec la method POST et l’url avec le resourceType.

A noter que la validation FHIR requiert l’incorporation d’un champ “fullUrl” pour l’observation.

### L’attribut « ifNoneExist »

L’attribut ifNoneExist contenant l’oid du device (« sous oid » de la solution éditeur) et son identifier est obligatoire pour la ressource Device. Cet attribut permet d’exécuter la transaction « conditional create » pour les Devices :

* Si le device existe déjà dans l’entrepôt de MES identifié par le couple oid/identifier, il n’est pas recréé (code 200 Success retourné).
* S’il n’existe pas, il sera créé (code 201 Created retourné) avec comme identifiant unique le couple oid + identifier.

A noter que la validation FHIR requiert l’incorporation d’un champ “fullUrl” pour l’observation.

### Référence de la ressource Observation vers la ressource Device (Observation.device)

La ressource Device peut être référencée dans l’attribut Observation.device.reference.
 Ainsi, il doit contenir le préfixe « Device/ » et le l’identifiant du Device doit contenir uniquement l’uuid.

### L’attribut « Observation.meta.source »

Le système source de la donnée est indiqué dans le champ meta de l’observation.
 Le champ source contient le code du système (qui correspond à l’issuer lors de l’enregistrement de la donnée).

Ce champ est facultatif :

* S’il est envoyé, il est validé,
* S’il n’est pas fourni, il est positionné à partir de l’oid stocké côté référentiel MES

### L’attribut « meta.profile »

L’Observation et le Device doivent renseigner l’url canonique du profil dans le champs meta.profile.
 Cette information est nécessaire, elle permet de valider la conformité des ressources Device avec le profil PhdDevice ainsi que celle des ressources Observation avec l’un des 11 profils des mesures de santé.

### Exemple d’appel

Un [exemple complet](Bundle-bundle-example.md) d’instance de Bundle a été constitué au sein du guide. Celui-ci doit être envoyé dans le corps de la requête d’alimentation. Ce Bundle contient 2 ressources dans l’attribut “entry” :

* Une ressource Observation MesFrObservationBodyWeight
* Une ressource Device responsable de la mesure avec :

L’oid de ****Device.identifier.system**** est celui de la solution éditeur gérant le device. On le retrouve (ou un sous oid) dans l’attribut ifNoneExist afin d’identifier le device de manière unique au sein de l’entrepôt FHIR de MES.

### Réponse à la requête d’alimentation

En cas de succès, le code http 200 OK est retourné. Le corps de la réponse contient une ressource Bundle de type « transaction-response » avec la liste des réponses pour chaque ressource envoyée. Chacune de ces réponses contient :

* Un http Status code : 
* Le status « 201 Created » pour les ressources créées sur MES. Pour rappel, si le Device identifié via l’attribut ifNoneExist du bundle n’existe pas dans l’entrepôt FHIR, il est créé et le statut « 201 Created » est renvoyé pour la ressource Device.
* Le statut « 200 Success » est renvoyé si le Device est déjà existant
 
* Un attribut location contenant la localisation de la ressource

Voici un exemple de retour à la suite de la création d’une Observation et d’un nouveau Device :

```
{
    "resourceType": "Bundle",
    "type": "transaction-response",
    "entry": [
        {
            "response": {
                "status": "201 Created",
                "location": "Observation/urn:oid:<OID-MES>|29680733-6158-4e22-ab7e-eb6825dcdb13"
            }
        },
        {
            "response": {
                "status": "201 Created",
                "location": "Device/urn:oid:<OID-DEVICE>|FE-ED-AB-AA-DE-AD-77-C4"
            }
        }
    ]
}

```

Dans le cas d’une erreur rencontrée, un code erreur HTTP est retourné :

| | | | |
| :--- | :--- | :--- | :--- |
| 400 | Bad Request | HTTP code 400 : Bad request -> The ID_TOKEN value is not valid (invalid JWT) |   |
| 401 | Unauthorized |   | L’access_token est invalide |
| 403 | idPe requested do not match authorized idPe. |   | idPe dans la request ne correspond pas à l’idPe de l’id_token |
| 403 | Consent not given, access refused. |   | L’usager n’a pas donné son consente-ment pour l’opération d’écriture de-mandée. |
| 422 | Unprocessable Entity | No bundle provided. |   |
| 409 | Conflict | HTTP code 409 :OID conflict between the one from id_token and the one in the system -> OID different between id_token and ecosystem |   |

Le corps de la réponse contient une ressource Bundle de type « transaction-response ». 
 Cette ressource contient le détail des erreurs et avertissements résultants du traitement de la requête transmise par MES.
 Pour chacune des ressources à valider, il sera toujours retourné un code HTTP « 422 Unprocessable Entity » accompagné d’une ou plusieurs OperationOutcome de niveau « Error » dont voici la liste :

> ****Erreur de structure du bundle****

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 422 | Bundle not valid. | NOTSUPPORTED | Resource of type <> is not acceptable with method <>. | L’API ne prend en charge que les ressources Observation ou De-vice en POST. |   |
| 422 | Bundle not valid. | INVALID | Bundle must contains one conditional creation of a device (POST + ifNoneExist) |   |   |
| 422 | Bundle not valid. | INVALID | Device request must have a valid IfNoneEx-ist attribute : identifi-er=urn:oid: |  | L’identifier du device présent dans l’attribut « ifNoneExist » doit respecter la regex suivante : identifier=urn:oid:([0-9]+[.[0-9]+]+)|([a-zA-Z0-9]+[-[a-zA-Z0-9]+]+) |
| 422 | Bundle not valid. | INVALID | Bundle must contains one observation crea-tion (POST) |   |   |

> ****Erreur sur le lien entre l’observation et le device****

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| 422 | Observation and Device link not valid. | INVALID | Observa-tion.device.reference is mandatory. |   |
| 422 | Observation and Device link not valid. | INVALID | Observation and de-vice not linked by id (Observa-tion.device.reference <-> Device.id) |   |

> ****Erreur sur l’observation****

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| 422 | Observation resource not valid. | INVALID | Observation must provide meta.profile value. |   |
| 422 | Observation resource not valid. | VALUE | Solution oid contains in Observa-tion.meta.source don’t belong to root editor oid (). | Si cet attribut est fourni, il est validé. S’il n’est pas fourni, MES le renseigne avec les données issues du référentiel. |
| 422 | Observation resource not valid. | VALUE | Observation value quantity not provided. | Dans MES, des observations sans valeur sont refusées |
| 422 | Observation resource not valid. | NOTSUPPORTED | Bmi observation can-not be created. | Les observations IMC sont calculées à la volée et ne peuvent donc pas être créées. |
| 422 | Observation resource not valid. | INVALID | Observation.subject.identifier is mandatory. | Ce champ doit contenir le couple oid/IDPE |
| 422 | Observation resource not valid. | INCOMPLETE | Observation.extension.moment is mandatory. | Se référer au chapitre sur le Cas particulier de la glycémie |
| 422 | Observation resource not valid. | INVALID | Observation.extension.numberOfDays cannot be added. |   |
| 422 | Observation resource not valid. | INVALID | Observation.extension.moment cannot be added. |   |
| 422 | Observation resource not valid. | INCOMPLETE | Observation.extension.numberOfDays is mandatory. |   |

> ****Erreur sur le device****

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| 422 | Device resource not valid. | INVALID | Device must provide meta.profile value. |   |

Cette ressource OperationOutcome ([https://www.hl7.org/fhir/operationoutcome.html](https://www.hl7.org/fhir/operationoutcome.html)) contient le détail des erreurs et avertissements résultants du traitement de la requête transmise par MES.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| 0 | OperationOutcome | 0..1 |   |   |
| 1 | Issue | 1..* | BackboneEle-ment |   |
| 2 | Severity | 1..1 | Code | Criticité de l’erreur ([http://hl7.org/fhir/ValueSet/issue-severity](http://hl7.org/fhir/ValueSet/issue-severity)) |
| 2 | Code | 1..1 | Code Type d’erreur ([http://www.hl7.org/fhir/valueset-issue-type.html](http://www.hl7.org/fhir/valueset-issue-type.html)) |   |
| 2 | Diagnostics | 0..1 | String | Informations complémentaires sur l’erreur |

Seul les niveaux « fatal » et « error » provoquent un retour avec un code http d’erreur.

