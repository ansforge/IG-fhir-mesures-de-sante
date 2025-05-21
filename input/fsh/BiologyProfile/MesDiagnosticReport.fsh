
Profile: MesDiagnosticReport
Parent: DiagnosticReport
Id: mesures-diagnostic-report
Title: "DiagnosticReport mesures biologie"
Description: "Profil biologie de la ressource DiagnosticReport pour définir un rapport de biologie"

* code = http://loinc.org#11502-2 "Compte rendu du laboratoire [Recherche] Patient ; Document"

* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open

* result contains ldl-cholesterol 0..1 MS and hdl-cholesterol 0..1 MS and total-cholesterol 0..1 MS and trigly-cholesterol 0..1 MS and cholesterol-ratio 0..1 MS and cholesterol-aspect 0..1 MS and glycemie 0..1 MS

* result[ldl-cholesterol] only Reference(mesures-observation-cholesterol-ldl)
* result[hdl-cholesterol] only Reference(mesures-observation-cholesterol-hdl)
* result[total-cholesterol] only Reference(mesures-observation-cholesterol-total)
* result[cholesterol-ratio] only Reference(mesures-observation-cholesterol-ratio)
* result[cholesterol-aspect] only Reference(mesures-observation-cholesterol-aspect)


* result[glycemie] only Reference(mesures-observation-glucose)


Invariant:   mes-ir
Description: "L'intervalle de référence est obligatoire dans le cas où la donnée provient d'un compte rendu de biologie."
* severity = #error