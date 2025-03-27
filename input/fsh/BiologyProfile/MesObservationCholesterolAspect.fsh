
Profile: MesFrObservationCholesterolAspect
Parent: Observation
Id: mesures-observation-cholesterol-aspect
Title: "Aspect du cholestérol"
Description: "Profil biologie de la ressource Observation pour définir l'aspect du cholestérol"


* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#11158-3 "Aspect [Aspect] Sérum ; Résultat nominal"

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
