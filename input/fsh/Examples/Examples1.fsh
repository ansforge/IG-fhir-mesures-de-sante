
Instance: ExamplefrPatient001
InstanceOf: Patient
Usage: #example
* identifier.use = #official
* identifier.system = "urn:oid:1.2.250.1.213.1.4.2"
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
* identifier.value = "23"
* active = true
* name.family = "Careful"
* name.given = "Adam"
* name.prefix = "Dr"
* address.use = #home
* address.line = "534 Erewhon St"
* address.city = "PleasantVille"
* address.state = "Vic"
* address.postalCode = "3999"
* qualification.identifier.system = "http://example.org/UniversityIdentifier"
* qualification.identifier.value = "12345"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360/2.7#BS "Bachelor of Science"
* qualification.code.text = "Bachelor of Science"
* qualification.period.start = "1995"
* qualification.issuer.display = "Example University"

Instance: ExampleMesFrObservationBodyWeight001
InstanceOf: MesFrObservationBodyWeight
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* extension[mes-reason-for-measurement].valueString = "Calcul IMC"
* method.coding.code = #K50BI02
* method.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R306-CLADIMED/FHIR/TRE-R306-CLADIMED"
* device = Reference(phd-74E8FFFEFF051C00)
* valueQuantity.value = 95
* valueQuantity.code = #kg
* valueQuantity.unit = "Kg"
* valueQuantity.system = $UCUM


Instance: ExampleMesFrObservationBodyHeight001
InstanceOf: MesFrObservationBodyHeight
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "Vital Signs"
* code = http://loinc.org#8302-2 "Body height"
* code.text = "Body height"
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

Instance: ExampleMesFrObservationBP001
InstanceOf: MesFrObservationBp
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2012-09-17"
* performer  = Reference(ExampleFrPractitionner001) "Jean-Louis Dutraittant"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* interpretation.text = "Below low normal"
* bodySite = https://mos.esante.gouv.fr/NOS/TRE_R309-FMA/FHIR/TRE-R309-FMA#24890 "Bras"
* component[SystolicBP].code.coding[SBPCode] = http://loinc.org#8480-6 "Tension artérielle systolique"
// * component[SystolicBP].code.coding[+] = http://snomed.info/sct#271649006 "Tension artérielle systolique"
// * component[SystolicBP].code.coding[+] = http://acme.org/devices/clinical-codes#bp-s "Tension artérielle systolique"
* component[SystolicBP].valueQuantity = 107 'mm[Hg]' "mm[Hg]"
* component[SystolicBP].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "normale"
* component[SystolicBP].interpretation.text = "Normal"
* component[DiastolicBP].code = http://loinc.org#8462-4 "Tension artérielle diastolique"
* component[DiastolicBP].valueQuantity = 60 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* component[DiastolicBP].interpretation.text = "En dessous de la normale"


Instance: ExampleMesFrObservationBmi001
InstanceOf: MesFrObservationBmi
Usage: #example
* meta.profile[0] = Canonical(MesFrObservationBmi)
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 1.2
* valueQuantity.code = #kg/m2
* valueQuantity.unit = "Kg/m2"
* valueQuantity.system = $UCUM



Instance: ExampleMesFrObservationHeartrate001
InstanceOf: MesFrObservationHeartrate
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
* effectiveDateTime = "1999-07-02"
* valueQuantity = 44 '/min' "battements/minute"



Instance: ExampleMesObservationGlucose001
InstanceOf: MesObservationGlucose
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* code = https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc#4548-4
* valueQuantity = 1.5 'mg/dL' "milligramme par décilitre"
* extension[MesReasonForMeasurement].valueString.value = "Malaise du patient"
* extension[MesMomentOfMeasurement].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc#16915-1 "Glucose post prandial"
* extension[MesNumberOfDays].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP#GEN-092 "Autre"
* extension[MesDiabetisType].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R311-CIM10Atih/FHIR/TRE-R311-CIM10Atih#E11.x0

Instance: ExampleMesObservationHeadCircumference001
InstanceOf: MesObservationHeadCircumference
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient" 
* effectiveDateTime = "2022-11-06"
* valueQuantity = 61 'cm' 

Instance: ExampleMesObservationPainSeverity001
InstanceOf: MesObservationPainSeverity
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 5
* valueQuantity.system = "http://unitsofmeasure.org"

Instance: ExampleMesObservationStepsByDay001
InstanceOf: MesObservationStepsByDay
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* code = http://loinc.org#41950-7
* effectiveDateTime = "2022-11-06"
* valueQuantity = 2500 '1/(24.h)' 

Instance: ExampleObservationWaistCircumference001
InstanceOf: MesObservationWaistCircumference
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 117