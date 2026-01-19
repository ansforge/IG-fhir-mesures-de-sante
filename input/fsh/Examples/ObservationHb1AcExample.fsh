Instance: exemple-observation-hb1ac
InstanceOf: mesures-observation-hb1ac
Title: "Exemple de mesure Hb1Ac"
Description: "Observation d'une hémoglobine glyquée mesurée à 6.5 %"
Usage: #example

* status = #final

* subject = Reference(ExamplefrPatient001)

* effectiveDateTime = "2025-07-07T09:00:00+02:00"
* performer  = Reference(ExampleFrPractitionner001) "Jean Dupont"
* valueQuantity = 6.5 '%'

* method = http://hl7.org/fhir/ValueSet/method-glucose-vs#HPLC "High-performance liquid chromatography"