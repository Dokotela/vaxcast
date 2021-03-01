part of 'a_vax_series.dart';

bool contraindicated(
    VaxPatient patient, String targetDisease, SeriesDose seriesDose) {
  if (patient.conditions != null &&
      SupportingData
              .antigenSupportingData[targetDisease].contraindications.vaccine !=
          null) {
    for (final condition in patient.conditions) {
      var obsCondition = SupportingData.antigenSupportingData[targetDisease]
          .contraindications.vaccine[condition];
      if (obsCondition != null) {
        var dob = patient.dob;
        var assessmentDate = patient.assessmentDate;
        if (dob.minIfNull(obsCondition.beginAge) <= assessmentDate &&
            assessmentDate < dob.maxIfNull(obsCondition.endAge)) {
          var contraindicatedCvx = <String>[];
          obsCondition.contraindicatedVaccine
              .forEach((vaccine) => contraindicatedCvx.add(vaccine.cvx));
          seriesDose.preferableVaccine
              .removeWhere((vax) => contraindicatedCvx.contains(vax.cvx));
        }
      }
    }
  }
  return seriesDose.preferableVaccine.isEmpty;
}
