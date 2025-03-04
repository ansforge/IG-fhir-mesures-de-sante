Profile: MesFrObservationBp
Parent: $FrObservationBp
Id: mesures-fr-observation-bp
Title: "Pression Artérielle"
Description: "Profil de la ressource Observation pour définir une Pression Artérielle (acronyme : PA ou BP)"

* meta.source ^short = "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"

* extension contains
    mesures-reason-for-measurement named MesReasonForMeasurement 0..1 and
    mesures-moment-of-measurement named MesMomentOfMeasurement 0..1

* category[VSCat].coding.display = "vital-signs" 
* subject only Reference($fr-patient)
* subject 1..1

* effective[x] only dateTime



* bodySite from $JDV-J149-BodySiteBP-MES (required)
* bodySite ^binding.description = $JDV-J149-BodySiteBP-MES
* bodySite.coding.system 1..
* bodySite.coding.code 1..

* method MS
* method from $JDV-J150-MethodBP-MES (extensible)

* device only Reference($PhdDevice)
* device MS
* device ^short = "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire"


* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)