Instance: JDV-J159-MethodPainSeverity-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J159-MethodPainSeverity-ENS/FHIR/JDV-J159-MethodPainSeverity-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.614"
* version = "20210430120000"
* name = "JDV_J159-MethodPainSeverity-ENS"
* status = #active
* date = "2021-04-30T12:00:00+01:00"
* description = "JDV pour la méthode de la mesure du niveau de douleur"
* compose.include.system = "https://mos.esante.gouv.fr/NOS/TRE_R307-NCIT/FHIR/TRE-R307-NCIT"
* compose.include.concept[0].code = #C21082
* compose.include.concept[=].display = "Échelle numérique"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"
* compose.include.concept[+].code = #C121547
* compose.include.concept[=].display = "Échelle visuelle analogique"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"
* compose.include.concept[+].code = #C21133
* compose.include.concept[=].display = "Échelle verbale"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"