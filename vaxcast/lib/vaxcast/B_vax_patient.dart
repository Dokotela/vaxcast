import 'package:fhir/r4.dart' as r4;
import 'package:vaxcast/supporting_data/supporting_data.dart';
import 'package:vaxcast/vaxcast.dart';

class VaxPatient {
  VaxDate? dob;
  Gender? sex;
  String? id;
  List<Obs>? conditions;
  VaxDate? assessmentDate;
  List<Dose>? liveVirusList;
  List<Dose>? pastImmunizations;
  String? seriesGroup;

  VaxPatient({
    this.dob,
    this.sex,
    this.id,
    this.conditions,
    this.assessmentDate,
    this.liveVirusList,
    this.pastImmunizations,
    this.seriesGroup,
  });

  factory VaxPatient.fromR4(
    r4.Patient patient,
    List<r4.Immunization> immunizations,
    List<r4.Condition> conditions,
    List<r4.AllergyIntolerance> allergies,
    String assessmentDate,
  ) {
    List<Dose> pastImmunizations = [];
    List<Dose> liveVirusList = [];
    final supportingData = SupportingData.fromFile();
    if (immunizations.isNotEmpty)
      immunizations.forEach(
        (vax) {
          var newDose = Dose.doseFromR4Immunization(vax);
          pastImmunizations.add(newDose);
          var index = liveIndex(newDose.cvx, supportingData);
          if (index != null && index != -1) {
            liveVirusList.add(newDose);
          }
        },
      );
    VaxDate assessDate = VaxDate.fromString(assessmentDate);
    assessDate = assessDate.year == 2999 ? VaxDate.now() : assessDate;

    return VaxPatient(
      dob: VaxDate.fromString(patient.birthDate.toString()),
      sex: getR4Gender(patient.gender),
      id: patient.id.toString(),
      conditions: getR4Conditions(conditions, supportingData),
      assessmentDate: assessDate,
      pastImmunizations: pastImmunizations,
      liveVirusList: liveVirusList,
    );
  }
}

int? liveIndex(Cvx cvx, SupportingData supportingData) {
  final index = supportingData
      .scheduleSupportingData?.liveVirusConflicts?.liveVirusConflict
      ?.indexWhere((liveConflict) => liveConflict.previous?.cvx == cvx);
  return index;
}

Gender getR4Gender(r4.PatientGender? gender) =>
    gender == r4.PatientGender.female
        ? Gender.female
        : gender == r4.PatientGender.male
            ? Gender.male
            : Gender.unknown;

List<Obs> getR4Conditions(
  List<r4.Condition> conditions,
  SupportingData supportingData,
) {
  List<Obs> conditionList = [];
  conditions.forEach((condition) {
    var index = condition.code?.coding
        ?.indexWhere((coding) => coding.system.toString().contains('snomed'));
    if (index != null && index != -1) {
      supportingData.scheduleSupportingData?.observations?.observation
          ?.forEach((observation) {
        if (observation.codedValues?.codedValue != null) {
          for (final codedValue in observation.codedValues!.codedValue!) {
            if (condition.code?.coding?[index].system.toString() ==
                    codedValue.code.toString() &&
                observation.observationCode != null) {
              conditionList.add(observation.observationCode!);
            }
          }
        }
      });
    }
  });
  return conditionList;
}
