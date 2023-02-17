Instance: JDV-J154-TypeGlucose-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J154-TypeGlucose-ENS/FHIR/JDV-J154-TypeGlucose-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.609"
* version = "20210625120000"
* name = "JDV_J154-TypeGlucose-ENS"
* status = #active
* date = "2021-06-25T12:00:00+01:00"
* description = "JDV pour caractériser le type de glucose"
* compose.include[0].system = "https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc"
* compose.include[=].concept[0].code = #2345-7
* compose.include[=].concept[=].display = "Glucose sanguin"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.1"
* compose.include[=].concept[+].code = #4548-4
* compose.include[=].concept[=].display = "Hémoglobine glyquée (HbA1c)"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.6.1"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP"
* compose.include[=].concept[0].code = #MED-969
* compose.include[=].concept[=].display = "Glucose interstitiel"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"
* compose.include[=].concept[+].code = #MED-972
* compose.include[=].concept[=].display = "Index de gestion de glycémie (IGG)"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"