@ECHO OFF

rem java -jar validator_cli.jar output/Patient-ExamplefrPatient001.json -version 4.0 -profile Patient
@REM ECHO 3. Third example shows how to validate against a profile in an implementation guide:
@REM ECHO a. get an example to validate
@REM wget http://hl7.org/fhir/observation-example-heart-rate.xml -O obs-ex.xml

@REM ECHO b. validate it. note that you have to tell the validator where to get the implementation guide information
rem java -jar validator_cli.jar output\Observation-ExampleMesFrObservationBodyWeight001.json -version 4.0 -ig C:\Users\adml_nar\Documents\GitHub\MesuresDeSante\FIG_ans-ig-mesures\output -profile http://interop.esante.gouv.fr/fhir/mesures/StructureDefinition/mes-fr-observation-body-weight
rem java -jar validator_cli.jar output\Observation-ExampleMesFrObservationBodyHeight001.json -version 4.0 -ig C:\Users\adml_nar\Documents\GitHub\MesuresDeSante\FIG_ans-ig-mesures\output -profile http://interop.esante.gouv.fr/fhir/mesures/StructureDefinition/mes-fr-observation-bodyheight
 java -jar validator_cli.jar output\Observation-ExampleMesFrObservationBmi001.json -version 4.0 -ig C:\Users\adml_nar\Documents\GitHub\MesuresDeSante\FIG_ans-ig-mesures\output -profile http://interop.esante.gouv.fr/fhir/mesures/StructureDefinition/mes-fr-observation-bmi
 java -jar validator_cli.jar output\Observation-ExampleMesFrObservationBodyTemperature001.json -version 4.0 -ig C:\Users\adml_nar\Documents\GitHub\MesuresDeSante\FIG_ans-ig-mesures\output -profile http://interop.esante.gouv.fr/fhir/mesures/StructureDefinition/mes-fr-observation-body-temperature

java -jar validator_cli.jar output\Observation-ExampleMesFrObservationBP001.json -version 4.0 -ig C:\Users\adml_nar\Documents\GitHub\MesuresDeSante\FIG_ans-ig-mesures\output -profile http://interop.esante.gouv.fr/ci-sis/fhir/mesures/StructureDefinition/mes-fr-observation-bp


ECHO Press Any Key to Close
pause