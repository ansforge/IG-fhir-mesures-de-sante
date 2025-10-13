Instance: ExampleMesObservationGlucose001
InstanceOf: MesObservationGlucose
Usage: #example
* extension[MesOriginOfData].extension[hasBeenConverted].valueBoolean = true
* extension[MesOriginOfData].extension[documentId].valueIdentifier.system = "http://system-dmp-example.fr"
* extension[MesOriginOfData].extension[documentId].valueIdentifier.value = "6f9b7d72-2a8e-4a35-b95a-c2d31b279c7b"
* extension[MesOriginOfData].extension[originalCode].valueCodeableConcept = http://loinc.org#2345-7

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