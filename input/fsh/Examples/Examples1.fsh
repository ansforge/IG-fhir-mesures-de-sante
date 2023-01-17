
Instance: ExamplefrPatient001
InstanceOf: $fr-patient
Usage: #example
* identifier.use = #official
* identifier.system = "1.2.250.1.213.1.4.2"
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


Instance: ExampleMesFrObservationBodyWeight001
InstanceOf: MesFrObservationBodyWeight
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
* extension[mes-reason-for-measurement].valueString = "Calcul IMC"
* method.coding.code = #NIMPORTEAOUAC
* method.coding.system = $JDV-J145-MethodBodyWeight-ENS
* device = Reference(BalanceElectronique)
* device.type = "PhdDevice"
* valueQuantity.value = 95
* valueQuantity.code = #kg
* valueQuantity.unit = "Kg"
* valueQuantity.system = $UCUM


Instance: ExampleMesFrObservationBodyHeight001
InstanceOf: MesFrObservationBodyHeight
Usage: #example
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#8302-2 "Body height"
* code.text = "Body height"
* subject.reference = "Patient/example"
* effectiveDateTime = "1999-07-02"
* valueQuantity.value = 185 
* valueQuantity.code = #cm
* valueQuantity.system = $UCUM
* valueQuantity.unit = "cm"
* extension[FrObservationHeightBodyPosition].valueCodeableConcept.coding.code = #NIMPORTEAOUAC
* extension[FrObservationHeightBodyPosition].valueCodeableConcept.coding.system = #NIMPORTEAOUAC

Instance: ExampleMesFrObservationBodyTemperature001
InstanceOf: MesFrObservationBodyTemperature
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"

Instance: ExampleMesFrObservationBP001
InstanceOf: MesFrObservationBp
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"

Instance: ExampleMesFrObservationBmi001
InstanceOf: MesFrObservationBmi
Usage: #example
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

Instance: ExampleMesObservationGlucose001
InstanceOf: MesObservationGlucose
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"
//* code = $JDV-J154-TypeGlucose-ENS|#4548-4
* code = https://mos.esante.gouv.fr/NOS/JDV_J154-TypeGlucose-ENS/FHIR/JDV-J154-TypeGlucose-ENS|#4548-4

Instance: ExampleMesObservationHeadCircumference001
InstanceOf: MesObservationHeadCircumference
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"

Instance: ExampleMesObservationPainSeverity001
InstanceOf: MesObservationPainSeverity
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"

Instance: ExampleMesObservationStepsByDay001
InstanceOf: MesObservationStepsByDay
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"

Instance: ExampleObservationWaistCircumference001
InstanceOf: MesObservationWaistCircumference
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2022-11-06"