Instance: phd-74E8FFFEFF051C00
InstanceOf: Device
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"
* identifier[0].type = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers#SYSID
* identifier[=].system = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680"
* identifier[=].value = "74-E8-FF-FE-FF-05-1C-00"
* identifier[+].type = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers#BTMAC
* identifier[=].system = "http://hl7.org/fhir/sid/eui-48/bluetooth"
* identifier[=].value = "00-1C-05-FF-E8-74"
* manufacturer = "Nonin_Medical_Inc."
* serialNumber = "501900083"
* modelNumber = "Model 3230"
* type = urn:iso:std:iso:11073:10101#65573
* type.text = "MDC_MOC_VMS_MDS_SIMP"
* specialization.systemType = urn:iso:std:iso:11073:10101#528388
* specialization.systemType.text = "MDC_DEV_SPEC_PROFILE_PULS_OXIM: Pulse Oximeter"
* specialization.version = "1"
* version[0].type = urn:iso:std:iso:11073:10101#531976
* version[=].type.text = "MDC_ID_PROD_SPEC_FW: Firmware revision"
* version[=].value = "r2.1"
* version[+].type = urn:iso:std:iso:11073:10101#531975
* version[=].type.text = "MDC_ID_PROD_SPEC_SW: Software revision"
* version[=].value = "r1.5 9.7"
* version[+].type = urn:iso:std:iso:11073:10101#531974
* version[=].type.text = "MDC_ID_PROD_SPEC_HW: Hardware revision"
* version[=].value = "r1.0"
* version[+].type = urn:iso:std:iso:11073:10101#532352
* version[=].type.text = "MDC_REG_CERT_DATA_CONTINUA_VERSION: Continua version"
* version[=].value = "6.0"
* property[0].type = urn:iso:std:iso:11073:10101#532353
* property[=].type.text = "MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST: certified device list as transport-specialization combo"
* property[=].valueCode = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaPHD#32772
* property[+].type = http://hl7.org/fhir/uv/phd/CodeSystem/ASN1ToHL7#532354.0
* property[=].type.text = "regulation-status"
* property[=].valueCode = http://terminology.hl7.org/CodeSystem/v2-0136#N
* property[=].valueCode.text = "Device is Regulated"
* property[+].type = urn:iso:std:iso:11073:10101#68220
* property[=].type.text = "MDC_TIME_SYNC_PROTOCOL: Time synchronization protocol"
* property[=].valueCode = urn:iso:std:iso:11073:10101#532224
* property[=].valueCode.text = "MDC_TIME_SYNC_NONE:"