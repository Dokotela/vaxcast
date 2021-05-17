// import 'dart:convert';
// import 'dart:io';

// import 'package:fhir/r4.dart';

// void main() {
//   final file = File('./documentation/testCases/healthy.csv');
//   file.readAsLines().then(processLines);
// }

// void processLines(List<String> lines) async {
//   var immunization;
//   var patientBundle = Bundle(resourceType: 'Bundle', entry: []);
//   var immunizationBundle = Bundle(resourceType: 'Bundle', entry: []);
//   var evaluationBundle = Bundle(resourceType: 'Bundle', entry: []);
//   var recommendationBundle = Bundle(resourceType: 'Bundle', entry: []);

//   for (var skip = 1; skip < lines.length; skip++) {
//     List row = lines[skip].split('\t'); // split by tab
//     if (row[2] != 'DOB') {
//       //get the patient information
//       patientBundle.entry.add(BundleEntry(
//         resource: getPatient(row),
//         request: BundleRequest(
//           method: BundleRequestMethod.put,
//           url: FhirUri('Patient'),
//         ),
//       ));

//       //run through the doses of the vaccines given
//       for (var i = 8; i < 45; i += 6) {
//         //if there's no date given for the vaccine, ignore that vaccine
//         var doseNum = 0;
//         if (row[i] != '') {
//           doseNum += 1;
//           immunization = getImmunization(row, i, doseNum);
//           immunizationBundle.entry.add(
//             BundleEntry(
//               resource: immunization,
//               request: BundleRequest(
//                 method: BundleRequestMethod.put,
//                 url: FhirUri('Immunization'),
//               ),
//             ),
//           );
//         }
//       }
//       recommendationBundle.entry.add(BundleEntry(
//           resource: getImmunizationRecommendation(row),
//           request: BundleRequest(
//               method: BundleRequestMethod.put,
//               url: FhirUri('ImmunizationRecommendation'))));
//     }
//   }
//   await File('./lib/infrastructure/testCases/r4/HealthyCasesPatient.json')
//       .writeAsString(jsonEncode(patientBundle));
//   await File('./lib/infrastructure/testCases/r4/HealthyCasesImmunization.json')
//       .writeAsString(jsonEncode(immunizationBundle));
//   await File(
//           './lib/infrastructure/testCases/r4/HealthyCasesRecommendation.json')
//       .writeAsString(jsonEncode(recommendationBundle));
// }

// ImmunizationRecommendation getImmunizationRecommendation(List<String> row) {
//   return (ImmunizationRecommendation(
//     resourceType: 'ImmunizationRecommendation',
//     //reference the patient
//     patient: Reference(reference: 'Patient/${row[0]}'),
//     //the date of the recommendation
//     date: FhirDateTime(getDateTime(row[55]).toString()),
//     recommendation: [
//       ImmunizationRecommendationRecommendation(
//           forecastStatus: CodeableConcept(
//             coding: [
//               Coding(
//                 system: FhirUri(
//                     "http://hl7.org/fhir/us/ImmunizationFHIRDS/CodeSystem/ForecastStatus"),
//                 code: Code(seriesStatusCode(row[7])),
//                 display: seriesStatusDisplay(row[7]),
//               ),
//             ],
//           ),
//           //fill in dose number of the recommendation
//           doseNumberPositiveInt: row[50] != '-' && row[50] != ''
//               ? PositiveInt(int.parse(row[50]))
//               : null,
//           dateCriterion: [
//             //include the date criteria from the test cases
//             ImmunizationRecommendationDateCriterion(
//                 code: CodeableConcept(text: 'Earliest_Date'),
//                 value: row[51] == '' || row[51] == null
//                     ? FhirDateTime(VaxDate.max().toString())
//                     : FhirDateTime(getDateTime(row[51]).toString())),
//             ImmunizationRecommendationDateCriterion(
//                 code: CodeableConcept(text: 'Recommended_Date'),
//                 value: row[52] == '' || row[52] == null
//                     ? FhirDateTime(VaxDate.max().toString())
//                     : FhirDateTime(getDateTime(row[52]).toString())),
//             ImmunizationRecommendationDateCriterion(
//                 code: CodeableConcept(text: 'Past_Due_Date'),
//                 value: row[53] == '' || row[53] == null
//                     ? FhirDateTime(VaxDate.max().toString())
//                     : FhirDateTime(getDateTime(row[53]).toString())),
//           ],
//           series: row[54],
//           description: 'Evaluation_Test_Type: ${row[56]}'
//               'Forecast_Test_Type: Evaluation${row[59]}'),
//     ],
//   ));
// }

// Immunization getImmunization(List<String> row, int i, int doseNum) {
//   if (row[i] != null && row[i] != '') {
//     var immunization = Immunization(
//       id: Id('${row[0]}-dose$doseNum'),
//       resourceType: 'Immunization',
//       patient: Reference(reference: 'Patient/${row[0]}'),
//       occurrenceDateTime: FhirDateTime(getDateTime(row[i]).toString()),
//       status: Code('completed'),
//       vaccineCode: CodeableConcept(
//         //what is the vaccine called
//         coding: [
//           //record cvx code
//           Coding(
//             system: FhirUri('http://hl7.org/fhir/sid/cvx'),
//             code: Code(row[i + 2]),
//             display: row[i + 1],
//           ),
//         ],
//       ),
//     );
//     if (row[i + 3] != null && row[i + 3] != '') {
//       immunization.vaccineCode.coding.add(
//         //I think this is the code system URL for MVX codes
//         Coding(
//           system: FhirUri('http://hl7.org/fhir/v2/0227'),
//           code: Code(row[i + 3]),
//           display: row[i + 1],
//         ),
//       );
//     }
//     return immunization;
//   } else {
//     return null;
//   }
// }

// DateTime getDateTime(String date) {
//   if (date == '' || date == null) {
//     return (null);
//   } else {
//     date = date.replaceAll('"', '');
//     var dated = date.split('/');
//     var year = int.parse(dated[2]);
//     var month = int.parse(dated[0]);
//     var day = int.parse(dated[1]);
//     return (DateTime(year, month, day));
//   }
// }

// Patient getPatient(List<String> row) {
//   var patient = Patient(
//     resourceType: 'Patient',
//     id: Id(row[0]),
//     birthDate: Date(getDateTime(row[2]).toString()),
//     gender: row[3] == 'M' ? PatientGender.male : PatientGender.female,
//     //name text contains description of case
//     name: [
//       HumanName(
//         text:
//             '${row[1]}\nEvaluation_Test_Type: ${row[56]}\nGeneral_Description: ${row[62]}',
//       ),
//     ],
//   );

//   return patient;
// }

// String seriesStatusCode(String status) {
//   switch (status.toLowerCase()) {
//     case 'complete':
//       return 'complete';
//     case 'not complete':
//       return 'notComplete';
//     case 'not recommended':
//       return 'notRecommended';
//     case 'immune':
//       return 'immune';
//     case 'contraindicated':
//       return 'contraindicated';
//     case 'aged out':
//       return 'agedOut';
//     case 'conditional':
//       return 'conditional';
//     default:
//       return 'notComplete';
//   }
// }

// String seriesStatusDisplay(String status) {
//   switch (status.toLowerCase()) {
//     case 'complete':
//       return 'Complete';
//     case 'not complete':
//       return 'Not Complete';
//     case 'not recommended':
//       return 'Not Recommended';
//     case 'immune':
//       return 'Immune';
//     case 'contraindicated':
//       return 'Contraindicated';
//     case 'aged out':
//       return 'Aged Out';
//     case 'conditional':
//       return 'Conditional';
//     default:
//       return 'Not Complete';
//   }
// }
