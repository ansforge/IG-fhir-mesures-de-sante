Instance: JDV-J152-MethodBodyTemperature-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J152-MethodBodyTemperature-ENS/FHIR/JDV-J152-MethodBodyTemperature-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.607"
* version = "20210528120000"
* name = "JDV_J152-MethodBodyTemperature-ENS"
* status = #active
* date = "2021-05-28T12:00:00+01:00"
* description = "JDV pour la méthode de la mesure de la température"
* compose.include.system = "https://mos.esante.gouv.fr/NOS/TRE_R306-CLADIMED/FHIR/TRE-R306-CLADIMED"
* compose.include.concept[0].code = #K50BC10
* compose.include.concept[=].display = "Electronique"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:1.2.250.1.213.2.65"
* compose.include.concept[+].code = #K50BC03
* compose.include.concept[=].display = "A infrarouges"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:1.2.250.1.213.2.65"