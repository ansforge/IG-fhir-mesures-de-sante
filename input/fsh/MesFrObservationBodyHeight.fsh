Profile: MesFrObservationBodyHeight
Parent: $FrObservationBodyHeight
Id: mesures-fr-observation-bodyheight
Title: "Taille"
Description: "Profil de la ressource Observation pour définir une taille"

* insert ObservationResultsMesures

// Extension bodyposition définie au niveau du profil d'interopsanté
* extension[bodyposition] ^short = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."
* extension[bodyposition] ^definition = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."

* value[x] ^slicing.rules = #open
* value[x] only Quantity
* valueQuantity = $UCUM#cm
* valueQuantity.system 1..
* valueQuantity.code 1..

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method MS
* method from $JDV-J146-MethodBodyHeight-MES (extensible)

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"


* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)