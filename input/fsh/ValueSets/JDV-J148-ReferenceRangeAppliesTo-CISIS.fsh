Instance: JDV-J148-ReferenceRangeAppliesTo-CISIS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J148-ReferenceRangeAppliesTo-CISIS/FHIR/JDV-J148-ReferenceRangeAppliesTo-CISIS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.603"
* version = "20210430120000"
* name = "JDV_J148-ReferenceRangeAppliesTo-CISIS"
* status = #active
* date = "2021-04-30T12:00:00+01:00"
* description = "JDV pour le champ d'application de l'intervalle de référence"
* compose.include[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R303-HL7v3AdministrativeGender/FHIR/TRE-R303-HL7v3AdministrativeGender"
* compose.include[=].concept[0].code = #F
* compose.include[=].concept[=].display = "Féminin"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.5.1"
* compose.include[=].concept[+].code = #M
* compose.include[=].concept[=].display = "Masculin"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.5.1"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc"
* compose.include[=].concept.code = #LA15173-0
* compose.include[=].concept.display = "Femme enceinte"
* compose.include[=].concept.designation.use.code = #OID
* compose.include[=].concept.designation.value = "urn:oid:2.16.840.1.113883.6.1"