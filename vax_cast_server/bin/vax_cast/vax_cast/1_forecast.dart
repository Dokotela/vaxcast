import '../vax_cast.dart';

class Forecast {
  Map<TargetDisease, Antigen> antigens;
  List<GroupForecast> groupForecast;
  VaxPatient patient;

  Forecast({this.patient}) {
    antigens = <TargetDisease, Antigen>{};
  }

  Future<List<GroupForecast>> cast() async {
    await SupportingData.load();
    loadAntigenSupportingData();
    getPastImmunizationList();
    getForecast();
    return groupForecast;
  }

  void loadAntigenSupportingData() {
    SupportingData.antigenSupportingData.forEach((ag, supportingData) {
      antigens[ag] = Antigen(patient: patient, targetDisease: ag);
      for (var series in supportingData.series) {
        if (isRelevant(series, patient)) antigens[ag].newSeries(series);
      }
    });
    antigens.removeWhere((ag, antigen) => antigen.groups.isEmpty);
  }

  bool isRelevant(Series series, VaxPatient patient) =>
      isAppropriateGender(series.requiredGender, patient.sex)
          ? series.seriesType == SeriesType.standard
              ? true
              : doesIndicationApply(series.indication, patient)
          : false;

  bool isAppropriateGender(List<Gender> requiredGender, Gender sex) =>
      //if for some reason we don't know gender, we assume appropriateness
      requiredGender == null || sex == Gender.unknown
          ? true
          : requiredGender.isEmpty ? true : requiredGender.contains(sex);

  bool doesIndicationApply(List<Indication> indications, VaxPatient patient) {
    if (patient.conditions.isNotEmpty) {
      for (final condition in patient.conditions) {
        for (final indication in indications) {
          if (indication.observationCode.code == condition) {
            if (patient.dob.minIfNull(indication.beginAge) <=
                    patient.assessmentDate &&
                patient.assessmentDate <
                    patient.dob.maxIfNull(indication.endAge)) {
              return true;
            }
          }
        }
      }
    }
    return false;
  }

  void getPastImmunizationList() {
    antigens.forEach((diseaseName, antigen) {
      for (var dose in patient.pastImmunizations) {
        if (dose.antigens.contains(diseaseName)) {
          antigen.groups.forEach((seriesGroupName, group) => group.vaxSeries
              .forEach((series) => series.pastDoses.add(Dose.copy(dose))));
        }
      }
    });
  }

  void getForecast() {
    antigens.forEach((ag, antigen) => antigen.getForecast());
    groupForecast = <GroupForecast>[];
    antigens.forEach((ag, antigen) => identifyAndEvaluateVaccineGroup(antigen));
    // groupForecast.forEach((forecast) => forecast.convertNull());
  }

  void identifyAndEvaluateVaccineGroup(Antigen antigen) {
    antigen.groups.forEach((seriesGroupName, seriesGroup) {
      if (antigen.isSingleAgVaxGroup()) {
        addSingleVaxGroup(seriesGroup, antigen.vaccineGroupName);
      } else {
        if (!alreadyIncluded(false, antigen)) addMultiVaxGroup(antigen);
      }
    });
  }

  void addSingleVaxGroup(
          Group seriesGroup, VaccineGroupName vaccineGroupName) =>
      groupForecast.add(
          GroupForecast.singleAg(seriesGroup.vaxSeries[0], vaccineGroupName));

  bool alreadyIncluded(bool alreadyIncluded, Antigen antigen) {
    groupForecast.forEach((forecast) => alreadyIncluded |=
        forecast.vaccineGroupName == antigen.vaccineGroupName);
    return alreadyIncluded;
  }

  void addMultiVaxGroup(Antigen antigen) {
    var newGroupForecast = GroupForecast();
    var incomplete = false;
    var immune = true;
    var contraindication = false;
    for (final ag in antigens.keys) {
      if (antigens[ag].vaccineGroupName == antigen.vaccineGroupName) {
        antigens[ag].groups.forEach((seriesGroupName, group) {
          var curSeries = group.vaxSeries[0];
          incomplete |= curSeries.seriesStatus == SeriesStatus.notComplete;
          immune = immune && curSeries.seriesStatus == SeriesStatus.immune;
          contraindication |=
              curSeries.seriesStatus == SeriesStatus.contraindicated;
          newGroupForecast.applyMultiAgLogic(curSeries);
        });
      }
    }
    newGroupForecast.finalDates();
    newGroupForecast.groupStatus = immune
        ? SeriesStatus.immune
        : contraindication
            ? SeriesStatus.contraindicated
            : incomplete ? SeriesStatus.notComplete : SeriesStatus.complete;

    newGroupForecast.vaccineGroupName = antigen.vaccineGroupName;
    groupForecast.add(newGroupForecast);
  }
}
