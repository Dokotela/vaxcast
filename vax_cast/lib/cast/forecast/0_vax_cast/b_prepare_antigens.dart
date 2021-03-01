part of 'a_vax_cast.dart';

Map<String, Antigen> prepareAntigens(VaxPatient patient) {
  Map<String, Antigen> antigens = <String, Antigen>{};
  SupportingData.antigenSupportingData.forEach((ag, seriesGroup) {
    antigens[ag] = Antigen(patient, ag);
    for (var series in seriesGroup.series) {
      if (isRelevant(series, patient)) antigens[ag].newSeries(series);
    }
    antigens = loadScheduleSupportingData(ag, patient, antigens);
  });
  antigens.removeWhere((ag, antigen) => antigen.groups == null);
  return antigens;
}

Map<String, Antigen> loadScheduleSupportingData(
    String ag, VaxPatient patient, Map<String, Antigen> antigens) {
  for (final dose in patient.pastImmunizations) {
    if (isAgInCvx(dose.cvx, ag)) {
      for (final group in antigens[ag].groups) {
        for (final series in group.vaxSeries) {
          series.pastDoses.add(Dose.copy(dose));
        }
      }
    }
  }
  return antigens;
}

bool isAgInCvx(String cvx, String ag) =>
    SupportingData.scheduleSupportingData.cvxToAntigenMap[cvx].association
                .indexWhere((association) => association.antigen == ag) ==
            -1
        ? false
        : true;
