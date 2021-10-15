// import 'package:fhir/r4.dart';

// import '../vaxcast.dart';
// import 'cvx_to_string.dart';
// import 'r4_disease_coding.dart';

// Parameters r4ForecastToFhir(
//     List<GroupForecast> groupForecast, String id, String assessmentDate) {
//   var immunizationRecommendation = ImmunizationRecommendation(
//     resourceType: R4ResourceType.ImmunizationRecommendation,
//     patient: Reference(reference: 'Patient/$id'),
//     date: FhirDateTime(assessmentDate),
//     recommendation: [],
//   );
//   final returnParameters = Parameters(
//     resourceType: R4ResourceType.Parameters,
//     parameter: [],
//   );

//   for (var forecast in groupForecast) {
//     for (final series in forecast.vaxSeries) {
//       for (final dose in series.pastDoses) {
//         returnParameters.parameter!.add(doseEvaluation(
//           dose,
//           id,
//           series.targetDisease,
//           series.seriesName,
//           series.targetDoses.length,
//         ));
//       }
//     }
//     immunizationRecommendation.recommendation.add(
//       ImmunizationRecommendationRecommendation(
//         targetDisease: CodeableConcept(
//             coding: getDiseaseListCoding(forecast.targetDisease)),
//         forecastStatus: CodeableConcept(coding: [
//           Coding(
//             system: FhirUri(
//                 'http://hl7.org/fhir/us/ImmunizationFHIRDS/CodeSystem/ForecastStatus'),
//             code: Code(statusToCode(forecast.groupStatus)),
//             display: statusToDisplay(forecast.groupStatus),
//           )
//         ]),
//         vaccineCode: forecast.groupRecVaccines.keys.length == 0
//             ? null
//             : [
//                 CodeableConcept(
//                   coding: listCvx(forecast, id),
//                 ),
//               ],
//         dateCriterion: [],
//         series: forecast.vaccineGroupName.toString(),
//       ),
//     );
//     if (forecast.groupEarliestDate != null) {
//       immunizationRecommendation.recommendation.last.dateCriterion!
//           .add(earliest(forecast.groupEarliestDate));
//     }
//     if (forecast.groupAdjRecDate != null) {
//       immunizationRecommendation.recommendation.last.dateCriterion!
//           .add(recommended(forecast.groupAdjRecDate));
//     }
//     if (forecast.groupAdjPastDueDate != null) {
//       immunizationRecommendation.recommendation.last.dateCriterion!
//           .add(past(forecast.groupAdjPastDueDate));
//     }
//   }
//   returnParameters.parameter!.add(ParametersParameter(
//     name: 'recommendation',
//     resource: immunizationRecommendation,
//   ));
//   return returnParameters;
// }

// ParametersParameter doseEvaluation(
//   Dose dose,
//   String id,
//   TargetDisease targetDisease,
//   String seriesName,
//   int targetDoses,
// ) =>
//     ParametersParameter(
//       name: 'evaluation',
//       resource: ImmunizationEvaluation(
//         resourceType: R4ResourceType.ImmunizationEvaluation,
//         status: Code('completed'),
//         patient: Reference(reference: 'Patient/$id'),
//         date: FhirDateTime(dose.dateGiven.toIso8601String()),
//         targetDisease: CodeableConcept(coding: r4DiseaseCoding[targetDisease]),
//         immunizationEvent: Reference(reference: 'Immunization/${dose.doseId}'),
//         doseStatus: CodeableConcept(
//           coding: [
//             Coding(
//               system: FhirUri(
//                   'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status'),
//               code: Code(dose.evaluation.value1 == EvalStatus.valid
//                   ? 'valid'
//                   : 'notvalid'),
//               display: dose.evaluation.value1 == EvalStatus.valid
//                   ? 'Valid'
//                   : 'Not Valid',
//             ),
//           ],
//         ),
//         doseStatusReason: getDoseStatusReason(dose),
//         series: seriesName,
//         doseNumberPositiveInt: dose.evaluation.value1 == EvalStatus.valid
//             ? PositiveInt(dose.target.value1)
//             : null,
//         seriesDosesPositiveInt: PositiveInt(targetDoses),
//       ),
//     );

// List<CodeableConcept> getDoseStatusReason(Dose dose) {
//   if (dose.evaluation.value1 == EvalStatus.valid) return [];
//   return [
//     CodeableConcept(
//       coding: [
//         Coding(
//           system: FhirUri(
//               'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status'),
//           code: Code(simpleEnumToString(dose.evaluation.value2)),
//           display: doseStatusDisplay(dose.evaluation.value2),
//         ),
//       ],
//     ),
//   ];
// }

// String simpleEnumToString(dynamic value) => value.toString().split('.').last;

// String doseStatusDisplay(EvalReason status) {
//   switch (status) {
//     case EvalReason.expired:
//       return 'Past Expiration Date';
//     case EvalReason.inadvertent:
//       return 'Inappropriate Vaccine';
//     case EvalReason.inappropriate:
//       return 'Inappropriate Vaccine';
//     case EvalReason.notEvaluated:
//       return 'Not Evaluated';
//     case EvalReason.productConflict:
//       return 'Product Conflict';
//     case EvalReason.quantity:
//       return 'Insufficient Quantity';
//     case EvalReason.recall:
//       return 'Recalled Product';
//     case EvalReason.storage:
//       return 'Adverse Storage Conditions';
//     case EvalReason.tooOld:
//       return 'Patient Too Old';
//     case EvalReason.tooSoon:
//       return 'Patient Too Young';
//     case EvalReason.tooYoung:
//       return 'Patient Too Young';
//     default:
//       return '';
//   }
// }

// List<Coding>? listCvx(GroupForecast groupForecast, String id) {
//   var diseases = groupForecast.targetDisease;
//   List<Vaccine> vaccineList = groupForecast.groupRecVaccines.keys.toList();
//   if (diseases.length == 1) {
//     return [
//       Coding(
//         system: FhirUri('http://hl7.org/fhir/sid/cvx'),
//         code: Code(cvxToString[vaccineList[0].cvx]!),
//         display: vaccineList[0].vaccineType,
//       )
//     ];
//   } else {
//     var firstVax = groupForecast.groupRecVaccines.keys
//         .toList()
//         .indexWhere((key) => groupForecast.groupRecVaccines[key]!.length == 3);
//     if (firstVax != -1) {
//       var first = groupForecast.groupRecVaccines.keys.toList()[firstVax];
//       return [
//         Coding(
//           system: FhirUri('http://hl7.org/fhir/sid/cvx'),
//           code: Code(cvxToString[first.cvx]!),
//           display: first.vaccineType,
//         ),
//       ];
//     } else {
//       print(id);
//       return null;
//     }
//   }
// }

// List<Coding> getDiseaseListCoding(List<TargetDisease> targets) {
//   if (targets.length == 1) {
//     return r4DiseaseCoding[targets[0]]!;
//   } else {
//     List<Coding> codingList = [];
//     targets.forEach((target) => codingList.add(r4DiseaseCoding[target]![0]));
//     return codingList;
//   }
// }

// String statusToCode(SeriesStatus status) {
//   switch (status) {
//     case SeriesStatus.complete:
//       return 'complete';
//     case SeriesStatus.notComplete:
//       return 'notComplete';
//     case SeriesStatus.notRecommended:
//       return 'notRecommended';
//     case SeriesStatus.immune:
//       return 'immune';
//     case SeriesStatus.contraindicated:
//       return 'contraindicated';
//     case SeriesStatus.agedOut:
//       return 'agedOut';
//     default:
//       return 'conditional';
//   }
// }

// String statusToDisplay(SeriesStatus status) {
//   switch (status) {
//     case SeriesStatus.complete:
//       return 'Complete';
//     case SeriesStatus.notComplete:
//       return 'Not Complete';
//     case SeriesStatus.notRecommended:
//       return 'Not Recommended';
//     case SeriesStatus.immune:
//       return 'Immune';
//     case SeriesStatus.contraindicated:
//       return 'Contraindicated';
//     case SeriesStatus.agedOut:
//       return 'Aged Out';
//     default:
//       return 'Conditional';
//   }
// }

// ImmunizationRecommendationDateCriterion earliest(VaxDate? earliest) =>
//     ImmunizationRecommendationDateCriterion(
//       code: CodeableConcept(
//         coding: [
//           Coding(
//             system: FhirUri("http://loinc.org"),
//             code: Code("30981-5"),
//             display: "Earliest date to give",
//           ),
//         ],
//       ),
//       value: FhirDateTime(earliest?.toString() ?? VaxDate.max().toString()),
//     );

// ImmunizationRecommendationDateCriterion recommended(VaxDate recommended) =>
//     ImmunizationRecommendationDateCriterion(
//       code: CodeableConcept(
//         coding: [
//           Coding(
//             system: FhirUri("http://loinc.org"),
//             code: Code("30980-7"),
//             display: "Date vaccine due",
//           ),
//         ],
//       ),
//       value: FhirDateTime(recommended.toString()),
//     );

// ImmunizationRecommendationDateCriterion past(VaxDate past) =>
//     ImmunizationRecommendationDateCriterion(
//       code: CodeableConcept(
//         coding: [
//           Coding(
//             system: FhirUri("http://loinc.org"),
//             code: Code("59778-1"),
//             display: "Date when overdue for immunization",
//           ),
//         ],
//       ),
//       value: FhirDateTime(past.toString()),
//     );
