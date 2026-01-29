
Instance: example-mes-fr-patient-001
InstanceOf: Patient
Title:  "Exemple de patient français"
Usage: #example
Description: "Exemple de patient français (ressource Patient)"
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

Instance: example-mes-fr-practitionner-001
InstanceOf: Practitioner
Title: "Exemple de practicien français"
Usage: #example
Description: "Exemple de practicien français (ressource Practitioner)"
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


Instance: example-mes-fr-observation-body-weight-001
InstanceOf: MesFrObservationBodyWeight
Title: "Exemple de mesure de poids corporel"
Usage: #example
Description: "Exemple de mesure de poids corporel"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* extension[mesures-reason-for-measurement].valueString = "Calcul IMC"
* method.coding = https://mos.esante.gouv.fr/NOS/TRE_R306-CLADIMED/FHIR/TRE-R306-CLADIMED#K50BI02
* valueQuantity.value = 96
* valueQuantity.code = #kg
* valueQuantity.unit = "Kg"
* valueQuantity.system = $UCUM


Instance: example-mes-fr-observation-body-height-001
InstanceOf: MesFrObservationBodyHeight
Title: "Exemple de mesure de taille corporelle"
Usage: #example
Description: "Exemple de mesure de taille corporelle"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
* effectiveDateTime = "1999-07-02"
* valueQuantity.value = 185 
* valueQuantity.code = #cm
* valueQuantity.system = $UCUM
* valueQuantity.unit = "cm"


Instance: example-mes-fr-observation-body-temperature-001
InstanceOf: MesFrObservationBodyTemperature
Title: "Exemple de mesure de la température corporelle"
Usage: #example
Description: "Exemple de mesure de la température corporelle"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity = 36.5 'Cel' "C"

Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: example-mes-fr-observation-oxygen-sat-001
InstanceOf: MesFrObservationOxygenSat
Title: "Exemple de mesure de la saturation en oxygène"
Usage: #example
Description: "Exemple de mesure de la saturation en oxygène"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
* code[0].coding[OxygenSatCode][0] = $loinc#2708-6 "Oxygène saturation [Fraction massique] Sang artériel ; Numérique"
* effectiveDateTime = "1999-07-02"
* valueQuantity = 99 '%' "%O2"

Instance: example-mes-fr-observation-bp-001
InstanceOf: MesFrObservationBp
Title: "Exemple de mesure de la pression artérielle"
Usage: #example
Description: "Exemple de mesure de la pression artérielle"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2012-09-17"
* performer  = Reference(example-mes-fr-practitionner-001) "Jean Dupont"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* interpretation.text = "Below low normal"
* bodySite = https://mos.esante.gouv.fr/NOS/TRE_R309-FMA/FHIR/TRE-R309-FMA#24890 "Bras"

// Systolic BP
* component[SystolicBP][0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[SystolicBP][0].valueQuantity = 107 'mm[Hg]' "mm[Hg]"
* component[SystolicBP][0].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* component[SystolicBP][0].interpretation.text = "Normal"


// Diastolic BP
* component[DiastolicBP][0].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[DiastolicBP][0].valueQuantity = 60 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP][0].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "low"
* component[DiastolicBP][0].interpretation.text = "En-dessous de la normale"


Instance: example-mes-fr-observation-bmi-001
InstanceOf: MesFrObservationBmi
Title: "Exemple de mesure de l'IMC"
Usage: #example
Description: "Exemple de mesure de l'IMC"
* meta.profile[0] = Canonical(MesFrObservationBmi)
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 28
* valueQuantity.code = #kg/m2
* valueQuantity.unit = "Kg/m2"
* valueQuantity.system = $UCUM
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"



Instance: example-mes-fr-observation-heartrate-001
InstanceOf: MesFrObservationHeartrate
Title: "Exemple de mesure de la fréquence cardiaque"
Usage: #example
Description: "Exemple de mesure de la fréquence cardiaque"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity = 70 '/min' "battements/minute"

Instance: example-mes-fr-observation-head-circumference-001
InstanceOf: MesObservationHeadCircumference
Title: "Exemple de mesure du périmètre crânien"
Usage: #example
Description: "Exemple de mesure du périmètre crânien"
* status = #final
* code = http://loinc.org#8287-5
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient" 
* effectiveDateTime = "2022-11-06"
* valueQuantity = 61 'cm' 

Instance: example-mes-fr-observation-pain-severity-001
InstanceOf: MesObservationPainSeverity
Title: "Exemple de mesure de la sévérité de la douleur"
Usage: #example
Description: "Exemple de mesure de la sévérité de la douleur"
* status = #final
* code = http://loinc.org#72514-3
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 5
* valueQuantity.system = "http://unitsofmeasure.org"
* extension[MesReasonForMeasurement].valueString = "Malaise du patient"

Instance: example-mes-fr-observation-steps-by-day-001
InstanceOf: MesObservationStepsByDay
Title: "Exemple de mesure du nombre de pas par jour"
Usage: #example
Description: "Exemple de mesure du nombre de pas par jour"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* code = http://loinc.org#41950-7
* effectiveDateTime = "2022-11-06"
* valueQuantity = 2500 '1/(24.h)' 
* extension[MesReasonForMeasurement].valueString = "Essoufflement du patient"

Instance: example-mes-fr-observation-waist-circum-001
InstanceOf: MesObservationWaistCircumference
Title: "Exemple de mesure du tour de taille"
Usage: #example
Description: "Exemple de mesure du tour de taille"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* valueQuantity.value = 117
* extension[MesReasonForMeasurement].valueString = "Prise de masse importante récente (confinement)"

Instance: example-mes-fr-observation-resp-rate-001
InstanceOf: MesFrObservationRespiratoryRate
Title: "Exemple de mesure de la fréquence respiratoire"
Usage: #example
Description: "Exemple de mesure de la fréquence respiratoire"
* status = #final
* subject = Reference(example-mes-fr-patient-001) "Pierre Durand"
* effectiveDateTime = "2023-07-02"
* valueQuantity = 18 '/min' "/min"
