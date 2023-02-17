Instance: JDV-J157-MomentGlucose-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J157-MomentGlucose-ENS/FHIR/JDV-J157-MomentGlucose-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.612"
* version = "20220429120000"
* name = "JDV_J157-MomentGlucose-ENS"
* status = #active
* date = "2022-04-29T12:00:00+01:00"
* description = "JDV pour caractériser le moment de la mesure de glucose"
* compose.include[0].system = "https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc"
* compose.include[=].concept[0].code = #16915-1
* compose.include[=].concept[=].display = "Glucose post prandial"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.1"
* compose.include[=].concept[+].code = #53049-3
* compose.include[=].concept[=].display = "Glucose à jeun"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.1"
* compose.include[=].concept[+].code = #88365-2
* compose.include[=].concept[=].display = "Avant repas"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.1"
* compose.include[=].concept[+].code = #16915-1
* compose.include[=].concept[=].display = "Glucose post prandial"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.1"
* compose.include[=].concept[+].code = #LA11865-5
* compose.include[=].concept[=].display = "Après exercice"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.1"
* compose.include[=].concept[+].code = #LA46-8
* compose.include[=].concept[=].display = "Autre"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.1"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_R313-CISP2/FHIR/TRE-R313-CISP2"
* compose.include[=].concept.code = #A05
* compose.include[=].concept.display = "Lors d'un malaise"
* compose.include[=].concept.designation.use.code = #OID
* compose.include[=].concept.designation.value = "urn:oid:2.16.840.1.113883.6.139"