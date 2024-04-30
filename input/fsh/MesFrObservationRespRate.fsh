Profile: MesFrObservationRespiratoryRate
Parent: $FrObservationRespRate
Id: mesures-fr-observation-resp-rate
Title: "Fréquence respiratoire"
Description: "Profil de la ressource Observation pour définir une fréquence respiratoire (acronyme : FR)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension contains mesures-moment-of-measurement named MesMomentOfMeasurement 0..1

* code 1..1

* value[x] ^slicing.rules = #closed

* category[VSCat].coding.display = "vital-signs" 

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"