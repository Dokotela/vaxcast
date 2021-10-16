// import 'package:fhir/r4.dart' as r4;
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:vaxcast/vaxcast.dart';

// part 'vax_patient.freezed.dart';
// part 'vax_patient.g.dart';

// @freezed
// class VaxPatient with _$VaxPatient {
//   VaxPatient._();

//   factory VaxPatient({
//     VaxDate? dob,
//     Gender? sex,
//     String? id,
//     List<Obs>? conditions,
//     VaxDate? assessmentDate,
//     List<Dose>? liveVirusList,
//     List<Dose>? pastImmunizations,
//     String? seriesGroup,
//   }) = _VaxPatient;

//   factory VaxPatient.fromR4(
//     r4.Patient patient,
//     List<r4.Immunization> immunizations,
//     List<r4.Condition> conditions,
//     List<r4.AllergyIntolerance> allergies,
//     String assessmentDate,
//   ) {
//     List<Dose> pastImmunizations = [];
//     List<Dose> liveVirusList = [];
//     if (immunizations.isNotEmpty)
//       immunizations.forEach(
//         (vax) {
//           var newDose = getNewR4Dose(vax);
//           pastImmunizations.add(newDose);
//           var index = liveIndex(newDose.cvx);
//           if (index != -1) {
//             liveVirusList.add(newDose);
//           }
//         },
//       );
//     VaxDate assessDate = VaxDate.fromString(assessmentDate);
//     assessDate = assessDate.year == 2999 ? VaxDate.now() : assessDate;

//     return VaxPatient(
//       dob: VaxDate.fromString(patient.birthDate.toString()),
//       sex: getGender(patient?.gender),
//       id: patient.id.toString(),
//       conditions: <Obs>[],
//       assessmentDate: assessDate,
//       pastImmunizations: pastImmunizations,
//       liveVirusList: liveVirusList,
//     );
//   }
// }

// Dose getNewR4Dose(r4.Immunization vax) => Dose(
//       doseId: vax.id.toString(),
//       volume: vax.doseQuantity.toString(),
//       dateGiven: VaxDate.fromString(vax.occurrenceDateTime.toString()),
//       cvx: _$StringToCvx[vax.vaccineCode.coding[0].code.toString().length == 1
//           ? '0' + vax.vaccineCode.coding[0].code.toString()
//           : vax.vaccineCode.coding[0].code.toString()],
//       mvx: vax.vaccineCode.coding.length > 1
//           ? vax.vaccineCode.coding[1].code.toString()
//           : null,
//       antigens: listAgForCvx(_$StringToCvx[
//           vax.vaccineCode.coding[0].code.toString().length == 1
//               ? '0' + vax.vaccineCode.coding[0].code.toString()
//               : vax.vaccineCode.coding[0].code.toString()]),
//       evaluation: r4checkForInvalidReasons(vax),
//     );

// // // int liveIndex(Cvx cvx) =>
// // //     SupportingData.scheduleSupportingData?.liveVirusConflicts?.liveVirusConflict?
// // //         .indexWhere((liveCvx) => liveCvx.previous.cvx == cvx);



// // // Gender getR4Gender(r4.PatientGender gender) => gender == r4.PatientGender.female
// // //     ? Gender.female
// // //     : gender == r4.PatientGender.male
// // //         ? Gender.male
// // //         : Gender.unknown;

// // // Tuple2<List<Dose>, List<Dose>> getPastR4Doses(
// // //     List<r4.Immunization> immunizations) {
// // //   List<Dose> pastImmunizations = [];
// // //   List<Dose> liveVirusList = [];
// // //   if (immunizations?.isNotEmpty ?? false)
// // //     immunizations.forEach(
// // //       (vax) {
// // //         var newDose = getNewR4Dose(vax);
// // //         pastImmunizations.add(newDose);
// // //         var index = liveIndex(newDose.cvx);
// // //         if (index != -1) {
// // //           liveVirusList.add(newDose);
// // //         }
// // //       },
// // //     );
// // //   return Tuple2(pastImmunizations, liveVirusList);
// // // }




// // // List<Obs> getR4Conditions(List<r4.Condition> conditions) {
// // //   List<Obs> conditionList = [];
// // //   conditions.forEach((condition) {
// // //     var condIndex = condition.code.coding
// // //         .indexWhere((coding) => coding.system.toString().contains('snomed'));
// // //     if (condIndex != -1) {
// // //       SupportingData.scheduleSupportingData.observations.observation
// // //           .forEach((observation) {
// // //         if (observation?.codedValues?.codedValue ?? false) {
// // //           for (final codedValue in observation.codedValues.codedValue) {
// // //             if (condition.code.coding[condIndex].system.toString() ==
// // //                 codedValue.code.toString()) {
// // //               conditionList.add(observation.observationCode);
// // //             }
// // //           }
// // //         }
// // //       });
// // //     }
// // //   });
// // //   return conditionList;
// // // }
