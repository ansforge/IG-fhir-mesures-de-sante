
Profile: MesFrObservationCholesterolTotal
Parent: Observation
Id: mesures-observation-cholesterol-total
Title: "Cholestérol - total"
Description: "Profil biologie de la ressource Observation pour définir le cholestérol total"

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#2093-3 "LDL Cholesterol"

* method 1..1
* method from https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789 (extensible)



* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity.unit = "mmol/L"
* valueQuantity.value 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..
* valueQuantity.code = #mmol/L


* referenceRange 1..1 MS
* referenceRange ^short = "L'intervalle de référence est obligatoire pour interpréter le résultat par rapport à la norme, qui peut varier selon de nombreux critères : la méthode d'analyse, l'age, le sexe, ..."
* referenceRange obeys mes-ir
* referenceRange.low 0..1
* referenceRange.high 1..1
* referenceRange.high only SimpleQuantity
* referenceRange.type 0..0
* referenceRange.type only CodeableConcept
* referenceRange.appliesTo 0..0
* referenceRange.appliesTo only CodeableConcept
* referenceRange.age 0..0
* referenceRange.age only Range

* hasMember 0..0
* derivedFrom 0..0