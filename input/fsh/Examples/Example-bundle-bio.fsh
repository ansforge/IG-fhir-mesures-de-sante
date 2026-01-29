Instance: cholesterol-total-example
InstanceOf: MesObservationCholesterolTotal
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 0.4
* valueQuantity.unit = "mmol/L"
* valueQuantity.code = #mmol/L
* valueQuantity.system = $UCUM

* referenceRange.low = 2.80 'mmol/L' "mmol/L"
* referenceRange.high = 11.10 'mmol/L' "mmol/L"

* method = https://smt.esante.gouv.fr/terminologie-tccr#DEG

* extension[mes-original-data].extension[has-been-converted].valueBoolean = true
* extension[mes-original-data].extension[original-code].valueCodeableConcept = http://loinc.org#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* extension[mes-original-data].extension[original-value].valueQuantity.value = 0.155
* extension[mes-original-data].extension[original-value].valueQuantity.unit = "g/L"
* extension[mes-original-data].extension[original-value].valueQuantity.code = #g/L
* extension[mes-original-data].extension[original-value].valueQuantity.system = $UCUM

Instance: cholesterol-hdl-example
InstanceOf: MesObservationCholesterolHDL
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 2.8
* valueQuantity.unit = "mmol/L"
* valueQuantity.code = #mmol/L
* valueQuantity.system = $UCUM

* referenceRange.low = 3.1 'mmol/L' "mmol/L"

* method = https://smt.esante.gouv.fr/terminologie-tccr#DEG

* extension[mes-original-data].extension[has-been-converted].valueBoolean = true
* extension[mes-original-data].extension[original-code].valueCodeableConcept = http://loinc.org#2085-9 "Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique"
* extension[mes-original-data].extension[original-value].valueQuantity.value = 1.08
* extension[mes-original-data].extension[original-value].valueQuantity.unit = "g/L"
* extension[mes-original-data].extension[original-value].valueQuantity.code = #g/L
* extension[mes-original-data].extension[original-value].valueQuantity.system = $UCUM

Instance: cholesterol-ldl-example
InstanceOf: MesObservationCholesterolLDL
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 7.8
* valueQuantity.unit = "mmol/L"
* valueQuantity.code = #mmol/L
* valueQuantity.system = $UCUM

* referenceRange.high = 2.6 'mmol/L' "mmol/L"

* method = https://smt.esante.gouv.fr/terminologie-tccr#DEG

* extension[mes-original-data].extension[has-been-converted].valueBoolean = true
* extension[mes-original-data].extension[original-code].valueCodeableConcept = http://loinc.org#2089-1 "Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique"
* extension[mes-original-data].extension[original-value].valueQuantity.value = 3.02
* extension[mes-original-data].extension[original-value].valueQuantity.unit = "g/L"
* extension[mes-original-data].extension[original-value].valueQuantity.code = #g/L
* extension[mes-original-data].extension[original-value].valueQuantity.system = $UCUM

Instance: cholesterol-trigly-example
InstanceOf: MesObservationCholesterolTrigly
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 5.6
* valueQuantity.unit = "mmol/L"
* valueQuantity.code = #mmol/L
* valueQuantity.system = $UCUM

* referenceRange.low = 2.80 'mmol/L' "mmol/L"
* referenceRange.high = 21.1 'mmol/L' "mmol/L"

* method = https://smt.esante.gouv.fr/terminologie-tccr#DEG

* extension[mes-original-data].extension[has-been-converted].valueBoolean = true
* extension[mes-original-data].extension[original-code].valueCodeableConcept = http://loinc.org#2571-8 "Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique"
* extension[mes-original-data].extension[original-value].valueQuantity.value = 4.9
* extension[mes-original-data].extension[original-value].valueQuantity.unit = "g/L"
* extension[mes-original-data].extension[original-value].valueQuantity.code = #g/L
* extension[mes-original-data].extension[original-value].valueQuantity.system = $UCUM

Instance: glycemia-example
InstanceOf: MesObservationGlucose
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* code = https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc#4548-4
* valueQuantity = 92 'mg/dL' "milligramme par décilitre"
* referenceRange.low = 70 'mg/dL' "milligramme par décilitre"
* referenceRange.high = 100 'mg/dL' "milligramme par décilitre"
* extension[MesReasonForMeasurement].valueString = "Malaise du patient"
* extension[MesMomentOfMeasurement].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc#16915-1 "Glucose post prandial"
* extension[MesNumberOfDays].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP#GEN-275 "7j"


Instance: cholesterol-dr
InstanceOf: MesDiagnosticReport
Usage: #example
* status = #final
* result[total-cholesterol] = Reference(cholesterol-total-example)
* result[hdl-cholesterol] = Reference(cholesterol-hdl-example)
* result[ldl-cholesterol] = Reference(cholesterol-ldl-example)
* result[trigly-cholesterol] = Reference(cholesterol-trigly-example)
* result[trigly-cholesterol] = Reference(cholesterol-trigly-example)
// TODO : add aspect, ratio

* result[glycemie] = Reference(glycemia-example)


Instance: bundle-example-bio
InstanceOf: MesBundleFluxAlimentationBiologie
Usage: #example
* type = #transaction

//UUIDs have been created using random generator

* entry[mes-observation-ldl][0].resource = cholesterol-ldl-example
* entry[mes-observation-ldl][=].request.method = #POST
* entry[mes-observation-ldl][=].request.url = "Observation"
* entry[mes-observation-ldl][=].fullUrl = "urn:uuid:cholesterol-ldl-example"

* entry[mes-observation-hdl][+].resource = cholesterol-hdl-example
* entry[mes-observation-hdl][=].request.method = #POST
* entry[mes-observation-hdl][=].request.url = "Observation"
* entry[mes-observation-hdl][=].fullUrl = "urn:uuid:cholesterol-hdl-example"


* entry[mes-observation-trigly][+].resource = cholesterol-trigly-example
* entry[mes-observation-trigly][=].request.method = #POST
* entry[mes-observation-trigly][=].request.url = "Observation"
* entry[mes-observation-trigly][=].fullUrl = "urn:uuid:cholesterol-trigly-example"


* entry[mes-observation-total][+].resource = cholesterol-total-example
* entry[mes-observation-total][=].request.method = #POST
* entry[mes-observation-total][=].request.url = "Observation"
* entry[mes-observation-total][=].fullUrl = "urn:uuid:cholesterol-total-example"


* entry[mes-observation-glycemie][+].resource = glycemia-example
* entry[mes-observation-glycemie][=].request.method = #POST
* entry[mes-observation-glycemie][=].request.url = "Observation"
* entry[mes-observation-glycemie][=].fullUrl = "urn:uuid:glycemia-example" 


* entry[mes-diagnostic-report][+].resource = cholesterol-dr
* entry[mes-diagnostic-report][=].request.method = #POST
* entry[mes-diagnostic-report][=].request.url = "DiagnosticReport"
* entry[mes-diagnostic-report][=].fullUrl = "urn:uuid:cholesterol-dr"



// TODO : add aspect, ratio