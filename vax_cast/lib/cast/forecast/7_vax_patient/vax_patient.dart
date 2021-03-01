import '../../vax_cast.dart';

abstract class VaxPatient {
  VaxDate dob;
  Gender sex;
  String id;
  List<String> conditions;
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
}
