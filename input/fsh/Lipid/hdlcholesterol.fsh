// Inspiré de https://www.hl7.org/fhir/R4/hdlcholesterol.html

Profile: MesFrObservationHDL
Parent: Observation
Id: mesures-fr-observation-hdl
Title: "HDL Cholesterol"
Description: "Profil de la ressource Observation pour définir le cholestérol HDL"

* code MS
* code = $loinc#2085-9 "HDL Cholesterol" 
* code ^short = "HDL Cholesterol"
* code ^definition = "HDL Cholesterol."

* valueQuantity 1..1 MS
* valueQuantity only Quantity
* valueQuantity ^short = "HDL Cholesterol value"
* valueQuantity ^definition = "HDL Cholesterol value. If a result is not available, use the comments field."

* interpretation 0..1 MS
* interpretation only CodeableConcept
* interpretation ^short = "+ | ++ | +++ | - | -- | ---"
* interpretation ^definition = "+ | ++ | +++ | - | -- | ---."

* note MS
* note only Annotation
* note ^short = "Comments about result"
* note ^definition = "Comments about result."

* referenceRange 1..1 MS
* referenceRange.low 1..1
* referenceRange.low only SimpleQuantity
* referenceRange.low ^definition = ">1.5 mmol/L."
* referenceRange.low ^fixedQuantity.value = 1.5
* referenceRange.high 0..0
* referenceRange.high ^comment = "Per Australian NHF Recommendations."
* referenceRange.type 0..0
* referenceRange.type only CodeableConcept
* referenceRange.appliesTo 0..0
* referenceRange.appliesTo only CodeableConcept
* referenceRange.age 0..0
* referenceRange.age only Range

* hasMember 0..0
* derivedFrom 0..0