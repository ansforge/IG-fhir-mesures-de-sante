Profile: ENS_FrObservationBodyTemperature
Parent: http://interopsante.org/fhir/StructureDefinition/FrObservationBodyTemperature
Id: ens-observation-bodytemperature
* ^meta.lastUpdated = "2022-08-02T10:10:06.0348919+00:00"
* ^status = #draft
* ^date = "2022-08-02"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource."
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource.\r\nL’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..1
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_FrObservationBodyTemperature" (exactly)
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension[levelOfExertion] ^sliceName = "levelOfExertion"
* extension[levelOfExertion] ^short = "Permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"
* extension[levelOfExertion] ^definition = "Permet de définir le niveau d'effort (au repos, à l'effort, après l'effort) lors de la mesure de la fréquence respiratoire"
* extension[levelOfExertion] ^min = 0
* extension contains ENS_ReasonForMeasurement named ENS_ReasonForMeasurement 0..1
* extension[ENS_ReasonForMeasurement] ^short = "Motif de la mesure"
* extension[ENS_ReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre (ex. infection, insolation, vaccination…)"
* valueQuantity.code = #Cel (exactly)
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..
* bodySite from $JDV-J151-BodySiteBodyTemperature-ENS (required)
* bodySite.coding.system 1..
* bodySite.coding.code 1..
* method from $JDV-J152-MethodBodyTemperature-ENS (required)
* method ^binding.description = "JDV_J152-MethodBodyTemperature-ENS"
* method.coding.system 1..
* method.coding.code 1..
* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice)\r\n=>cette référence est obligatoire\r\nhttp://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"
* referenceRange.appliesTo ^short = "Non utilisé"
* referenceRange.appliesTo ^definition = "Non utilisé"
* hasMember ^short = "Non utilisé"
* hasMember ^definition = "Non utilisé"
* derivedFrom ^short = "Non utilisé"
* derivedFrom ^definition = "Non utilisé"