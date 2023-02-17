Instance: JDV-J149-BodySiteBP-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J149-BodySiteBP-ENS/FHIR/JDV-J149-BodySiteBP-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.604"
* version = "20210430120000"
* name = "JDV_J149-BodySiteBP-ENS"
* status = #active
* date = "2021-04-30T12:00:00+01:00"
* description = "JDV pour la localisation de la mesure de la pression artérielle"
* compose.include.system = "https://mos.esante.gouv.fr/NOS/TRE_R309-FMA/FHIR/TRE-R309-FMA"
* compose.include.concept[0].code = #24890
* compose.include.concept[=].display = "Bras"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.119"
* compose.include.concept[+].code = #24922
* compose.include.concept[=].display = "Poignet"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.119"