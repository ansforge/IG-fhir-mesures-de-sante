Profile: MesFrObservationTriglycerides
Parent: Observation
Id: mesures-fr-cholesterol-triglycerides
Title: "Triglycerides"
Description: "Profil de la ressource Observation pour échanger la mesure de triglycérides"

* code MS
* code = $loinc#35217-9 "Triglyceride [Moles/​volume] in Serum or Plasma"
* code ^short = "Triglyceride"
* code ^definition = "Triglyceride."

* valueQuantity 1..1 MS
* valueQuantity only Quantity
* valueQuantity ^short = "Triglyceride value"
* valueQuantity ^definition = "Triglyceride value. If a result is not available, use the comments field."

* interpretation 0..1 MS
* interpretation only CodeableConcept
* interpretation ^short = "+ | ++ | +++ | - | -- | ---"
* interpretation ^definition = "+ | ++ | +++ | - | -- | ---."

* referenceRange 1..1 MS
* referenceRange.low 0..0
* referenceRange.high 1..1
* referenceRange.high ^comment = "Per Australian NHF Recommendations."
* referenceRange.high ^requirements = "<2.0 mmol/L."
* referenceRange.type 0..0
* referenceRange.type only CodeableConcept
* referenceRange.appliesTo 0..0
* referenceRange.appliesTo only CodeableConcept
* referenceRange.age 0..0
* referenceRange.age only Range

* hasMember 0..0
* derivedFrom 0..0
