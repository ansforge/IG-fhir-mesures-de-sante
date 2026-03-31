
Profile: MesObservationCholesterolHDL
Parent: Observation
Id: mesures-observation-cholesterol-hdl
Title: "Cholestérol - HDL"
Description: "Profil biologie de la ressource Observation pour définir le cholestérol HDL"

* insert ObservationResultsBiologyMesures

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#2085-9 "Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique"


* method ^short = "La méthode de mesure du cholestérol HDL est fortement conseillée pour déterminer si des résultats sont comparables et ainsi utiliser cette donnée."


* referenceRange obeys mes-ir
* referenceRange.type ^short = "Le type de référence permet d'indiquer s'il s'agit d'un intervalle de réfence ou d'un objectif cible."
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
