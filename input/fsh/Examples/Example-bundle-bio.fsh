Instance: example-mes-fr-observation-cholesterol-total-003
InstanceOf: MesObservationCholesterolTotal
Title: "Exemple de mesure du cholestérol total"
Usage: #example
Description: "Exemple de mesure du cholestérol total"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
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

Instance: example-mes-fr-observation-cholesterol-hdl-003
InstanceOf: MesObservationCholesterolHDL
Title:  "Exemple de mesure du cholestérol HDL"
Usage: #example
Description: "Exemple de mesure du cholestérol HDL"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
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

Instance: example-mes-fr-observation-cholesterol-ldl-003
InstanceOf: MesObservationCholesterolLDL
Title: "Exemple de mesure du cholestérol LDL"
Description: "Exemple de mesure du cholestérol LDL"
Usage: #example
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
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

Instance: example-mes-fr-observation-cholesterol-trigly-003
InstanceOf: MesObservationCholesterolTrigly
Title: "Exemple de mesure du cholestérol triglycérides (003)"
Description: "Exemple de mesure du cholestérol triglycérides (003)"
Usage: #example
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
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

Instance: example-mes-fr-observation-glycemia-003
InstanceOf: MesObservationGlucose
Title: "Exemple de mesure de la glycémie"
Description: "Exemple de mesure de la glycémie"
Usage: #example
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* code = https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc#4548-4
* valueQuantity = 92 'mg/dL' "milligramme par décilitre"
* referenceRange.low = 70 'mg/dL' "milligramme par décilitre"
* referenceRange.high = 100 'mg/dL' "milligramme par décilitre"
* extension[MesReasonForMeasurement].valueString = "Malaise du patient"
* extension[MesMomentOfMeasurement].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc#16915-1 "Glucose post prandial"
* extension[MesNumberOfDays].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP#GEN-275 "7j"


Instance: example-mes-fr-diagnostic-report-cholesterol-003
InstanceOf: MesDiagnosticReport
Title: "Exemple de rapport diagnostique de bilan lipidique"
Description: "Exemple de rapport diagnostique de bilan lipidique"
Usage: #example
* status = #final
* result[total-cholesterol] = Reference(example-mes-fr-observation-cholesterol-total-003)
* result[hdl-cholesterol] = Reference(example-mes-fr-observation-cholesterol-hdl-003)
* result[ldl-cholesterol] = Reference(example-mes-fr-observation-cholesterol-ldl-003)
* result[trigly-cholesterol] = Reference(example-mes-fr-observation-cholesterol-trigly-003)
// TODO : add aspect, ratio

* result[glycemie] = Reference(example-mes-fr-observation-glycemia-003)

Instance: example-mes-fr-bundle-bio-003
InstanceOf: MesBundleFluxAlimentationBiologie
Title: "Exemple de bundle FHIR pour un bilan lipidique et une glycémie"
Description: "Exemple de bundle FHIR pour un bilan lipidique et une glycémie"
Usage: #example
* type = #transaction

//UUIDs have been created using random generator

* entry[mes-observation-ldl][0].resource = example-mes-fr-observation-cholesterol-ldl-003
* entry[mes-observation-ldl][=].request.method = #POST
* entry[mes-observation-ldl][=].request.url = "Observation"
* entry[mes-observation-ldl][=].fullUrl = "urn:uuid:example-mes-fr-observation-cholesterol-ldl-003"

* entry[mes-observation-hdl][+].resource = example-mes-fr-observation-cholesterol-hdl-003
* entry[mes-observation-hdl][=].request.method = #POST
* entry[mes-observation-hdl][=].request.url = "Observation"
* entry[mes-observation-hdl][=].fullUrl = "urn:uuid:example-mes-fr-observation-cholesterol-hdl-003"

* entry[mes-observation-trigly][+].resource = example-mes-fr-observation-cholesterol-trigly-003
* entry[mes-observation-trigly][=].request.method = #POST
* entry[mes-observation-trigly][=].request.url = "Observation"
* entry[mes-observation-trigly][=].fullUrl = "urn:uuid:example-mes-fr-observation-cholesterol-trigly-003"

* entry[mes-observation-total][+].resource = example-mes-fr-observation-cholesterol-total-003
* entry[mes-observation-total][=].request.method = #POST
* entry[mes-observation-total][=].request.url = "Observation"
* entry[mes-observation-total][=].fullUrl = "urn:uuid:example-mes-fr-observation-cholesterol-total-003"


* entry[mes-observation-glycemie][+].resource = example-mes-fr-observation-glycemia-003
* entry[mes-observation-glycemie][=].request.method = #POST
* entry[mes-observation-glycemie][=].request.url = "Observation"
* entry[mes-observation-glycemie][=].fullUrl = "urn:uuid:example-mes-fr-observation-glycemia-003" 


* entry[mes-diagnostic-report][+].resource = example-mes-fr-diagnostic-report-cholesterol-003
* entry[mes-diagnostic-report][=].request.method = #POST
* entry[mes-diagnostic-report][=].request.url = "DiagnosticReport"
* entry[mes-diagnostic-report][=].fullUrl = "urn:uuid:example-mes-fr-diagnostic-report-cholesterol-003"


// TODO : add aspect, ratio