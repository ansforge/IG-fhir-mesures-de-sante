Instance: JDV-J153-TypeDiabete-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J153-TypeDiabete-ENS/FHIR/JDV-J153-TypeDiabete-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.608"
* version = "20210430120000"
* name = "JDV_J153-TypeDiabete-ENS"
* status = #active
* date = "2021-04-30T12:00:00+01:00"
* description = "JDV pour caractériser le type de diabète dans l'extension DiabetisType"
* compose.include[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R311-CIM10Atih/FHIR/TRE-R311-CIM10Atih"
* compose.include[=].concept[0].code = #E11.x0
* compose.include[=].concept[=].display = "Diabète type 2 insulinotraité"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:1.2.250.1.213.2.67"
* compose.include[=].concept[+].code = #E11.x8
* compose.include[=].concept[=].display = "Diabète type 2 non insulinotraité"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:1.2.250.1.213.2.67"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_R310-CIM10/FHIR/TRE-R310-CIM10"
* compose.include[=].concept[0].code = #E10
* compose.include[=].concept[=].display = "Diabète type 1"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.3"
* compose.include[=].concept[+].code = #O24.4
* compose.include[=].concept[=].display = "Diabète de grossesse"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.3"
* compose.include[=].concept[+].code = #E14
* compose.include[=].concept[=].display = "Autres types de diabète sucré"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.3"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP"
* compose.include[=].concept.code = #MED-874
* compose.include[=].concept.display = "Non diabétique"
* compose.include[=].concept.designation.use.code = #OID
* compose.include[=].concept.designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"