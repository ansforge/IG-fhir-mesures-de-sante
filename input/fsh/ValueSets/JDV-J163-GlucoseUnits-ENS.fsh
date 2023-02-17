Instance: JDV-J163-GlucoseUnits-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-06-25T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J163-GlucoseUnits-ENS/FHIR/JDV-J163-GlucoseUnits-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.639"
* version = "20220128120000"
* name = "JDV_J163-GlucoseUnits-ENS"
* status = #active
* date = "2022-01-28T12:00:00+01:00"
* description = "Liste fermée des unités utilisables pour la mesure du glucose avec le profil ENS_ObservationGlucose"
* compose.include.system = "https://mos.esante.gouv.fr/NOS/TRE_R247-UcumUniteMesure/FHIR/TRE-R247-UcumUniteMesure"
* compose.include.concept[0].code = #mg/dL
* compose.include.concept[=].display = "milligramme par décilitre"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.8"
* compose.include.concept[+].code = #%
* compose.include.concept[=].display = "pourcentage"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.8"