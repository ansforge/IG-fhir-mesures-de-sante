Profile: MesFrObservationOxygenSat
Parent: http://interopsante.org/fhir/StructureDefinition/FrObservationOxygenSaturation
Id: mesures-fr-observation-oxygen-sat

* extension contains mesures-moment-of-measurement named MesMomentOfMeasurement 0..1
* extension[MesMomentOfMeasurement] ^short = "Moment de la mesure"

* value[x] ^slicing.rules = #closed

* method MS

* category[VSCat].coding.display = "vital-signs" 

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"
