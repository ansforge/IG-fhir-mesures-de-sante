Instance: cholesterol-total-example
InstanceOf: MesFrObservationCholesterolTotal
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 2.10
* valueQuantity.unit = "g/L"
* valueQuantity.code = #g/L
* valueQuantity.system = $UCUM

* referenceRange.low = 0.50 'g/L' "g/L"
* referenceRange.high = 2.00 'g/L' "g/L"

Instance: cholesterol-hdl-example
InstanceOf: MesFrObservationCholesterolHDL
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 0.52
* valueQuantity.unit = "g/L"
* valueQuantity.code = #g/L
* valueQuantity.system = $UCUM

* referenceRange.low = 0.55 'g/L' "g/L"


Instance: cholesterol-ldl-example
InstanceOf: MesFrObservationCholesterolLDL
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 1.39
* valueQuantity.unit = "g/L"
* valueQuantity.code = #g/L
* valueQuantity.system = $UCUM

Instance: cholesterol-trigly-example
InstanceOf: MesFrObservationCholesterolTrigly
Usage: #example
* status = #final
* subject = Reference(ExamplefrPatient001) "Pierre Durand"
  * type = "Patient"
* effectiveDateTime = "2024-10-15"
* valueQuantity.value = 0.96
* valueQuantity.unit = "g/L"
* valueQuantity.code = #g/L
* valueQuantity.system = $UCUM

* referenceRange.low = 0.50 'g/L' "g/L"
* referenceRange.high = 1.50 'g/L' "g/L"