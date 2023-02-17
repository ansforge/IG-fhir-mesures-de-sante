Instance: JDV-J158-MethodStepsByDay-ENS
InstanceOf: ValueSet
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/ressource-effectivePeriod"
* extension.valuePeriod.start = "2021-04-30T12:00:00+01:00"
* url = "https://mos.esante.gouv.fr/NOS/JDV_J158-MethodStepsByDay-ENS/FHIR/JDV-J158-MethodStepsByDay-ENS"
* identifier.value = "urn:oid:1.2.250.1.213.1.1.5.613"
* version = "20210528120000"
* name = "JDV_J158-MethodStepsByDay-ENS"
* status = #active
* date = "2021-05-28T12:00:00+01:00"
* description = "JDV pour la méthode de la mesure de nombre de pas par jour"
* compose.include.system = "https://mos.esante.gouv.fr/NOS/TRE_R307-NCIT/FHIR/TRE-R307-NCIT"
* compose.include.concept[0].code = #C88165
* compose.include.concept[=].display = "Podomètre"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"
* compose.include.concept[+].code = #C153216
* compose.include.concept[=].display = "Objet connecté"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"
* compose.include.concept[+].code = #C156877
* compose.include.concept[=].display = "Application smartphone"
* compose.include.concept[=].designation.use.code = #OID
* compose.include.concept[=].designation.value = "urn:oid:2.16.840.1.113883.3.26.1.1"