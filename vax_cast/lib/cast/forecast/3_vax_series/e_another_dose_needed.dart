part of 'a_vax_series.dart';

Tuple2<String, String> checkIfAnotherDoseNeeded(
    bool immunity,
    bool antigenContraindicated,
    VaxPatient patient,
    List<TargetStatus> targetDoses,
    String seriesStatus,
    SeriesDose seriesDose) {
  VaxDate dob = patient.dob;
  if (!targetDoses.contains(TargetStatus.not_satisfied)) {
    if (targetDoses.contains(TargetStatus.satisfied)) {
      return Tuple2('complete', 'patient series is complete.');
    } else {
      return Tuple2(
        'not recommended',
        'not recommended at this time due to past immunization history.',
      );
    }
  } else if (seriesStatus == 'immune' || immunity) {
    return Tuple2('immune', 'patient has evidence of immunity');
  } else if (seriesStatus == 'contraindicated' || antigenContraindicated) {
    return Tuple2('contraindicated', 'patient has a contraindication');
  } else if (patient.assessmentDate >=
      dob.maxIfNull(
          getApplicableAge(seriesDose.age, patient.assessmentDate).maxAge)) {
    return Tuple2('aged out', 'patient has exceeded the maximum age.');
  } else if (seriesDose.seasonalRecommendation == null) {
    return Tuple2('not complete', null);
  } else if (patient.assessmentDate >
      VaxDate.mmddyyyy(seriesDose.seasonalRecommendation.endDate)) {
    return Tuple2('not complete', 'past seasonal recommendation end date.');
  } else {
    return Tuple2('not complete', null);
  }
}

VaxAge getApplicableAge(
        List<VaxAge> age, VaxDate assessmentDate) =>
    age.length == 1
        ? age[0]
        : VaxDate.mmddyyyy(age[0].cessationDate) >= assessmentDate
            ? age[0]
            : age[1];
