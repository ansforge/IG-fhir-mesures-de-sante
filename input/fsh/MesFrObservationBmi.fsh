
Profile: MesFrObservationBmi
Parent: $FrObservationBmi
Id: mesures-fr-observation-bmi
Title: "Indice de Masse Corporelle (IMC ou BMI)"
Description: "Profil de la ressource Observation pour définir un Indice de Masse Corporelle (IMC ou BMI)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) \r\n=>cette référence est obligatoire"

* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = "JDV_J148-ReferenceRangeAppliesTo-CISIS"
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..

* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)