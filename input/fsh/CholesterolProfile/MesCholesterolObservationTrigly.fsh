
Profile: MesFrObservationCholesterolTrigly
Parent: Observation
Id: mesures-observation-cholesterol-trigly
Title: "Cholestérol triglycerides"
Description: "Profil de la ressource Observation pour définir le cholestérol triglycerides"

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#2571-8 "LDL Cholesterol"


* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity.unit = "mmol/L"
* valueQuantity.value 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..
* valueQuantity.code = #mmol/L

* referenceRange 1..1 MS
* referenceRange obeys mes-ir
* referenceRange.low 0..1 // A DISCUTER, changé de 0..0 à 0..1
* referenceRange.high 1..1
* referenceRange.type 0..0
* referenceRange.type only CodeableConcept
* referenceRange.appliesTo 0..0
* referenceRange.appliesTo only CodeableConcept
* referenceRange.age 0..0
* referenceRange.age only Range

* hasMember 0..0
* derivedFrom 0..0


