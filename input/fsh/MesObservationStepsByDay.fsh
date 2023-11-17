Profile: MesObservationStepsByDay
Parent: $vitalsigns
Id: mesures-observation-steps-by-day
* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
* meta.source ^definition = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

* extension contains
    $workflow-supportingInfo named supportingInfo 0..1 and
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1

* extension[supportingInfo] ^definition = "Autres ressources pertinentes *du dossier patient*"
* extension[MesReasonForMeasurement] ^short = "Motif de la mesure"
* extension[MesReasonForMeasurement] ^definition = "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, maladie du cœur et des vaisseaux, cholestérol…)"

* code.coding = http://loinc.org#41950-7
* subject only Reference($fr-patient)
* encounter only Reference($fr-encounter)
* performer only Reference(CareTeam or RelatedPerson or $fr-practitioner or PractitionerRole or $fr-organization or $fr-patient)

* value[x] only Quantity
* valueQuantity.unit 1..
* valueQuantity = $UCUM#1/(24.h)  
* valueQuantity.system 1..
* valueQuantity.code 1..
* valueQuantity.unit = "steps/day" 

* dataAbsentReason.coding.system 1..
* dataAbsentReason.coding.code 1..

* method from $JDV-J158-MethodStepsByDay-MES (required)
* method ^binding.description = $JDV-J158-MethodStepsByDay-MES
* method.coding.system 1..
* method.coding.code 1..

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour l'observation\r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"