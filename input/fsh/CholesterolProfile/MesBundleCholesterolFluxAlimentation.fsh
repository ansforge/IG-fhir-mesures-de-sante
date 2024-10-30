Profile: MesBundleFluxAlimentationLipid
Parent: Bundle
Id: mesures-bundle-flux-alimentation-lipid
Title: "Bundle d'alimentation"
Description: "Profil de la ressource Bundle du flux d'alimentation à envoyer au serveur"

* type = #transaction

* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "request.url"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice based on the request.url pattern"

* entry contains mes-observation 4..4 and mes-diagnostic-report 1..1

* entry[mes-observation].resource only mesures-observation-cholesterol-ldl or mesures-observation-cholesterol-hdl or mesures-observation-cholesterol-total or mesures-observation-cholesterol-trigly 

* entry[mes-observation].request 1..1
* entry[mes-observation].request.method = #POST
* entry[mes-observation].request.url = "Observation"  

* entry[mes-diagnostic-report].resource only mesures-cholesterol-diagnostic-report

* entry[mes-diagnostic-report].request 1..1
* entry[mes-diagnostic-report].request.method = #POST
* entry[mes-diagnostic-report].request.url = "Observation"  
