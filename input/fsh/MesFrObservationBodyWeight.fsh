
Profile: MesFrObservationBodyWeight
Parent: $FrObservationBodyWeight
Id: mesures-fr-observation-body-weight
Description: "Poids du patient"

* meta 1..1
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains MesFrObservationBodyWeight 1..1 MS
* meta.profile[MesFrObservationBodyWeight] = Canonical(mesures-fr-observation-body-weight) 

* extension contains mesures-reason-for-measurement named MesReasonForMeasurement 0..1


* value[x] ^slicing.rules = #open
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#kg
* valueQuantity.system 1..
* valueQuantity.code 1..

* valueQuantity.code ^definition = "Quantity in \"kg\""

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..
* method from $JDV-J145-MethodBodyWeight-MES (required)
* method ^binding.description = $JDV-J145-MethodBodyWeight-MES

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\n=>cette référence est obligatoire"

