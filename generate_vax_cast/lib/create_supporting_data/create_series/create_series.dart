// import 'package:excel/excel.dart';
// import 'package:vax_cast/vax_cast.dart';

// import '../../lib/value_to_string.dart';
// import 'create_series_dose.dart';

// Series createSeries(Sheet sheet) {
//   var newSeries = Series();
//   for (var row in sheet.rows) {
//     if (row.isNotEmpty &&
//         row[0]?.value != null &&
//         row[0]!.value.toString() != '') {
//       if (row[0]!.value.toString().contains('Series Name')) {
//         newSeries =
//             newSeries.copyWith(seriesName: valueToString(row[1]!.value));
//       } else if (row[0]!.value.toString().contains('Target Disease')) {
//         newSeries = newSeries.copyWith(
//             targetDisease:
//                 targetDiseaseStringToEnum[valueToString(row[1]!.value)]);
//       } else if (row[0]!.value.toString().contains('Vaccine Group')) {
//         newSeries = newSeries.copyWith(
//             vaccineGroup:
//                 vaccineGroupNameStringToEnum[valueToString(row[1]!.value)]);
//       } else if (row[0]!.value.toString().contains('Administrative Guidance') &&
//           row[1]?.value.toString() != 'Text') {
//         if (!row[1]!.value.toString().contains('n/a')) {
//           if (newSeries.seriesAdminGuidance == null) {
//             newSeries = newSeries.copyWith(
//                 seriesAdminGuidance: [valueToString(row[1]!.value) ?? '']);
//           } else {
//             newSeries.seriesAdminGuidance!
//                 .add(valueToString(row[1]!.value) ?? '');
//           }
//         }
//       } else if (row[0]!.value.toString().contains('Series Type') &&
//           row[1]?.value.toString() != 'Type') {
//         newSeries = newSeries.copyWith(
//             seriesType: seriesTypeStringToEnum[valueToString(row[1]!.value)]);
//       } else if (row[0]!
//               .value
//               .toString()
//               .contains('Equivalent Series Groups') &&
//           row[1]?.value.toString() != 'Series Groups') {
//         if (!row[1]!.value.toString().contains('n/a')) {
//           newSeries = newSeries.copyWith(
//               equivalentSeriesGroups: equivalentSeriesGroupsStringToEnum[
//                   valueToString(row[1]!.value)]);
//         }
//       } else if (row[0]!.value.toString().contains('Gender') &&
//           row[1]?.value.toString() != 'Required Gender') {
//         if (!row[1]!.value.toString().contains('n/a')) {
//           if (newSeries.requiredGender == null) {
//             newSeries = newSeries.copyWith(requiredGender: [
//               genderStringToEnum[valueToString(row[1]!.value)]!
//             ]);
//           } else {
//             newSeries.requiredGender!
//                 .add(genderStringToEnum[valueToString(row[1]!.value)]!);
//           }
//         }
//       } else if (row[0]!.value.toString().contains('Select Patient Series') &&
//           row[1]?.value.toString() != 'Default Series') {
//         newSeries = newSeries.copyWith(
//           selectSeries: SelectSeries(
//             defaultSeries: binaryStringToEnum[valueToString(row[1]!.value)],
//             productPath: binaryStringToEnum[valueToString(row[2]!.value)],
//             seriesGroupName:
//                 seriesGroupNameStringToEnum[valueToString(row[3]!.value)],
//             seriesGroup: seriesGroupStringToEnum[valueToString(row[4]!.value)],
//             seriesPriority:
//                 seriesPriorityStringToEnum[valueToString(row[5]!.value)],
//             seriesPreference:
//                 seriesPreferenceStringToEnum[valueToString(row[6]!.value)],
//             minAgeToStart: row[7]!.value.toString().contains('n/a')
//                 ? null
//                 : valueToString(row[7]!.value),
//             maxAgeToStart: row[8]!.value.toString().contains('n/a')
//                 ? null
//                 : valueToString(row[8]!.value),
//           ),
//         );
//       } else if (row[0]!.value.toString().contains('Indication') &&
//           row[1]?.value.toString() != 'Observation (Code)' &&
//           !row[1]!.value.toString().contains('n/a')) {
//         /// extract the code from the text for the observation
//         var open = row[1]!.value.toString().lastIndexOf('(');
//         var close = row[1]!.value.toString().lastIndexOf(')');
//         var code = row[1]!.value.toString().substring(open + 1, close);
//         var text = row[1]!.value.toString().substring(0, open - 1);

//         if (newSeries.indication == null) {
//           newSeries = newSeries.copyWith(indication: []);
//         }
//         newSeries.indication!.add(
//           Indication(
//             observationCode:
//                 ObservationCode(code: ObsStringToEnumMap[code], text: text),
//             description: row[2]!.value.toString().contains('n/a')
//                 ? null
//                 : valueToString(row[2]!.value),
//             beginAge: row[3]!.value.toString().contains('n/a')
//                 ? null
//                 : valueToString(row[3]!.value),
//             endAge: row[4]!.value.toString().contains('n/a')
//                 ? null
//                 : valueToString(row[4]!.value),
//             guidance: row[5]!.value.toString().contains('n/a')
//                 ? null
//                 : valueToString(row[5]!.value),
//           ),
//         );
//       } else if (row[0]!.value.toString().contains('Series Dose')) {
//         if (newSeries.seriesDose == null) {
//           newSeries = newSeries.copyWith(seriesDose: []);
//         }
//         ;
//         newSeries.seriesDose!.add(createSeriesDose(
//             sheet.rows.indexWhere((element) =>
//                 element[0]?.value.toString().trim() ==
//                     row[0]!.value.toString().trim() &&
//                 element[1]?.value.toString().trim() ==
//                     row[1]!.value.toString().trim()),
//             sheet.rows));
//       }
//     }
//   }
//   return newSeries;
// }
