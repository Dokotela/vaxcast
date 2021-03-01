import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart' as r4;
import '../export.dart';

part 'vax_patient_from_r4.dart';
part 'string_to_cvx.dart';

class VaxPatient {
  VaxDate dob;
  Gender sex;
  String id;
  List<Obs> conditions;
  VaxDate assessmentDate;
  List<Dose> liveVirusList;
  List<Dose> pastImmunizations;
  String seriesGroup;

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
  ) =>
      _$VaxPatientFromR4(
        patient: patient,
        immunizations: immunizations,
        conditions: conditions,
        allergies: allergies,
        assessmentDate: assessmentDate,
      );
}

Gender getGender(String gender) => gender == Gender.female.toString()
    ? Gender.female
    : gender == Gender.male.toString() ? Gender.male : Gender.unknown;

int liveIndex(Cvx cvx) =>
    SupportingData.scheduleSupportingData.liveVirusConflicts.liveVirusConflict
        .indexWhere((liveCvx) => liveCvx.previous.cvx == cvx);

List<TargetDisease> listAgForCvx(Cvx cvx) {
  List<TargetDisease> agList = [];
  var map = SupportingData.scheduleSupportingData.cvxToAntigenMap.cvxMap
      .firstWhere((element) => element.cvx == cvx);
  map.association.forEach((assocation) {
    agList.add(assocation.antigen);
  });
  return agList;
}
