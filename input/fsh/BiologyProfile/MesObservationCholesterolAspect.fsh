
Profile: MesFrObservationCholesterolAspect
Parent: Observation
Id: mesures-observation-cholesterol-aspect
Title: "Cholestérol - aspect"
Description: "Profil biologie de la ressource Observation pour définir l'aspect du cholestérol"

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* code = http://loinc.org#11158-3 "Aspect [Aspect] Sérum ; Résultat nominal"


* hasMember 0..0
* derivedFrom 0..0

* value[x] only string