Profile: ENS_FrObservationBodyHeight
Parent: http://interopsante.org/fhir/StructureDefinition/FrObservationBodyHeight
Id: ens-observation-bodyheight
* ^meta.lastUpdated = "2022-08-02T10:03:35.322255+00:00"
* ^status = #draft
* ^date = "2022-08-02"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource."
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource.\r\nL’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..1
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_FrObservationBodyHeight" (exactly)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0

* extension[bodyposition] ^sliceName = "bodyposition"
* extension[bodyposition] ^short = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."
* extension[bodyposition] ^definition = "La position du corps au moment de l'observation, par exemple debout, assis. A n'utiliser que lorsque la position du corps n'est pas pré-coordonnée dans le code d'observation."
* extension[bodyposition] ^min = 0

* value[x] only Quantity
* valueQuantity.code = #cm (exactly)

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* bodySite ^short = "Non utilisé"

* method from $JDV-J146-MethodBodyHeight-ENS (required)
* method ^binding.description = "JDV_J146-MethodBodyHeight-ENS"

* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) =>cette référence est obligatoire"

* referenceRange.appliesTo ^short = "Non utilisé"
* referenceRange.appliesTo ^definition = "Non utilisé"

* hasMember ^short = "Non utilisé"
* hasMember ^definition = "Non utilisé"

* derivedFrom ^short = "Non utilisé"
* derivedFrom ^definition = "Non utilisé"