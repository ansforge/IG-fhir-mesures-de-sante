Instance: JDV-J155-MethodGlucoseSanguin-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J155-MethodGlucoseSanguin-ENS/FHIR/JDV-J155-MethodGlucoseSanguin-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.610"
* version = "20210430120000"
* name = "JDV_J155-MethodGlucoseSanguin-ENS"
* status = #active
* date = "2021-04-30T12:00:00+01:00"
* description = "JDV pour la méthode de mesure du glucose sanguin"
* compose.include[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R312-LPP/FHIR/TRE-R312-LPP"
* compose.include[=].concept.code = #1101720
* compose.include[=].concept.display = "Lecteur de glycémie"
* compose.include[=].concept.designation.use.code = #OID
* compose.include[=].concept.designation.value = "urn:oid:1.2.250.1.215.200.2.1"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_R307-NCIT/FHIR/TRE-R307-NCIT"
* compose.include[=].concept.code = #C17610
* compose.include[=].concept.display = "Prise de sang"
* compose.include[=].concept.designation.use.code = #OID
* compose.include[=].concept.designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"