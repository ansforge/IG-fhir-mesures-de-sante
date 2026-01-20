RuleSet: ObservationResultsBiologyMesures

* insert ObservationResultsMesures

* extension contains
    mesures-original-value named mes-original-value 0..1

* extension[mes-original-value] ^short = "Valeur d'origine de la donnée. Cette extension est présente uniquement si le résultat contenu dans Observation.value provient d'une conversion (par ex. g/L converti en mmol/L)"

* method MS
* method from $jdv-technique-biologie-cisis (extensible)

* referenceRange ..1 MS
* referenceRange ^short = "Associer la mesure à l'intervalle de référence est fortement recommandé pour interpréter le résultat par rapport à la norme, qui peut varier selon de nombreux critères : la méthode d'analyse, l'age, le sexe, ..."