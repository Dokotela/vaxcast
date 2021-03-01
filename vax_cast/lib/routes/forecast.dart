import 'package:fhir/r4.dart' as r4;

import '../cast/vax_cast.dart';

Future<dynamic> forecast(String version, Map<String, dynamic> bundle) {
  var vers = version == 'r4'
      ? FHIR_V.r4
      : version == 'stu3'
          ? FHIR_V.stu3
          : FHIR_V.dstu2;
  r4.Bundle newBundle = r4.Bundle.fromJson(bundle);
  r4.Parameters newParameters = newBundle.entry[0].resource;
  String assessmentDate = newParameters.parameter[0].valueDate.toString();
  r4.Patient newPatient =
      r4.Patient.fromJson(newParameters.parameter[1].toJson());
  List<r4.Immunization> immList = <r4.Immunization>[];
  for (var i = 2; i < newParameters.parameter.length; i++) {
    immList.add(r4.Immunization.fromJson(newParameters.parameter[i].toJson()));
  }
  // return Forecast()
  //     .castFhir(vers, false, newPatient, immList, null, null, assessmentDate);

  //     FHIR_V version, patient, immunizations, conditions,
  //     allergyIntolerance, String assessmentDate
}

// Future<dynamic> randomForecast(String version) async {
//   var testCase = completeTestCases[Random().nextInt(801)];
//   var file = await File('./lib/ImmDS/$version/individual_cases/$testCase.json')
//       .readAsString();
//   var vers = version == 'r4'
//       ? FHIR_V.r4
//       : version == 'stu3' ? FHIR_V.stu3 : FHIR_V.dstu2;
//   r4.Bundle newBundle = r4.Bundle.fromJson(jsonDecode(file));
//   r4.Parameters newParameters = newBundle.entry[0].resource;

//   String assessmentDate = newParameters.parameter[0].valueDate.toString();
//   r4.Patient newPatient =
//       r4.Patient.fromJson(newParameters.parameter[1].resource.toJson());
//   List<r4.Immunization> immList = <r4.Immunization>[];
//   for (var i = 2; i < newParameters.parameter.length; i++) {
//     immList.add(
//         r4.Immunization.fromJson(newParameters.parameter[i].resource.toJson()));
//   }
//   return await Forecast().cast(
//       vers, false, newPatient, immList, <r4.Condition>[], null, assessmentDate);
// }
