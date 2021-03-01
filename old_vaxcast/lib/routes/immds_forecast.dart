import 'dart:io';

import 'package:fhir/fhir_r4.dart';
import 'package:vax_cast/export.dart';

Future<Map<String, dynamic>> immdsForecast(
    Map<String, dynamic> req, HttpHeaders headers) async {
  print(req);
  print(headers);
  if (req == null) {
    return operationOutcome('No Content-Type specified').toJson();
  } else if (headers.contentType.toString() != 'application/json' &&
      headers.contentType.toString() != 'application/fhir+json' &&
      headers.contentType.toString() != 'application/json+fhir') {
    return operationOutcome(
            'This server does not support the Content-Type specified: ${req['Content-Type']}')
        .toJson();
  } else {
    Parameters newParameters;
    try {
      newParameters = Parameters.fromJson(req);
      print(newParameters.toJson());
    } catch (e) {
      return operationOutcome(e.toString()).toJson();
    }

    if (newParameters.parameter.isEmpty) {
      return operationOutcome('No parameters have been passed with this query')
          .toJson();
    }
    Patient newPatient;
    try {
      newPatient = newParameters.parameter
          .firstWhere(
              (parameter) => parameter?.resource?.resourceType == 'Patient')
          .resource;
    } catch (e) {
      return operationOutcome('Patient Error: ${e.toString()}').toJson();
    }
    List<Immunization> newImmunizations;
    try {
      newImmunizations = createVaccineList(newParameters);
    } catch (e) {
      return operationOutcome('Immunization Error: ${e.toString()}').toJson();
    }

    var assessmentDate = recordAssessmentDate(newParameters);
    var errorMessage = patientError(newPatient);
    if (errorMessage.isNotEmpty) return operationOutcome(errorMessage).toJson();

    return (await VaxCast()
        .forecastR4(newPatient, newImmunizations, assessmentDate));
  }
}

OperationOutcome operationOutcome(String message) => OperationOutcome(
      resourceType: 'OperationOutcome',
      issue: [
        OperationOutcomeIssue(
            severity: OperationOutcomeIssueSeverity.error,
            code: OperationOutcomeIssueCode.processing,
            diagnostics: message),
      ],
    );

String patientError(Patient patient) {
  String errorMessage = '';
  if (patient.birthDate == null) {
    errorMessage += ' Patient does not have a birthdate.';
  }
  if (patient?.name?.isEmpty ?? true) {
    errorMessage += ' No name is listed for the patient.';
  } else if ((patient?.name[0]?.family ?? '') == '' &&
      (patient?.name[0]?.given?.isEmpty ?? true)) {
    errorMessage += ' No first or given name is listed for the patient.';
  }
  if (patient?.contact?.isEmpty ?? true) {
    errorMessage += ' No contact is listed for the Patient.';
  } else if (patient?.contact[0]?.name == null &&
      patient?.contact[0]?.telecom == null &&
      patient?.contact[0]?.address == null &&
      patient?.contact[0]?.organization == null) {
    errorMessage += ' There are no details for the Patient\'s Contact.';
  }

  return errorMessage;
}

List<Immunization> createVaccineList(Parameters input) {
  List<Immunization> vaccines = [];
  input.parameter.forEach((parameter) {
    if (parameter?.resource?.resourceType == 'Immunization') {
      vaccines.add(parameter.resource);
    }
  });
  return vaccines;
}

String recordAssessmentDate(Parameters input) {
  ParametersParameter assessmentDate = input.parameter.firstWhere(
      (parameter) => parameter.name == 'assessmentDate',
      orElse: () => null);
  return assessmentDate != null
      ? assessmentDate?.valueDate?.toString()
      : DateTime.now().toIso8601String();
}
