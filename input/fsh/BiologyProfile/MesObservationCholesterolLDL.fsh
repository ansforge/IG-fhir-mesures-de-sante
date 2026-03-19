
Profile: MesObservationCholesterolLDL
Parent: Observation
Id: mesures-observation-cholesterol-ldl
Title: "Cholestérol - LDL"
Description: "Profil biologie de la ressource Observation pour définir le cholestérol LDL"

* insert ObservationResultsBiologyMesures

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#2089-1 "Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique"

* method ^short = "La méthode de mesure du cholestérol LDL est fortement conseillée pour déterminer si des résultats sont comparables et ainsi utiliser cette donnée."

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity.unit = "mmol/L"
* valueQuantity.value 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..
* valueQuantity.code = #mmol/L


* referenceRange obeys mes-ir

* hasMember 0..0
* derivedFrom 0..0