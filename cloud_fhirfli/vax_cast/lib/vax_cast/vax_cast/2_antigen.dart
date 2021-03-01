import '../vax_cast.dart';

class Antigen {
  VaxPatient patient;
  TargetDisease targetDisease;
  VaccineGroupName vaccineGroupName;
  Map<SeriesGroupName, Group> groups;
  bool immunity;
  bool contraindicated;

  Antigen({
    this.patient,
    this.targetDisease,
  }) {
    groups = <SeriesGroupName, Group>{};
  }

  void newSeries(Series series) {
    if (groups.keys.contains(series.selectSeries.seriesGroupName)) {
      groups[series.selectSeries.seriesGroupName]
          .vaxSeries
          .add(VaxSeries(series, patient));
    } else {
      vaccineGroupName = series.vaccineGroup;
      groups[series.selectSeries.seriesGroupName] = Group(series, patient);
    }
  }

  bool isSingleAgVaxGroup() =>
      vaccineGroupName != VaccineGroupName.mmr &&
      vaccineGroupName != VaccineGroupName.dtap_tdap_td;

  void getForecast() {
    groups.forEach((seriesGroupName, group) {
      group.evaluateAllPatientSeries();
      checkForImmunity();
      checkAntigenContraindication();
      group.forecastEachSeries(immunity, contraindicated);
    });
    // if (targetDisease == TargetDisease.hepB) {
    //   groups.forEach(
    //       (seriesGroupName, group) => group.vaxSeries.forEach((series) {
    //             print(series.seriesName);
    //             print(series.targetDoses);
    //             series.pastDoses.forEach((dose) {
    //               print(dose?.evaluation?.value2);
    //               print(dose?.evaluation?.value1);
    //             });
    //             print(series.targetDose);
    //             print(series?.recommendedDose?.earliestDate);
    //             print(series?.recommendedDose?.adjustedRecommendedDate);
    //             print(series?.recommendedDose?.adjustedPastDueDate);
    //             // patient.pastImmunizations.forEach((element) {
    //             //   print(element.cvx);
    //             // });
    //           }));
    // }
    groups.removeWhere((seriesGroupName, group) => group.vaxSeries.isEmpty);
    groups.forEach((seriesGroupName, group) => group.selectPatientSeries());
    groups
        .removeWhere((seriesGroupName, group) => group.prioritizedSeries == -1);
    groups.forEach((seriesGroupName, group) => group.isItABestSeries(groups));
    groups.removeWhere((seriesGroupName, group) => !group.bestGroup);
  }

  void checkForImmunity() {
    if (immunity ?? true) {
      immunity = false;
      var immuneConditions =
          SupportingData.antigenSupportingData[targetDisease].immunity;
      if (immuneConditions != null) {
        if (patient.conditions != null && patient.conditions.isNotEmpty) {
          immuneConditions.clinicalHistory.forEach((condition) =>
              immunity |= patient.conditions.contains(condition.guidelineCode));
        }
        if (!immunity && immuneConditions.dateOfBirth != null) {
          if (patient.dob <
              VaxDate.yyyymmdd(
                  immuneConditions?.dateOfBirth?.immunityBirthDate ??
                      '29991231')) {
            var exclusionCondition = false;
            immuneConditions.dateOfBirth.exclusion.forEach((exclusion) =>
                exclusionCondition |=
                    patient.conditions.contains(exclusion.exclusionCode));
            immunity = !exclusionCondition;
          }
        }
      }
    }
  }

  void checkAntigenContraindication() {
    if (contraindicated ?? true) {
      contraindicated = false;
      if (patient.conditions.isNotEmpty) {
        for (final condition in patient.conditions) {
          var obsCondition = SupportingData.antigenSupportingData[targetDisease]
              .contraindications.vaccineGroup.contraindication
              .firstWhere(
                  (contraindication) =>
                      contraindication.observationCode == condition,
                  orElse: () => null);
          if (obsCondition != null) {
            contraindicated |= patient.assessmentDate <
                    patient.dob.maxIfNull(obsCondition.endAge) &&
                patient.dob.minIfNull(obsCondition.beginAge) <=
                    patient.assessmentDate;
          }
        }
      }
    }
  }
}
