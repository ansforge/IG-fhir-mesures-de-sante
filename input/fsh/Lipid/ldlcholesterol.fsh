// Inspiré de https://www.hl7.org/fhir/R4/ldlcholesterol.html

Profile: MesFrObservationLDL
Parent: Observation
Id: mesures-fr-observation-ldl
Title: "LDL Cholesterol"
Description: "Profil de la ressource Observation pour définir le cholestérol LDL"

* code MS
* code from http://hl7.org/fhir/ValueSet/ldlcholesterol-codes|4.0.1 (required)
* code ^short = "LDL Cholesterol -measured or calculated per code"
* code ^definition = "LDL Cholesterol -measured or calculated per code."

* valueQuantity 1..1 MS
* valueQuantity only Quantity
* valueQuantity ^short = "LDL Cholesterol value"
* valueQuantity ^definition = "LDL Cholesterol value. If a result is not available, use the comments field."

* interpretation 0..1 MS
* interpretation only CodeableConcept
* interpretation ^short = "+ | ++ | +++ | - | -- | ---"
* interpretation ^definition = "+ | ++ | +++ | - | -- | ---."

* note MS
* note only Annotation
* note ^short = "Comments about result"
* note ^definition = "Comments about result."

* referenceRange 1..1 MS
* referenceRange.low 0..0
* referenceRange.high 1..1
* referenceRange.high only SimpleQuantity
* referenceRange.high ^definition = "<3.0 mmol/L."
* referenceRange.high ^comment = "Per Australian NHF Recommendations."
* referenceRange.high ^fixedQuantity.value = 3
* referenceRange.type 0..0
* referenceRange.type only CodeableConcept
* referenceRange.appliesTo 0..0
* referenceRange.appliesTo only CodeableConcept
* referenceRange.age 0..0
* referenceRange.age only Range

* hasMember 0..0
* derivedFrom 0..0