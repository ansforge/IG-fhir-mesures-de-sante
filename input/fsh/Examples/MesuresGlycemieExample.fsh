Instance: example-mes-fr-observation-glucose-001
InstanceOf: MesObservationGlucose
Title: "Exemple de mesure de la glycémie (001)"
Usage: #example
Description: "Exemple de mesure de la glycémie (001)"
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