
Profile: MesFrObservationBodyTemperature
Parent: $FrObservationBodyTemperature
Id: mesures-fr-observation-body-temperature

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

// Extension définie au niveau du profil d'interopsanté
* extension[levelOfExertion] ^short = "Permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"

* extension contains mesures-reason-for-measurement named MesReasonForMeasurement 0..1
* value[x] ^slicing.rules = #open
* value[x] only Quantity
* valueQuantity = $UCUM#Cel
* valueQuantity.system 1..
* valueQuantity.code 1..

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* bodySite from $JDV-J151-BodySiteBodyTemperature-MES (required)
* bodySite.coding.system 1..
* bodySite.coding.code 1..

* method from $JDV-J152-MethodBodyTemperature-MES (required)
* method ^binding.description = $JDV-J152-MethodBodyTemperature-MES
* method.coding.system 1..
* method.coding.code 1..

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\r\n=>cette référence est obligatoire\r\nhttp://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"


* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)