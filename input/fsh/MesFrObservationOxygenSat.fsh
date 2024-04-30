Profile: MesFrObservationOxygenSat
Parent: $FrObservationOxygenSat
Id: mesures-fr-observation-oxygen-sat
Title: "Saturation en Oxygène"
Description: "Profil de la ressource Observation pour définir une Saturation en Oxygène (acronyme : SPO2)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension contains mesures-moment-of-measurement named MesMomentOfMeasurement 0..1


* value[x] ^slicing.rules = #closed

* method MS
* method from $JDV-J147-MethodHeartrate-MES (required)
* method.coding.system 1..
* method.coding.code 1..


* category[VSCat].coding.display = "vital-signs" 

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"

