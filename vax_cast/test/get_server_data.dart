import 'dart:convert';
import 'package:http/http.dart';

import 'package:fhir/r4.dart';

String server = 'http://127.0.0.1:3000/patient/r4';

Future<List<String>> getPatientList() async {
  var patientListBundle =
      Bundle.fromJson(json.decode((await get('$server/all')).body));
  var patientList = <String>[];
  List_ fhirList = patientListBundle.entry[0].resource;
  fhirList.entry.forEach((entry) {
    var patientId = entry.item.reference.toString().split('/')[1];
    patientList.add(patientId);
  });
  return patientList;
}

Future<Bundle> GetTestCase(String patientId) async =>
    Bundle.fromJson(json.decode((await get('$server/$patientId/case')).body));

Future<Bundle> GetCaseResponse(String patientId) async => Bundle.fromJson(
    json.decode((await get('$server/$patientId/response')).body));

Future<Bundle> GetFullCase(String patientId) async =>
    Bundle.fromJson(json.decode((await get('$server/$patientId/full')).body));
