Profile: MesObservationPainSeverity
Parent: $vitalsigns
Id: mesures-observation-pain-severity
Description: "Niveau de douleur - profil créé pour l'alimentation de l'Espace Numérique de Santé"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1
* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"
* extension[MesReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre"

* category[VSCat].coding.display = "Signes vitaux" 

* code = http://loinc.org#72514-3

* effective[x] only dateTime

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity.unit = "Level" 
* valueQuantity.code = #1  // Correspond à une unité
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1..

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* bodySite ^short = "Lieu de la douleur - Texte libre"

* method MS
* method from $JDV-J159-MethodPainSeverity-MES (extensible)
