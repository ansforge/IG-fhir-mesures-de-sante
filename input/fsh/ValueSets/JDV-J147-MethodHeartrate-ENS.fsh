Instance: JDV-J147-MethodHeartrate-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J147-MethodHeartrate-ENS/FHIR/JDV-J147-MethodHeartrate-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.602"
* version = "20210528120000"
* name = "JDV_J147-MethodHeartrate-ENS"
* status = #active
* date = "2021-05-28T12:00:00+01:00"
* description = "JDV pour la méthode de mesure de fréquence cardiaque"
* compose.include[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R306-CLADIMED/FHIR/TRE-R306-CLADIMED"
* compose.include[=].concept[0].code = #K50BF
* compose.include[=].concept[=].display = "Oxymètre"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:1.2.250.1.213.2.65"
* compose.include[=].concept[+].code = #K51FC01
* compose.include[=].concept[=].display = "Tensiomètre"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:1.2.250.1.213.2.65"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_R307-NCIT/FHIR/TRE-R307-NCIT"
* compose.include[=].concept[0].code = #C49676
* compose.include[=].concept[=].display = "Estimation sans matériel (prise du pouls)"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"
* compose.include[=].concept[+].code = #C153216
* compose.include[=].concept[=].display = "Objets connectés"
* compose.include[=].concept[=].designation.use.code = #OID
* compose.include[=].concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"
* compose.include[+].system = "https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP"
* compose.include[=].concept.code = #MED-873
* compose.include[=].concept.display = "Cardiofréquencemètre"
* compose.include[=].concept.designation.use.code = #OID
* compose.include[=].concept.designation.value = "urn:oid:1.2.250.1.213.1.1.4.322"