Alias: $ContinuaDeviceIdentifiers = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: bundle-example-body-weight
InstanceOf: MesBundleFluxAlimentation
Usage: #example
* type = #transaction
* entry[mes-device][0].resource = device-example
* entry[mes-device][=].request.method = #POST
* entry[mes-device][=].request.url = "Device"
* entry[mes-device][=].fullUrl = "urn:uuid:d36bfdb6-b1b1-4efd-9cb9-d217a8696575" //created using random generator

* entry[mes-observation][+].resource = body-weight-example
* entry[mes-observation][=].request.method = #POST
* entry[mes-observation][=].request.url = "Observation"
* entry[mes-observation][=].fullUrl = "urn:uuid:5138af77-df7e-4b9d-ba17-07ba3ebb950a" //created using random generator

Instance: device-example
InstanceOf: PhdDevice
Usage: #inline
* id = "d36bfdb6-b1b1-4efd-9cb9-d217a8696575"
* meta.profile[phdProfile][0] = "http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"
* identifier[systemIdIdentifier][0].type = $ContinuaDeviceIdentifiers#SYSID
* identifier[systemIdIdentifier][=].system = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680"
* identifier[systemIdIdentifier][=].value = "FE-ED-AB-AA-DE-AD-77-C5"
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
* id = "5138af77-df7e-4b9d-ba17-07ba3ebb950a"
* meta.profile = Canonical(mesures-fr-observation-body-weight)
* status = #final
* code = $loinc#29463-7 "Body weight"
* subject.identifier.system = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2560"
* subject.identifier.value = "id-value"
* device = Reference(d36bfdb6-b1b1-4efd-9cb9-d217a8696575)
* effectiveDateTime = "2022-08-22T01:56:16+01:00"
* valueQuantity = 71 'kg' "kg"
* extension[0].url = Canonical(mesures-reason-for-measurement)
* extension[0].valueString = "Mon nouveau poids !"
