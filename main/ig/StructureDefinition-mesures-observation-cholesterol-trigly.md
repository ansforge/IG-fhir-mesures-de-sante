# Cholestérol - triglycerides - Guide d'implémentation FHIR - Mesures de santé v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cholestérol - triglycerides**

## Resource Profile: Cholestérol - triglycerides 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-trigly | *Version*:3.2.0 |
| Active as of 2026-05-06 | *Computable Name*:MesObservationCholesterolTrigly |

 
Profil biologie de la ressource Observation pour définir le cholestérol triglycerides 

**Utilisations:**

* Utilise ce/t/te Profil: [Bundle d'alimentation des mesures de biologie](StructureDefinition-mesures-bundle-flux-alimentation-biologie.md)
* Référence ce Profil: [DiagnosticReport mesures biologie](StructureDefinition-mesures-diagnostic-report.md)
* Exemples pour ce/t/te Profil: [Observation/645f7341-715f-44fb-87e9-93f2e7d125a5](Observation-645f7341-715f-44fb-87e9-93f2e7d125a5.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-observation-cholesterol-trigly)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-observation-cholesterol-trigly.csv), [Excel](StructureDefinition-mesures-observation-cholesterol-trigly.xlsx), [Schematron](StructureDefinition-mesures-observation-cholesterol-trigly.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-observation-cholesterol-trigly",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-trigly",
  "version" : "3.2.0",
  "name" : "MesObservationCholesterolTrigly",
  "title" : "Cholestérol - triglycerides",
  "status" : "active",
  "date" : "2026-05-06T11:42:59+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil biologie de la ressource Observation pour définir le cholestérol triglycerides",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation.meta.source",
      "path" : "Observation.meta.source",
      "short" : "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:supportingInfo",
      "path" : "Observation.extension",
      "sliceName" : "supportingInfo",
      "definition" : "Autres ressources pertinentes *du dossier patient*",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"]
      }]
    },
    {
      "id" : "Observation.extension:MesReasonForMeasurement",
      "path" : "Observation.extension",
      "sliceName" : "MesReasonForMeasurement",
      "short" : "Motif de la mesure",
      "definition" : "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, hypercholestérolémie, risque cardiovasculaire, suivi, ...)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement"]
      }]
    },
    {
      "id" : "Observation.extension:mes-original-data",
      "path" : "Observation.extension",
      "sliceName" : "mes-original-data",
      "short" : "Valeur d'origine de la donnée. Cette extension est présente uniquement si le résultat contenu dans Observation.value provient d'une conversion (par ex. g/L converti en mmol/L)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data"]
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2571-8",
          "display" : "Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CareTeam",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "min" : 1,
      "patternString" : "mmol/L"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "min" : 1,
      "patternCode" : "mmol/L"
    },
    {
      "id" : "Observation.dataAbsentReason.coding.system",
      "path" : "Observation.dataAbsentReason.coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.dataAbsentReason.coding.code",
      "path" : "Observation.dataAbsentReason.coding.code",
      "min" : 1
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/1.2.250.1.213.1.1.5.789"
      }
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "short" : "Associer la mesure à l'intervalle de référence est fortement recommandé pour interpréter le résultat par rapport à la norme, qui peut varier selon de nombreux critères : la méthode d'analyse, l'age, le sexe, ...",
      "max" : "1",
      "constraint" : [{
        "key" : "mes-ir",
        "severity" : "error",
        "human" : "L'intervalle de référence est obligatoire dans le cas où la donnée provient d'un compte rendu de biologie.",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-trigly"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.type",
      "path" : "Observation.referenceRange.type",
      "short" : "Le type de référence permet d'indiquer s'il s'agit d'un intervalle de réfence ou d'un objectif cible."
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "max" : "0"
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "max" : "0"
    }]
  }
}

```
