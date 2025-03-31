Profile: MesBundleFluxAlimentationBiologie
Parent: Bundle
Id: mesures-bundle-flux-alimentation-biologie
Title: "Bundle d'alimentation des mesures de biologie"
Description: "Profil de la ressource Bundle du flux d'alimentation des mesures de biologie à transmettre"

* type = #transaction

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice based on the request.url pattern"

* entry contains mes-observation-ldl 0..1 and mes-observation-hdl 0..1 and mes-observation-trigly 0..1 and mes-observation-total 0..1 and mes-observation-ratio 0..1 and mes-observation-aspect 0..1 and mes-observation-glycemie 0..1 and mes-diagnostic-report 1..1 

// LDL
* entry[mes-observation-ldl].resource only mesures-observation-cholesterol-ldl

* entry[mes-observation-ldl].request 1..1
* entry[mes-observation-ldl].request.method = #POST
* entry[mes-observation-ldl].request.url = "Observation"

// HDL
* entry[mes-observation-hdl].resource only mesures-observation-cholesterol-hdl 

* entry[mes-observation-hdl].request 1..1
* entry[mes-observation-hdl].request.method = #POST
* entry[mes-observation-hdl].request.url = "Observation"

// Trigly
* entry[mes-observation-trigly].resource only mesures-observation-cholesterol-trigly 

* entry[mes-observation-trigly].request 1..1
* entry[mes-observation-trigly].request.method = #POST
* entry[mes-observation-trigly].request.url = "Observation"

// Total
* entry[mes-observation-total].resource only mesures-observation-cholesterol-total

* entry[mes-observation-total].request 1..1
* entry[mes-observation-total].request.method = #POST
* entry[mes-observation-total].request.url = "Observation"


// Ratio
* entry[mes-observation-ratio].resource only mesures-observation-cholesterol-ratio

* entry[mes-observation-ratio].request 1..1
* entry[mes-observation-ratio].request.method = #POST
* entry[mes-observation-ratio].request.url = "Observation"

// Aspect
* entry[mes-observation-aspect].resource only mesures-observation-cholesterol-aspect

* entry[mes-observation-aspect].request 1..1
* entry[mes-observation-aspect].request.method = #POST
* entry[mes-observation-aspect].request.url = "Observation"


// mesures-observation-glucose
* entry[mes-observation-glycemie].resource only mesures-observation-glucose

* entry[mes-observation-glycemie].request 1..1
* entry[mes-observation-glycemie].request.method = #POST
* entry[mes-observation-glycemie].request.url = "Observation"




// DiagnosticReport
* entry[mes-diagnostic-report].resource only mesures-diagnostic-report

* entry[mes-diagnostic-report].request 1..1
* entry[mes-diagnostic-report].request.method = #POST
* entry[mes-diagnostic-report].request.url = "DiagnosticReport"  
