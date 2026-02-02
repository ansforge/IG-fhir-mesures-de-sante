# Pression Artérielle - Guide d'implémentation FHIR - Mesures de santé v3.2.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pression Artérielle**

## Resource Profile: Pression Artérielle 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bp | *Version*:3.2.0-ballot |
| Active as of 2026-02-02 | *Computable Name*:MesFrObservationBp |

 
Profil de la ressource Observation pour définir une Pression Artérielle (acronyme : PA ou BP) 

**Utilisations:**

* Utiliser ce Profil: [Bundle d'alimentation](StructureDefinition-mesures-bundle-flux-alimentation.md)
* Exemples pour ce Profil: [Observation/example-mes-fr-observation-bp-001](Observation-example-mes-fr-observation-bp-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.mesures|current/StructureDefinition/mesures-fr-observation-bp)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mesures-fr-observation-bp.csv), [Excel](StructureDefinition-mesures-fr-observation-bp.xlsx), [Schematron](StructureDefinition-mesures-fr-observation-bp.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mesures-fr-observation-bp",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-fr-observation-bp",
  "version" : "3.2.0-ballot",
  "name" : "MesFrObservationBp",
  "title" : "Pression Artérielle",
  "status" : "active",
  "date" : "2026-02-02T08:09:27+00:00",
  "publisher" : "ANS",
  "contact" : [
    {
      "name" : "ANS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil de la ressource Observation pour définir une Pression Artérielle (acronyme : PA ou BP)",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-bp",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.meta.source",
        "path" : "Observation.meta.source",
        "short" : "Uri identifiant les systèmes tiers ayant envoyé la ressource. L’uri est sous la forme d’une oid : « urn:oid:xx.xx.xx »"
      },
      {
        "id" : "Observation.extension:supportingInfo",
        "path" : "Observation.extension",
        "sliceName" : "supportingInfo",
        "definition" : "Autres ressources pertinentes *du dossier patient*"
      },
      {
        "id" : "Observation.extension:MesReasonForMeasurement",
        "path" : "Observation.extension",
        "sliceName" : "MesReasonForMeasurement",
        "short" : "Motif de la mesure",
        "definition" : "Motif de la mesure\r\nTexte libre (ex. diabète, surpoids, hypercholestérolémie, risque cardiovasculaire, suivi, ...)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:MesMomentOfMeasurement",
        "path" : "Observation.extension",
        "sliceName" : "MesMomentOfMeasurement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-moment-of-measurement"
            ]
          }
        ]
      },
      {
        "id" : "Observation.category:VSCat",
        "path" : "Observation.category",
        "sliceName" : "VSCat"
      },
      {
        "id" : "Observation.category:VSCat.coding.display",
        "path" : "Observation.category.coding.display",
        "patternString" : "vital-signs"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/ValueSet/observation-interpretation"
        }
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "binding" : {
          "strength" : "required",
          "description" : "https://mos.esante.gouv.fr/NOS/JDV_J149-BodySiteBP-ENS/FHIR/JDV-J149-BodySiteBP-ENS",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J149-BodySiteBP-ENS/FHIR/JDV-J149-BodySiteBP-ENS"
        }
      },
      {
        "id" : "Observation.bodySite.coding.system",
        "path" : "Observation.bodySite.coding.system",
        "min" : 1
      },
      {
        "id" : "Observation.bodySite.coding.code",
        "path" : "Observation.bodySite.coding.code",
        "min" : 1
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J150-MethodBP-ENS/FHIR/JDV-J150-MethodBP-ENS"
        }
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "Dispositif utilisé pour récolter l'information. Ce dispositif peut être l'application permettant de renseigner la valeur. \r\nSi la mesure a été faite par un objet connecté (Profil PhdDevice), cette référence est obligatoire",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
