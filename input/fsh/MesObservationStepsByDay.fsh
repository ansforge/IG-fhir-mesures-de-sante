Profile: MesObservationStepsByDay
Parent: $vitalsigns
Id: mesures-observation-steps-by-day
Title: "Nombre de pas par jour"
Description: "Profil de la ressource Observation pour définir un nombre de pas par jour"

* insert ObservationResultsMesures

* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #pattern
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains stepsBDCode 1..1
* code.coding[stepsBDCode] = http://loinc.org#41950-7



* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity = $UCUM#1/(24.h)  
* valueQuantity.system 1..
* valueQuantity.code 1..
* valueQuantity.unit = "steps/day" 

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method MS
* method from $JDV-J158-MethodStepsByDay-MES (extensible)

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"