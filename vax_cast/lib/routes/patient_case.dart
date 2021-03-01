import 'dart:convert';
import 'dart:io';

Future<dynamic> patientCase(String version, String id) async {
  var file = await File('./lib/ImmDS/$version/individual_cases/$id.json')
      .readAsString();

  return jsonDecode(file);
}

Future<dynamic> patientResponse(String version, String id) async {
  var file = await File('./lib/ImmDS/$version/individual_responses/$id.json')
      .readAsString();

  return jsonDecode(file);
}

Future<dynamic> fullPatient(String version, String id) async {
  var file =
      await File('./lib/ImmDS/$version/full_cases/$id.json').readAsString();

  return jsonDecode(file);
}
