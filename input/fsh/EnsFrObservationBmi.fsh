Alias: $FrObservationBmi = http://interopsante.org/fhir/StructureDefinition/FrObservationBmi
Alias: $PhdDevice = http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice
Alias: $JDV-J148-ReferenceRangeAppliesTo-CISIS = https://mos.esante.gouv.fr/NOS/JDV_J148-ReferenceRangeAppliesTo-CISIS/FHIR/JDV-J148-ReferenceRangeAppliesTo-CISIS

Profile: EnsFrObservationBmi
Parent: $FrObservationBmi
Id: EnsFrObservationBmi
* ^meta.lastUpdated = "2022-08-02T09:55:21.7461587+00:00"
* ^status = #draft
* ^date = "2022-08-02"
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource."
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource.\r\nL’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..1
* meta.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ENS_FrObservationBmi" (exactly)
* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..
* bodySite ^short = "Non utilisé"
* bodySite ^definition = "Non utilisé"
* method ^short = "Non utilisé"
* method ^definition = "Non utilisé"
* device only Reference($PhdDevice)
* device ^short = "Dispositif utilisé pour l'observation"
* device ^definition = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice) \r\n=>cette référence est obligatoire"
* referenceRange.appliesTo from $JDV-J148-ReferenceRangeAppliesTo-CISIS (required)
* referenceRange.appliesTo ^binding.description = "JDV_J148-ReferenceRangeAppliesTo-CISIS"
* referenceRange.appliesTo.coding.system 1..
* referenceRange.appliesTo.coding.code 1..
* hasMember ^short = "Non utilisé"
* hasMember ^definition = "Non utilisé"
* derivedFrom ^short = "Non utilisé"
* derivedFrom ^definition = "Non utilisé"