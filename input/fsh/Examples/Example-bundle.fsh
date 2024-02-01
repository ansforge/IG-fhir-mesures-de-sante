Alias: $ContinuaDeviceIdentifiers = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: bundle-example
InstanceOf: MesBundleFluxAlimentation
Usage: #example
* type = #transaction
* entry[0].resource = device-example
* entry[=].request.method = #POST
* entry[=].request.url = "Device"
* entry[=].request.ifNoneExist = "identifier=urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680|FE-ED-AB-AA-DE-AD-77-C5"
* entry[+].fullUrl = "3bc44de3-069d-442d-829b-f3ef68cae372"
* entry[=].resource = body-weight-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

Instance: device-example
InstanceOf: PhdDevice
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"
* identifier.type = $ContinuaDeviceIdentifiers#SYSID
* identifier.system = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680"
* identifier.value = "FE-ED-AB-AA-DE-AD-77-C5"
* manufacturer = "OMRONHEALTHCARE"
* modelNumber = "HEM-9200T"
* deviceName.name = "Ma balance"
* deviceName.type = #patient-reported-name
* type = urn:iso:std:iso:11073:10101#65573
* specialization.systemType = urn:iso:std:iso:11073:10101#528457
* specialization.version = "2.3"

Instance: body-weight-example
InstanceOf: MesFrObservationBodyWeight
Usage: #inline
* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mes-fr-observation-body-weight"
* status = #final
* category = $observation-category#vital-signs "Signes vitaux"
* code = $loinc#29463-7 "Poids corporel"
* subject.identifier.system = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2560"
* subject.identifier.value = "id-value"
* device = Reference(3bc44de3-069d-442d-829b-f3ef68cae371)
* effectiveDateTime = "2022-08-22T01:56:16+01:00"
* valueQuantity = 71 'kg' "kg"
* extension.url = "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mes-reason-for-measurement"
* extension.valueString = "Mon nouveau poids !"