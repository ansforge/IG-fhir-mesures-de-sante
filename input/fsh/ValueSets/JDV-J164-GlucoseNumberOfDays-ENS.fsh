Instance: JDV-J164-GlucoseNumberOfDays-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-06-25T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J164-GlucoseNumberOfDays-ENS/FHIR/JDV-J164-GlucoseNumberOfDays-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.640"
* version = "20220128120000"
* name = "JDV_J164-GlucoseNumberOfDays-ENS"
* status = #active
* date = "2022-01-28T12:00:00+01:00"
* description = "Liste fermée des codes utilisables pour la mesure du taux de glucose interstitiel et de l'index de gestion de glycémie (IGG) avec le profil ENS_ObservationGlucose"
* compose.include.system = "https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP"
* compose.include.concept[0].code = #GEN-092
* compose.include.concept[=].display = "Autre"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"
* compose.include.concept[+].code = #GEN-275
* compose.include.concept[=].display = "7j"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"
* compose.include.concept[+].code = #GEN-276
* compose.include.concept[=].display = "14j"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"
* compose.include.concept[+].code = #GEN-277
* compose.include.concept[=].display = "30j"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"
* compose.include.concept[+].code = #GEN-278
* compose.include.concept[=].display = "90j"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"