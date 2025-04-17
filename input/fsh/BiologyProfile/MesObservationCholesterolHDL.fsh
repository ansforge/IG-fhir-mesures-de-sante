
Profile: MesFrObservationCholesterolHDL
Parent: Observation
Id: mesures-observation-cholesterol-hdl
Title: "Cholestérol - HDL"
Description: "Profil biologie de la ressource Observation pour définir le cholestérol HDL"


* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#2085-9 "HDL Cholesterol"


* method 1..1
* method ^short = "La méthode de mesure du cholestérol HDL est obligatoire pour déterminer si des résultats sont comparables et ainsi utiliser cette donnée."
* method from https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789 (extensible)

* referenceRange 1..1 MS
* referenceRange obeys mes-ir
* referenceRange.low 1..1
* referenceRange.low only SimpleQuantity
* referenceRange.high 0..0
* referenceRange.type 0..0
* referenceRange.type only CodeableConcept
* referenceRange.appliesTo 0..0
* referenceRange.appliesTo only CodeableConcept
* referenceRange.age 0..0
* referenceRange.age only Range

* hasMember 0..0
* derivedFrom 0..0

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity.unit = "mmol/L"
* valueQuantity.value 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..
* valueQuantity.code = #mmol/L
