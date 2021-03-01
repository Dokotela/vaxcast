import 'package:dartz/dartz.dart';
import 'package:fhir/r4.dart' as r4;

import '../../vax_cast.dart';

class VaxPatientR4 extends VaxPatient {
  VaxPatientR4({
    r4.Patient patient,
    List<r4.Immunization> immunizations,
    List<r4.Condition> conditions,
    List<r4.AllergyIntolerance> allergyIntolerance,
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
      List<r4.Immunization> immunizations) {
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

  Dose getNewDose(r4.Immunization vax) => Dose(
        dateGiven: VaxDate.fromString(vax.occurrenceDateTime.toString()),
        cvx: vax.vaccineCode.coding[0].code.toString().length == 1
            ? '0' + vax.vaccineCode.coding[0].code.toString()
            : vax.vaccineCode.coding[0].code.toString(),
        mvx: vax.vaccineCode.coding.length > 1
            ? vax.vaccineCode.coding[1].code.toString()
            : null,
      );

  List<String> getConditions(List<r4.Condition> conditions) {
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
