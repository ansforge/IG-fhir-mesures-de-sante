

Profile: MesObservationHeadCircumference
Parent: $vitalsigns
Id: mes-observation-head-circumference
* meta 1..
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource."
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource.\r\nL’uri est sous la forme d’un oid : « urn:oid:xx.xx.xx »"
* meta.profile 1..*
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile contains MesObservationHeadCircumference 1..1 MS
* meta.profile[MesObservationHeadCircumference] = Canonical(mes-observation-head-circumference) 

* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mes-reason-for-measurement named MesReasonForMeasurement 0..1
* extension[supportingInfo] ^isModifier = false
* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"
* extension[MesReasonForMeasurement] ^definition = "Motif de la mesure"
* extension[MesReasonForMeasurement] ^isModifier = false

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains headCircumCode 1..1
* code.coding[headCircumCode].system 1..
* code.coding[headCircumCode].system = "http://loinc.org" 
* code.coding[headCircumCode].code 1..
* code = http://loinc.org#8287-5 

* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or $fr-patient or $fr-practitioner or PractitionerRole or $fr-organization)

* value[x] only Quantity
* value[x] ^slicing.discriminator[0].type = #type
* value[x] ^slicing.discriminator[=].path = "$this"
* value[x] ^slicing.rules = #open
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity = $UCUM#cm 
* valueQuantity.unit = "cm"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.code 1..