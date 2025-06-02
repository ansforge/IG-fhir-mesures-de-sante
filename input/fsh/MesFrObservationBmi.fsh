Profile: MesFrObservationBmi
Parent: $FrObservationBmi
Id: mesures-fr-observation-bmi
Title: "Indice de Masse Corporelle"
Description: "Profil de la ressource Observation pour définir un Indice de Masse Corporelle (acronyme : IMC ou BMI)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"

* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)