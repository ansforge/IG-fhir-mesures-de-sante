Profile: MesFrObservationHeartrate
Parent: $FrObservationHeartrate
Id: mesures-fr-observation-heartrate
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"

* extension[levelOfExertion] ^short = "Cette extension permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"
* extension[levelOfExertion] ^definition = "Cette extension permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"

* extension[bodyPosition] ^short = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."
* extension[bodyPosition] ^definition = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."

* extension contains mesures-moment-of-measurement named MesMomentOfMeasurement 0..1

* extension[MesMomentOfMeasurement] ^short = "Moment de la mesure"
* extension[MesMomentOfMeasurement] ^definition = "Moment de la mesure\r\nTexte libre"

* value[x] only Quantity
* value[x] ^slicing.rules = #closed

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method from $JDV-J147-MethodHeartrate-MES (required)
* method ^short = "Méthode de la mesure"
* method ^definition = "Méthode de la mesure"
* method ^binding.description = $JDV-J147-MethodHeartrate-MES

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\r\n=>cette référence est obligatoire"

* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = $JDV-J148-ReferenceRangeAppliesTo-CISIS
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..

* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)