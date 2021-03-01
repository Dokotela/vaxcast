import 'dart:convert';
import 'dart:io';

import 'package:fhir/r4.dart';
import 'package:intl/intl.dart';

import 'get_evaluation.dart';
import 'get_immunization.dart';
import 'get_immunization_recommendation.dart';
import 'get_patient.dart';

void processLines(List<String> lines) async {
  //complete bundles containing all cases
  var patientBundle = defaultBundle();
  var immunizationBundle = defaultBundle();
  var evaluationBundle = defaultBundle();
  var recommendationBundle = defaultBundle();

  for (var skip = 1; skip < lines.length; skip++) {
    List<String> row = lines[skip].split('\t'); // split by tab

    if (row[2] != 'DOB') {
      var caseBundle = defaultBundle();
      var responseBundle = defaultBundle();
      var fullBundle = defaultBundle();

      //get the patient information
      patientBundle.entry.add(patientEntry(row));

      var caseParameters = patientParameters(row);
      var responseParameters = defaultParameters();

      var doseNum = 0;
      //run through the doses of the vaccines given
      for (var i = 8; i < 45; i += 6) {
        //if there's no date given for the vaccine, ignore that vaccine
        if (row[i] != '') {
          doseNum += 1;
          immunizationBundle.entry.add(immEntry(row, i, doseNum));
          caseParameters.parameter.add(immParameters(row, i, doseNum));
          evaluationBundle.entry.add(evalEntry(row, i, doseNum));
          responseParameters.parameter.add(evalParameters(row, i, doseNum));
        }
      }

      caseBundle.entry.add(caseEntry(caseParameters));
      fullBundle.entry.add(caseEntry(caseParameters));

      recommendationBundle.entry.add(recEntry(row));
      responseParameters.parameter.add(respParameters(row));
      responseBundle.entry.add(caseEntry(responseParameters));

      await File('./lib/ImmDS/r4/individual_cases/${row[0]}.json')
          .writeAsString(jsonEncode(caseBundle));
      await File('./lib/ImmDS/r4/individual_responses/${row[0]}.json')
          .writeAsString(jsonEncode(responseBundle));
      caseBundle.entry.add(caseEntry(responseParameters));
      await File('./lib/ImmDS/r4/full_cases/${row[0]}.json')
          .writeAsString(jsonEncode(caseBundle));
    }
  }
  await File('./lib/ImmDS/r4/complete_lists/HealthyCasesPatient.json')
      .writeAsString(jsonEncode(patientBundle));
  await File('./lib/ImmDS/r4/complete_lists/HealthyCasesImmunization.json')
      .writeAsString(jsonEncode(immunizationBundle));
  await File('./lib/ImmDS/r4/complete_lists/HealthyCasesEvaluation.json')
      .writeAsString(jsonEncode(evaluationBundle));
  await File('./lib/ImmDS/r4/complete_lists/HealthyCasesRecommendation.json')
      .writeAsString(jsonEncode(recommendationBundle));
}

Bundle defaultBundle() =>
    Bundle(resourceType: 'Bundle', entry: [], type: BundleType.searchset);

Parameters defaultParameters() =>
    Parameters(resourceType: 'Parameters', parameter: []);

BundleEntry patientEntry(List<String> row) => BundleEntry(
      resource: getPatient(row),
      request: BundleRequest(
        method: BundleRequestMethod.put,
        url: FhirUri('Patient'),
      ),
    );

Parameters patientParameters(List<String> row) => Parameters(
      resourceType: 'Parameters',
      id: Id('ImmDS-${row[0]}'),
      parameter: [
        ParametersParameter(
          name: 'assessentDate',
          valueDate: Date(
            DateFormat('MM/dd/yyyy').parse(row[55]).toString().substring(0, 10),
          ),
        ),
        ParametersParameter(
          name: 'patient',
          resource: getPatient(row),
        )
      ],
    );

BundleEntry immEntry(List<String> row, int i, int doseNum) => BundleEntry(
      resource: getImmunization(row, i, doseNum),
      request: BundleRequest(
        method: BundleRequestMethod.put,
        url: FhirUri('Immunization'),
      ),
    );

BundleEntry evalEntry(List<String> row, int i, int doseNum) => BundleEntry(
      resource: getEvaluation(row, i, doseNum),
      request: BundleRequest(
        method: BundleRequestMethod.put,
        url: FhirUri('ImmunizationEvaluation'),
      ),
    );

ParametersParameter immParameters(List<String> row, int i, int doseNum) =>
    ParametersParameter(
      name: 'immunization',
      resource: getImmunization(row, i, doseNum),
    );

ParametersParameter evalParameters(List<String> row, int i, int doseNum) =>
    ParametersParameter(
      name: 'evaluation',
      resource: getEvaluation(row, i, doseNum),
    );

BundleEntry caseEntry(Parameters parameters) => BundleEntry(
      resource: parameters,
      request: BundleRequest(
        method: BundleRequestMethod.put,
        url: FhirUri('Parameters'),
      ),
    );

BundleEntry recEntry(List<String> row) => BundleEntry(
      resource: getImmunizationRecommendation(row),
      request: BundleRequest(
          method: BundleRequestMethod.put,
          url: FhirUri('ImmunizationRecommendation')),
    );

ParametersParameter respParameters(List<String> row) => ParametersParameter(
      name: 'recommendation',
      resource: getImmunizationRecommendation(row),
    );
