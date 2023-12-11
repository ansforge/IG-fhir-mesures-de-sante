Profile: MesBundleFluxAlimentation
Parent: Bundle
Id: mesures-bundle-flux-alimentation
Title: "Bundle d'alimentation"
Description: "Bundle du flux d'alimentation à envoyer au serveur"

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "request.url"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice based on the request.url pattern"

* entry contains mes-observation 1..1 and mes-device 0..1

* entry[mes-observation].resource only mesures-fr-observation-bmi or mesures-fr-observation-bodyheight or mesures-fr-observation-body-temperature or mesures-fr-observation-body-weight or mesures-fr-observation-bp or mesures-fr-observation-heartrate or mesures-observation-glucose or mesures-observation-head-circumference or mesures-observation-pain-severity or mesures-observation-steps-by-day or mesures-observation-waist-circumference or mesures-fr-observation-oxygen-sat
* entry[mes-observation].request 1..1
* entry[mes-observation].request.method = #POST
* entry[mes-observation].request.url = "Observation"  


* entry[mes-device].resource only $PhdDevice
* entry[mes-device].request 1..1
* entry[mes-device].request.method = #POST
* entry[mes-device].request.url = "Device"  