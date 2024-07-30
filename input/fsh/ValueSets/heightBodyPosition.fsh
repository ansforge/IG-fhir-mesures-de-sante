ValueSet: MesValueSetHeightBodyPosition
Id: mes-vs-height-body-position
Title: "Mes ValueSet BodyPosition"
Description: "ValueSet Body Position"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

* include codes from system http://snomed.info/sct where concept is-a #10904000
* include codes from system http://snomed.info/sct where concept is-a #102538003

// SVS profile
* ^experimental = false