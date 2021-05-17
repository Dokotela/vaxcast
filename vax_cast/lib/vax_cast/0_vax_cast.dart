// import 'package:fhir/r4.dart';

// import '../vax_cast.dart';

// class VaxCast {
//   VaxCast();

//   Future<Parameters> forecastSoonR4(
//     Patient newPatient,
//     List<Immunization> newImmunizations,
//     String assessmentDate,
//   ) async {
//     final firstPass =
//         await forecastR4(newPatient, newImmunizations, assessmentDate);

//     final firstRecs = firstPass.parameter?.firstWhere((parameter) =>
//         parameter.resource?.resourceType == 'ImmunizationRecommendation');

//     for (var rec
//         in (firstRecs?.resource as ImmunizationRecommendation).recommendation) {
//       final dueDate = rec.dateCriterion?.firstWhere((criteria) =>
//           criteria.code.coding != null
//               ? criteria.code.coding![0].code == Code('30980-7')
//               : false);

//       if (dueDate != null) {
//         final due = dueDate.value.toString();

//         if (DateTime.parse(due).isBefore(DateTime.now()) ||
//             DateTime.parse(due).isAtSameMomentAs(DateTime.now())) {
//           newImmunizations.add(
//             Immunization(
//               resourceType: R4ResourceType.Immunization,
//               status: Code('completed'),
//               patient: Reference(reference: 'Patient/${newPatient.id}'),
//               vaccineCode: rec.vaccineCode![0],
//               occurrenceDateTime: FhirDateTime(DateTime.now()),
//             ),
//           );
//         }
//       }
//     }

//     var secondPass = await forecastR4(
//       newPatient,
//       newImmunizations,
//       VaxDate.now().change('1 month').toString(),
//     );

//     final secondRecs = secondPass.parameter?.firstWhere((parameter) =>
//         parameter.resource?.resourceType == 'ImmunizationRecommendation');

//     var finalRecs = firstRecs;

//     for (var rec in (secondRecs?.resource as ImmunizationRecommendation)
//         .recommendation) {
//       if (!(finalRecs?.resource as ImmunizationRecommendation)
//           .recommendation
//           .contains(rec)) {
//         (finalRecs?.resource as ImmunizationRecommendation)
//             .recommendation
//             .add(rec);
//       }
//     }

//     var finalPass = firstPass;

//     finalPass.parameter?.removeWhere((parameter) =>
//         parameter.resource?.resourceType == 'ImmunizationRecommendation');

//     finalPass.parameter?.add(finalRecs);

//     return finalPass;
//   }

//   Future<Parameters> forecastR4(
//     Patient newPatient,
//     List<Immunization> newImmunizations,
//     String assessmentDate,
//   ) =>
//       _$forecastR4(newPatient, newImmunizations, assessmentDate);

//   Future<Parameters> _$forecastR4(
//     Patient newPatient,
//     List<Immunization> newImmunizations,
//     String assessmentDate,
//   ) async {
//     await SupportingData.load();
//     VaxPatient vaxPatient = VaxPatient.fromR4(
//       newPatient,
//       newImmunizations,
//       null,
//       null,
//       assessmentDate,
//     );
//     var forecast = await Forecast(patient: vaxPatient).cast();
//     var fhirForecast =
//         r4ForecastToFhir(forecast, vaxPatient.id, assessmentDate);
//     return fhirForecast;
//   }
// }
