Instance: example-mes-fr-observation-hb1ac-001
InstanceOf: mesures-observation-hb1ac
Title: "Exemple de mesure Hb1Ac"
Description: "Observation d'une hémoglobine glyquée mesurée à 6.5 %"
Usage: #example

* status = #final

* subject = Reference(example-mes-fr-patient-001)

* effectiveDateTime = "2025-07-07T09:00:00+02:00"
* performer  = Reference(example-mes-fr-practitionner-001) "Jean Dupont"
* valueQuantity = 6.5 '%'