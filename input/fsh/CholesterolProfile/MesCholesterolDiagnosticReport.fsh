
Profile: MesCholesterolDiagnosticReport
Parent: DiagnosticReport
Id: mesures-cholesterol-diagnostic-report
Title: "DiagnosticReport mesures cholestérol"
Description: "Profil de la ressource DiagnosticReport pour définir un rapport sur les mesures de cholestérol"


* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open

* result ^short = "Observation results included in the diagnostic report."
* result ^definition = "Observation results included in the diagnostic report."

* result contains ldl-cholesterol 1..1 MS and hdl-cholesterol 1..1 MS and total-cholesterol 1..1 MS and trigly-cholesterol 1..1 MS and

* result[ldl-cholesterol] only Reference(mesures-observation-cholesterol-ldl)
* result[hdl-cholesterol] only Reference(mesures-observation-cholesterol-hdl)
* result[total-cholesterol] only Reference(mesures-observation-cholesterol-total)
* result[trigly-cholesterol] only Reference(mesures-observation-cholesterol-trigly)
