//   immunizations.forEach((vax) => newPatient.addToVaxListStu3(vax));
//   // conditions
//   //     .forEach((condition) => newPatient.addToConditionListStu3(condition));
//   return newPatient;
// }

import 'package:dartz/dartz.dart';
import 'package:fhir/stu3.dart' as stu3;

import '../../vax_cast.dart';

class VaxPatientStu3 extends VaxPatient {
  VaxPatientStu3({
    stu3.Patient patient,
    List<stu3.Immunization> immunizations,
    List<stu3.Condition> conditions,
    List<stu3.AllergyIntolerance> allergyIntolerance,
    String assessmentDate,
  }) : super(
          dob: VaxDate.fromString(patient.birthDate.toString()),
          sex: getGender(patient?.gender?.toString()),
          id: patient.id.toString(),
          liveVirusList: <Dose>[],
          pastImmunizations: <Dose>[],
          conditions: <String>[],
          assessmentDate: VaxDate.fromString(assessmentDate),
        ) {
    Tuple2<List<Dose>, List<Dose>> pastDoses = getPastDoses(immunizations);
    pastImmunizations = pastDoses.value1;
    liveVirusList = pastDoses.value2;
  }

  static Gender getGender(String gender) => gender == Gender.female.toString()
      ? Gender.female
      : gender == Gender.male.toString()
          ? Gender.male
          : Gender.unknown;

  Tuple2<List<Dose>, List<Dose>> getPastDoses(
      List<stu3.Immunization> immunizations) {
    List<Dose> pastImmunizations = [];
    List<Dose> liveVirusList = [];
    immunizations.forEach(
      (vax) {
        var newDose = getNewDose(vax);
        pastImmunizations.add(newDose);
        var index = liveIndex(newDose.cvx);
        if (index != -1) {
          liveVirusList.add(newDose);
        }
      },
    );
    return Tuple2(pastImmunizations, liveVirusList);
  }

  int liveIndex(String cvx) =>
      SupportingData.scheduleSupportingData.liveVirusConflicts
          .indexWhere((liveCvx) => liveCvx.previousCvx == cvx);

  Dose getNewDose(stu3.Immunization vax) => Dose(
        dateGiven: VaxDate.fromString(vax.date.toString()),
        cvx: vax.vaccineCode.coding[0].code.toString().length == 1
            ? '0' + vax.vaccineCode.coding[0].code.toString()
            : vax.vaccineCode.coding[0].code.toString(),
        mvx: vax.vaccineCode.coding.length > 1
            ? vax.vaccineCode.coding[1].code.toString()
            : null,
      );

  List<String> getConditions(List<stu3.Condition> conditions) {
    List<String> conditionList = [];
    conditions.forEach((condition) {
      var condIndex = condition.code.coding
          .indexWhere((coding) => coding.system.toString().contains('snomed'));
      if (condIndex != -1) {
        SupportingData.scheduleSupportingData.observations
            .forEach((code, info) {
          if (info.codedValues != null) {
            for (final codedValue in info.codedValues) {
              if (condition.code.coding[condIndex].system.toString() ==
                  codedValue.code.toString()) {
                conditionList.add(code);
              }
            }
          }
        });
      }
    });
    return conditionList;
  }
}
