//TODO
Profile: MesFrObservationCholesterolRatio
Parent: Observation
Id: mesures-observation-cholesterol-ratio
Title: "Cholestérol - Ratio LDL/HDL"
Description: "Profil biologie de la ressource Observation pour définir le ratio cholestérol LDL/HDL"


* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#11054-4 "Cholestérol LDL/cholestérol HDL [Masse ratio] Sérum/Plasma ; Numérique"
* method from https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789 (extensible)

* referenceRange 1..1 MS
* referenceRange ^short = "L'intervalle de référence est obligatoire pour interpréter le résultat par rapport à la norme, qui peut varier selon de nombreux critères : la méthode d'analyse, l'age, le sexe, ..."
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
* valueQuantity.unit = "{ratio}"
* valueQuantity.value 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..
* valueQuantity.code = #{ratio}
