// Inspiré du profil https://www.hl7.org/fhir/R4/cholesterol.html en draft
Profile: MesFrObservationCholesterolTotal
Parent: Observation
Id: mesures-fr-observation-cholesterol-total
Title: "Cholestérol total"
Description: "Profil de la ressource Observation pour définir le cholestérol total"

* code MS
* code = $loinc#35200-5 "Cholesterol [Moles/​volume] in Serum or Plasma"
* code ^short = "Cholesterol"
* code ^definition = "Cholesterol."

* valueQuantity 1..1 MS
* valueQuantity only Quantity
* valueQuantity ^short = "Cholesterol value"
* valueQuantity ^definition = "Cholesterol value. If a result is not available, use the comments field."

* valueQuantity.value 0..1 MS
* valueQuantity.value only decimal
* valueQuantity.value ^short = "Actual numerical value"
* valueQuantity.value ^definition = "Actual numerical value."

* valueQuantity.comparator 0..0
* valueQuantity.comparator ^comment = "No need for this on cholesterol."

* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.unit = "mmol/L"

* valueQuantity.code only code
* valueQuantity.code 1..1 MS
* valueQuantity.code = #mmol/L

* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri

* interpretation 0..1 MS
* interpretation only CodeableConcept
* interpretation ^short = "+ | ++ | +++ | - | -- | ---"
* interpretation ^definition = "+ | ++ | +++ | - | -- | ---."

* referenceRange 1..1 MS
* referenceRange.low 0..0
* referenceRange.high 1..1
* referenceRange.high only SimpleQuantity
* referenceRange.high ^definition = "<4.5 mmol/L."
* referenceRange.high ^comment = "Per Australian NHF Recommendations."
* referenceRange.high ^fixedQuantity.value = 4.5
* referenceRange.type 0..0
* referenceRange.type only CodeableConcept
* referenceRange.appliesTo 0..0
* referenceRange.appliesTo only CodeableConcept
* referenceRange.age 0..0
* referenceRange.age only Range

* hasMember 0..0
* derivedFrom 0..0