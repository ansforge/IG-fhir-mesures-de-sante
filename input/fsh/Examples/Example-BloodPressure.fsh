Alias: $vitalsigns = http://hl7.org/fhir/StructureDefinition/vitalsigns

Instance: blood-pressure
InstanceOf: $vitalsigns
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281"
* basedOn.identifier.system = "https://acme.org/identifiers"
* basedOn.identifier.value = "1234"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic & diastolic"
* subject =  Reference(ExamplefrPatient001) "Pierre Durand"
* effectiveDateTime = "2012-09-17"
//* performer.reference = "Practitioner/example"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* interpretation.text = "Below low normal"
* bodySite = http://snomed.info/sct#368209003 "Right arm"
* component[0].code.coding[0] = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].code.coding[+] = http://snomed.info/sct#271649006 "Systolic blood pressure"
* component[=].code.coding[+] = http://acme.org/devices/clinical-codes#bp-s "Systolic Blood pressure"
* component[=].valueQuantity = 107 'mm[Hg]' "mmHg"
* component[=].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "normal"
* component[=].interpretation.text = "Normal"
* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 60 'mm[Hg]' "mmHg"
* component[=].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* component[=].interpretation.text = "Below low normal"