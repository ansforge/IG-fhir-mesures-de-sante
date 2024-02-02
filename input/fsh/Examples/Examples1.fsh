
Instance: ExamplefrPatient001
InstanceOf: Patient
Usage: #example
* identifier.use = #official
* identifier.system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier.value = "123456789012244"
* active = true
* name[0].use = #official
* name[=].family = "Durand"
* name[=].given[0] = "Pierre"
* name[=].given[+] = "Jean"
* telecom[0].use = #home
* telecom[0].system = #phone
* telecom[0].value = "01 23 24 67 89"
* telecom[1].use = #work
* telecom[1].rank = 1
* telecom[1].system = #phone
* telecom[1].value = "01 99 88 77 66"
* telecom[2].use = #mobile
* telecom[2].rank = 2
* telecom[2].system = #phone
* telecom[2].value = "06 80 55 34 33"
* gender = #male
* birthDate = "1974-12-25"
* deceasedBoolean = false
* address.use = #home
* address.type = #both
* address.text = "367 rue Troussier, 45100 Orléans, France"
* address.line = "367 rue Troussier"
* address.city = "Orléans"
* address.postalCode = "45100"
* address.period.start = "2018-06-01"

Instance: ExampleFrPractitionner001
InstanceOf: Practitioner
Usage: #example
* identifier.system = "http://www.acme.org/practitioners"
* identifier.value = "801234567897"
* active = true
* name.family = "Dupont"
* name.given = "Jean"
* name.prefix = "Mr"
* address.use = #home
* address.line = "7 rue Coursier"
* address.city = "Amiens"
* address.postalCode = "80000"
* telecom[0].use = #work
* telecom[0].rank = 1
* telecom[0].system = #phone
* telecom[0].value = "01 70 88 88 64"


Instance: ExampleMesFrObservationBodyWeight001
InstanceOf: MesFrObservationBodyWeight
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* extension[mesures-reason-for-measurement].valueString = "Calcul IMC"
* method.coding = https://mos.esante.gouv.fr/NOS/TRE_R306-CLADIMED/FHIR/TRE-R306-CLADIMED#K50BI02
* valueQuantity.value = 96
* valueQuantity.code = #kg
* valueQuantity.unit = "Kg"
* valueQuantity.system = $UCUM


Instance: ExampleMesFrObservationBodyHeight001
InstanceOf: MesFrObservationBodyHeight
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
* effectiveDateTime = "1999-07-02"
* valueQuantity.value = 185 
* valueQuantity.code = #cm
* valueQuantity.system = $UCUM
* valueQuantity.unit = "cm"


Instance: ExampleMesFrObservationBodyTemperature001
InstanceOf: MesFrObservationBodyTemperature
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity = 36.5 'Cel' "C"

Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: ExampleMesFrOxygenSat
InstanceOf: MesFrObservationOxygenSat
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
* category = $observation-category#vital-signs "vital-signs"
* category.text = "Vital Signs"
* code.coding[0] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.text = "oxygen_saturation"
* effectiveDateTime = "1999-07-02"
* valueQuantity = 99 '%' "%O2"

Instance: ExampleMesFrObservationBP001
InstanceOf: MesFrObservationBp
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2012-09-17"
* performer  = Reference(ExampleFrPractitionner001) "Jean Dupont"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* interpretation.text = "Below low normal"
* bodySite = https://mos.esante.gouv.fr/NOS/TRE_R309-FMA/FHIR/TRE-R309-FMA#24890 "Bras"

// Systoic BP
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 107 'mm[Hg]' "mm[Hg]"
* component[0].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* component[0].interpretation.text = "Normal"


// Diastolic BP
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 60 'mm[Hg]' "mm[Hg]"
* component[1].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* component[1].interpretation.text = "En dessous de la normale"


Instance: ExampleMesFrObservationBmi001
InstanceOf: MesFrObservationBmi
Usage: #example
* meta.profile[0] = Canonical(MesFrObservationBmi)
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 28
* valueQuantity.code = #kg/m2
* valueQuantity.unit = "Kg/m2"
* valueQuantity.system = $UCUM
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"



Instance: ExampleMesFrObservationHeartrate001
InstanceOf: MesFrObservationHeartrate
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity = 70 '/min' "battements/minute"



Instance: ExampleMesObservationGlucose001
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
* extension[MesDiabetisType].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R311-CIM10Atih/FHIR/TRE-R311-CIM10Atih#E11.x0



Instance: ExampleMesObservationHeadCircumference001
InstanceOf: MesObservationHeadCircumference
Usage: #example
* status = #final
* code = http://loinc.org#8287-5
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient" 
* effectiveDateTime = "2022-11-06"
* valueQuantity = 61 'cm' 

Instance: ExampleMesObservationPainSeverity001
InstanceOf: MesObservationPainSeverity
Usage: #example
* status = #final
* code = http://loinc.org#72514-3
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 5
* valueQuantity.system = "http://unitsofmeasure.org"
* extension[MesReasonForMeasurement].valueString = "Malaise du patient"

Instance: ExampleMesObservationStepsByDay001
InstanceOf: MesObservationStepsByDay
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* code = http://loinc.org#41950-7
* effectiveDateTime = "2022-11-06"
* valueQuantity = 2500 '1/(24.h)' 
* extension[MesReasonForMeasurement].valueString = "Essoufflement du patient"

Instance: ExampleObservationWaistCircumference001
InstanceOf: MesObservationWaistCircumference
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 117
* extension[MesReasonForMeasurement].valueString = "Prise de masse importante récente (confinement)"

Instance: ExampleMesFrRespRate
InstanceOf: MesFrObservationRespiratoryRate
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
* effectiveDateTime = "2023-07-02"
* valueQuantity = 18 '/min' "/min"
