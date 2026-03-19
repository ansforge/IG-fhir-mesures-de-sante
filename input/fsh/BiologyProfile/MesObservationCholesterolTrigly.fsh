Profile: MesObservationCholesterolTrigly
Parent: Observation
Id: mesures-observation-cholesterol-trigly
Title: "Cholestérol - triglycerides"
Description: "Profil biologie de la ressource Observation pour définir le cholestérol triglycerides"

* insert ObservationResultsBiologyMesures

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#2571-8 "Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique"


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

* method 1..1
* method from https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789 (extensible)


