Profile: MesBundleFluxAlimentationLipid
Parent: Bundle
Id: mesures-bundle-flux-alimentationLipid
Title: "Bundle d'alimentation"
Description: "Profil de la ressource Bundle du flux d'alimentation à envoyer au serveur"

* type = #transaction

* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "request.url"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice based on the request.url pattern"

* entry contains mes-observation 4..4 and mes-device 0..1

* entry[mes-observation].resource only mesures-fr-observation-hdl or mesures-fr-observation-ldl or mesures-fr-observation-cholesterol-total or mesures-fr-observation-triglycerides

* entry[mes-observation].request 1..1
* entry[mes-observation].request.method = #POST
* entry[mes-observation].request.url = "Observation"  


* entry[mes-device].resource only $PhdDevice
* entry[mes-device].request 1..1
* entry[mes-device].request.method = #POST
* entry[mes-device].request.url = "Device"  