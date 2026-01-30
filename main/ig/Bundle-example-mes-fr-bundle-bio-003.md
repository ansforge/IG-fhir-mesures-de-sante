# Exemple de bundle FHIR pour un bilan lipidique et une glycémie - Guide d'implémentation FHIR - Mesures de santé v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemple de bundle FHIR pour un bilan lipidique et une glycémie**

## Example Bundle: Exemple de bundle FHIR pour un bilan lipidique et une glycémie



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "example-mes-fr-bundle-bio-003",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-bundle-flux-alimentation-biologie"
    ]
  },
  "type" : "transaction",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:c727171b-3dcc-45e9-aa9f-31498d962e58",
      "resource" : {
        "resourceType" : "DiagnosticReport",
        "id" : "example-mes-fr-diagnostic-report-cholesterol-003",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-diagnostic-report"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_example-mes-fr-diagnostic-report-cholesterol-003\"> </a><p class=\"res-header-id\"><b>Narratif généré : RapportDiagnostique example-mes-fr-diagnostic-report-cholesterol-003</b></p><a name=\"example-mes-fr-diagnostic-report-cholesterol-003\"> </a><a name=\"hcexample-mes-fr-diagnostic-report-cholesterol-003\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-mesures-diagnostic-report.html\">DiagnosticReport mesures biologie</a></p></div><h2><span title=\"Codes :{http://loinc.org 11502-2}\">Compte rendu du laboratoire [Recherche] Patient ; Document</span> </h2><table class=\"grid\"/><p><b>Détails du rapport</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Valeur</b></td><td><b>Plage de référence</b></td><td><b>Drapeaux</b></td><td><b>When For</b></td></tr><tr><td><a href=\"Observation-b7a049e3-c07e-4e1c-95a5-909da37f75ce.html\"><span title=\"Codes :{http://loinc.org 2093-3}\">Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique</span></a></td><td>0.4 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>2.8 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span> - 11.1 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>Final</td><td>2024-10-15</td></tr><tr><td><a href=\"Observation-7b166d82-27b6-4878-9765-3fe101618edf.html\"><span title=\"Codes :{http://loinc.org 2085-9}\">Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique</span></a></td><td>2.8 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>&gt;3.1 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>Final</td><td>2024-10-15</td></tr><tr><td><a href=\"Observation-9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e.html\"><span title=\"Codes :{http://loinc.org 2089-1}\">Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique</span></a></td><td>7.8 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>&lt;2.6 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>Final</td><td>2024-10-15</td></tr><tr><td><a href=\"Observation-645f7341-715f-44fb-87e9-93f2e7d125a5.html\"><span title=\"Codes :{http://loinc.org 2571-8}\">Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique</span></a></td><td>5.6 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>2.8 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span> - 21.1 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>Final</td><td>2024-10-15</td></tr><tr><td><a href=\"Observation-8057b6ec-1417-4f1f-9a00-b0c46e7e71b1.html\"><span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc 4548-4}\">Hémoglobine A1c %</span></a></td><td>92 milligramme par décilitre<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg/dL = 'mg/dL')</span></td><td>70 milligramme par décilitre<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg/dL = 'mg/dL')</span> - 100 milligramme par décilitre<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg/dL = 'mg/dL')</span></td><td>Final</td><td>2022-11-06</td></tr></table></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11502-2",
              "display" : "Compte rendu du laboratoire [Recherche] Patient ; Document"
            }
          ]
        },
        "result" : [
          {
            "reference" : "Observation/b7a049e3-c07e-4e1c-95a5-909da37f75ce"
          },
          {
            "reference" : "Observation/7b166d82-27b6-4878-9765-3fe101618edf"
          },
          {
            "reference" : "Observation/9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e"
          },
          {
            "reference" : "Observation/645f7341-715f-44fb-87e9-93f2e7d125a5"
          },
          {
            "reference" : "Observation/8057b6ec-1417-4f1f-9a00-b0c46e7e71b1"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "DiagnosticReport"
      }
    },
    {
      "fullUrl" : "urn:uuid:9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-ldl"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e\"> </a><p class=\"res-header-id\"><b>Narratif généré : Observation 9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e</b></p><a name=\"9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e\"> </a><a name=\"hc9bd2b013-27b0-4283-aa9e-fe7a5e0c6f1e\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-mesures-observation-cholesterol-ldl.html\">Cholestérol - LDL</a></p></div><blockquote><p><b>Valeur originale</b></p><ul><li>has-been-converted: true</li><li>original-code: <span title=\"Codes :{http://loinc.org 2089-1}\">Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique</span></li><li>original-value: 3.02 g/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMg/L = 'g/L')</span></li></ul></blockquote><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes :{http://loinc.org 2089-1}\">Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique</span></p><p><b>subject</b>: <a href=\"Patient-example-mes-fr-patient-001.html\">Pierre Durand</a></p><p><b>effective</b>: 2024-10-15</p><p><b>value</b>: 7.8 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></p><p><b>method</b>: <span title=\"Codes :{https://smt.esante.gouv.fr/terminologie-tccr DEG}\">DEG</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>2.6 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "extension" : [
              {
                "url" : "has-been-converted",
                "valueBoolean" : true
              },
              {
                "url" : "original-code",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "http://loinc.org",
                      "code" : "2089-1",
                      "display" : "Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique"
                    }
                  ]
                }
              },
              {
                "url" : "original-value",
                "valueQuantity" : {
                  "value" : 3.02,
                  "unit" : "g/L",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "g/L"
                }
              }
            ],
            "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data"
          }
        ],
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2089-1",
              "display" : "Cholestérol LDL [Masse/Volume] Sérum/Plasma ; Numérique"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/example-mes-fr-patient-001",
          "type" : "Patient",
          "display" : "Pierre Durand"
        },
        "effectiveDateTime" : "2024-10-15",
        "valueQuantity" : {
          "value" : 7.8,
          "unit" : "mmol/L",
          "system" : "http://unitsofmeasure.org",
          "code" : "mmol/L"
        },
        "method" : {
          "coding" : [
            {
              "system" : "https://smt.esante.gouv.fr/terminologie-tccr",
              "code" : "DEG"
            }
          ]
        },
        "referenceRange" : [
          {
            "high" : {
              "value" : 2.6,
              "unit" : "mmol/L",
              "system" : "http://unitsofmeasure.org",
              "code" : "mmol/L"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:7b166d82-27b6-4878-9765-3fe101618edf",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "7b166d82-27b6-4878-9765-3fe101618edf",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-hdl"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_7b166d82-27b6-4878-9765-3fe101618edf\"> </a><p class=\"res-header-id\"><b>Narratif généré : Observation 7b166d82-27b6-4878-9765-3fe101618edf</b></p><a name=\"7b166d82-27b6-4878-9765-3fe101618edf\"> </a><a name=\"hc7b166d82-27b6-4878-9765-3fe101618edf\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-mesures-observation-cholesterol-hdl.html\">Cholestérol - HDL</a></p></div><blockquote><p><b>Valeur originale</b></p><ul><li>has-been-converted: true</li><li>original-code: <span title=\"Codes :{http://loinc.org 2085-9}\">Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique</span></li><li>original-value: 1.08 g/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMg/L = 'g/L')</span></li></ul></blockquote><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes :{http://loinc.org 2085-9}\">Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique</span></p><p><b>subject</b>: <a href=\"Patient-example-mes-fr-patient-001.html\">Pierre Durand</a></p><p><b>effective</b>: 2024-10-15</p><p><b>value</b>: 2.8 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></p><p><b>method</b>: <span title=\"Codes :{https://smt.esante.gouv.fr/terminologie-tccr DEG}\">DEG</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td></tr><tr><td style=\"display: none\">*</td><td>3.1 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "extension" : [
              {
                "url" : "has-been-converted",
                "valueBoolean" : true
              },
              {
                "url" : "original-code",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "http://loinc.org",
                      "code" : "2085-9",
                      "display" : "Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique"
                    }
                  ]
                }
              },
              {
                "url" : "original-value",
                "valueQuantity" : {
                  "value" : 1.08,
                  "unit" : "g/L",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "g/L"
                }
              }
            ],
            "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data"
          }
        ],
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2085-9",
              "display" : "Cholestérol HDL [Masse/Volume] Sérum/Plasma ; Numérique"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/example-mes-fr-patient-001",
          "type" : "Patient",
          "display" : "Pierre Durand"
        },
        "effectiveDateTime" : "2024-10-15",
        "valueQuantity" : {
          "value" : 2.8,
          "unit" : "mmol/L",
          "system" : "http://unitsofmeasure.org",
          "code" : "mmol/L"
        },
        "method" : {
          "coding" : [
            {
              "system" : "https://smt.esante.gouv.fr/terminologie-tccr",
              "code" : "DEG"
            }
          ]
        },
        "referenceRange" : [
          {
            "low" : {
              "value" : 3.1,
              "unit" : "mmol/L",
              "system" : "http://unitsofmeasure.org",
              "code" : "mmol/L"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:645f7341-715f-44fb-87e9-93f2e7d125a5",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "645f7341-715f-44fb-87e9-93f2e7d125a5",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-trigly"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_645f7341-715f-44fb-87e9-93f2e7d125a5\"> </a><p class=\"res-header-id\"><b>Narratif généré : Observation 645f7341-715f-44fb-87e9-93f2e7d125a5</b></p><a name=\"645f7341-715f-44fb-87e9-93f2e7d125a5\"> </a><a name=\"hc645f7341-715f-44fb-87e9-93f2e7d125a5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-mesures-observation-cholesterol-trigly.html\">Cholestérol - triglycerides</a></p></div><blockquote><p><b>Valeur originale</b></p><ul><li>has-been-converted: true</li><li>original-code: <span title=\"Codes :{http://loinc.org 2571-8}\">Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique</span></li><li>original-value: 4.9 g/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMg/L = 'g/L')</span></li></ul></blockquote><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes :{http://loinc.org 2571-8}\">Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique</span></p><p><b>subject</b>: <a href=\"Patient-example-mes-fr-patient-001.html\">Pierre Durand</a></p><p><b>effective</b>: 2024-10-15</p><p><b>value</b>: 5.6 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></p><p><b>method</b>: <span title=\"Codes :{https://smt.esante.gouv.fr/terminologie-tccr DEG}\">DEG</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>2.8 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>21.1 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "extension" : [
              {
                "url" : "has-been-converted",
                "valueBoolean" : true
              },
              {
                "url" : "original-code",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "http://loinc.org",
                      "code" : "2571-8",
                      "display" : "Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique"
                    }
                  ]
                }
              },
              {
                "url" : "original-value",
                "valueQuantity" : {
                  "value" : 4.9,
                  "unit" : "g/L",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "g/L"
                }
              }
            ],
            "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data"
          }
        ],
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2571-8",
              "display" : "Triglycérides [Masse/Volume] Sérum/Plasma ; Numérique"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/example-mes-fr-patient-001",
          "type" : "Patient",
          "display" : "Pierre Durand"
        },
        "effectiveDateTime" : "2024-10-15",
        "valueQuantity" : {
          "value" : 5.6,
          "unit" : "mmol/L",
          "system" : "http://unitsofmeasure.org",
          "code" : "mmol/L"
        },
        "method" : {
          "coding" : [
            {
              "system" : "https://smt.esante.gouv.fr/terminologie-tccr",
              "code" : "DEG"
            }
          ]
        },
        "referenceRange" : [
          {
            "low" : {
              "value" : 2.8,
              "unit" : "mmol/L",
              "system" : "http://unitsofmeasure.org",
              "code" : "mmol/L"
            },
            "high" : {
              "value" : 21.1,
              "unit" : "mmol/L",
              "system" : "http://unitsofmeasure.org",
              "code" : "mmol/L"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:b7a049e3-c07e-4e1c-95a5-909da37f75ce",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "b7a049e3-c07e-4e1c-95a5-909da37f75ce",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-cholesterol-total"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_b7a049e3-c07e-4e1c-95a5-909da37f75ce\"> </a><p class=\"res-header-id\"><b>Narratif généré : Observation b7a049e3-c07e-4e1c-95a5-909da37f75ce</b></p><a name=\"b7a049e3-c07e-4e1c-95a5-909da37f75ce\"> </a><a name=\"hcb7a049e3-c07e-4e1c-95a5-909da37f75ce\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-mesures-observation-cholesterol-total.html\">Cholestérol - total</a></p></div><blockquote><p><b>Valeur originale</b></p><ul><li>has-been-converted: true</li><li>original-code: <span title=\"Codes :{http://loinc.org 2093-3}\">Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique</span></li><li>original-value: 0.155 g/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMg/L = 'g/L')</span></li></ul></blockquote><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes :{http://loinc.org 2093-3}\">Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique</span></p><p><b>subject</b>: <a href=\"Patient-example-mes-fr-patient-001.html\">Pierre Durand</a></p><p><b>effective</b>: 2024-10-15</p><p><b>value</b>: 0.4 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></p><p><b>method</b>: <span title=\"Codes :{https://smt.esante.gouv.fr/terminologie-tccr DEG}\">DEG</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>2.8 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td><td>11.1 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmmol/L = 'mmol/L')</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "extension" : [
              {
                "url" : "has-been-converted",
                "valueBoolean" : true
              },
              {
                "url" : "original-code",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "http://loinc.org",
                      "code" : "2093-3",
                      "display" : "Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique"
                    }
                  ]
                }
              },
              {
                "url" : "original-value",
                "valueQuantity" : {
                  "value" : 0.155,
                  "unit" : "g/L",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "g/L"
                }
              }
            ],
            "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-original-data"
          }
        ],
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2093-3",
              "display" : "Cholestérol [Masse/Volume] Sérum/Plasma ; Numérique"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/example-mes-fr-patient-001",
          "type" : "Patient",
          "display" : "Pierre Durand"
        },
        "effectiveDateTime" : "2024-10-15",
        "valueQuantity" : {
          "value" : 0.4,
          "unit" : "mmol/L",
          "system" : "http://unitsofmeasure.org",
          "code" : "mmol/L"
        },
        "method" : {
          "coding" : [
            {
              "system" : "https://smt.esante.gouv.fr/terminologie-tccr",
              "code" : "DEG"
            }
          ]
        },
        "referenceRange" : [
          {
            "low" : {
              "value" : 2.8,
              "unit" : "mmol/L",
              "system" : "http://unitsofmeasure.org",
              "code" : "mmol/L"
            },
            "high" : {
              "value" : 11.1,
              "unit" : "mmol/L",
              "system" : "http://unitsofmeasure.org",
              "code" : "mmol/L"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    },
    {
      "fullUrl" : "urn:uuid:8057b6ec-1417-4f1f-9a00-b0c46e7e71b1",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "8057b6ec-1417-4f1f-9a00-b0c46e7e71b1",
        "meta" : {
          "profile" : [
            "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-observation-glucose"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_8057b6ec-1417-4f1f-9a00-b0c46e7e71b1\"> </a><p class=\"res-header-id\"><b>Narratif généré : Observation 8057b6ec-1417-4f1f-9a00-b0c46e7e71b1</b></p><a name=\"8057b6ec-1417-4f1f-9a00-b0c46e7e71b1\"> </a><a name=\"hc8057b6ec-1417-4f1f-9a00-b0c46e7e71b1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-mesures-observation-glucose.html\">Glycémie</a></p></div><p><b>Raison de la mesure</b>: Malaise du patient</p><p><b>Moment de la mesure</b>: <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc 16915-1}\">Glucose post prandial</span></p><p><b>Nombre de jours</b>: <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP GEN-275}\">7j</span></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes :{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc 4548-4}\">Hémoglobine A1c %</span></p><p><b>subject</b>: <a href=\"Patient-example-mes-fr-patient-001.html\">Pierre Durand</a></p><p><b>effective</b>: 2022-11-06</p><p><b>value</b>: 92 milligramme par décilitre<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg/dL = 'mg/dL')</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>70 milligramme par décilitre<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg/dL = 'mg/dL')</span></td><td>100 milligramme par décilitre<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg/dL = 'mg/dL')</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-reason-for-measurement",
            "valueString" : "Malaise du patient"
          },
          {
            "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-moment-of-measurement",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc",
                  "code" : "16915-1",
                  "display" : "Glucose post prandial"
                }
              ]
            }
          },
          {
            "url" : "https://interop.esante.gouv.fr/ig/fhir/mesures/StructureDefinition/mesures-number-of-days",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://mos.esante.gouv.fr/NOS/TRE_R308-TAASIP/FHIR/TRE-R308-TAASIP",
                  "code" : "GEN-275",
                  "display" : "7j"
                }
              ]
            }
          }
        ],
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_A04-Loinc/FHIR/TRE-A04-Loinc",
              "code" : "4548-4"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/example-mes-fr-patient-001",
          "type" : "Patient",
          "display" : "Pierre Durand"
        },
        "effectiveDateTime" : "2022-11-06",
        "valueQuantity" : {
          "value" : 92,
          "unit" : "milligramme par décilitre",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "referenceRange" : [
          {
            "low" : {
              "value" : 70,
              "unit" : "milligramme par décilitre",
              "system" : "http://unitsofmeasure.org",
              "code" : "mg/dL"
            },
            "high" : {
              "value" : 100,
              "unit" : "milligramme par décilitre",
              "system" : "http://unitsofmeasure.org",
              "code" : "mg/dL"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Observation"
      }
    }
  ]
}

```
