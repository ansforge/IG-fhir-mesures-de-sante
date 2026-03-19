
Profile: MesObservationCholesterolTotal
Parent: Observation
Id: mesures-observation-cholesterol-total
Title: "Cholestérol - total"
Description: "Profil biologie de la ressource Observation pour définir le cholestérol total"

* insert ObservationResultsBiologyMesures

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#2093-3 "Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique"

* method  ^short = "La méthode de mesure du cholestérol total est fortement conseillée pour déterminer si des résultats sont comparables et ainsi utiliser cette donnée."

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity.unit = "mmol/L"
* valueQuantity.value 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..
* valueQuantity.code = #mmol/L


* referenceRange obeys mes-ir
* referenceRange.type ^short = "Le type de référence permet d'indiquer s'il s'agit d'un intervalle de réfence ou d'un objectif cible."

* hasMember 0..0
* derivedFrom 0..0