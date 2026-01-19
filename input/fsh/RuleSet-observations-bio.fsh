RuleSet: ObservationResultsBiologyMesures

* insert ObservationResultsMesures

* extension contains
    mesures-origin-of-data named MesOriginOfData 0..1

* extension[mesures-origin-of-data] ^short = "Valeur d'origine de la donnée. Cette extension est présente uniquement si le résultat contenu dans Observation.value provient d'une conversion (par ex. g/L converti en mmol/L)"


* method from $jdv-technique-biologie-cisis (extensible)