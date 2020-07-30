import '../export.dart';

class GroupForecast {
  List<String> seriesName;
  List<TargetDisease> targetDisease;
  VaccineGroupName vaccineGroupName;
  SeriesStatus groupStatus;
  VaxDate groupEarliestDate;
  VaxDate groupAdjRecDate;
  VaxDate groupAdjPastDueDate;
  VaxDate groupLatestDate;
  VaxDate groupUnadjRecDate;
  VaxDate groupUnadjPastDueDate;
  List<ForecastReason> groupForecastReason;
  List<TargetDisease> groupForecastAgNeeded;
  Map<Vaccine, List<TargetDisease>> groupRecVaccines;
  List<RecommendedDose> recommendedDoses;
  String intervalPriority;
  List<VaxSeries> vaxSeries;

  GroupForecast() {
    this.seriesName = [];
    this.targetDisease = [];
    this.groupForecastAgNeeded = [];
    this.groupRecVaccines = {};
    this.groupForecastReason = [];
    this.recommendedDoses = <RecommendedDose>[];
    this.vaxSeries = [];
    this.groupRecVaccines = {};
  }

  GroupForecast.singleAg(
      VaxSeries bestSeries, VaccineGroupName vaccineGroupName) {
    seriesName = [bestSeries.seriesName];
    targetDisease = [bestSeries.targetDisease];
    groupStatus = bestSeries.seriesStatus;
    this.vaccineGroupName = vaccineGroupName;
    vaxSeries = [bestSeries];
    groupRecVaccines = {};
    if (bestSeries.recommendedDose != null) {
      groupEarliestDate = bestSeries.recommendedDose.earliestDate;
      groupAdjRecDate = bestSeries.recommendedDose.adjustedRecommendedDate;
      groupAdjPastDueDate = bestSeries.recommendedDose.adjustedPastDueDate;
      groupLatestDate = bestSeries.recommendedDose.latestDate;
      groupUnadjRecDate = bestSeries.recommendedDose.unadjustedRecommendedDate;
      groupUnadjPastDueDate = bestSeries.recommendedDose.unadjustedPastDueDate;
      recommendedDoses = [bestSeries.recommendedDose];
      intervalPriority = bestSeries.recommendedDose.intervalPriority;
    }
    groupForecastReason = [bestSeries.forecastReason];
    if (bestSeries.seriesStatus == SeriesStatus.notComplete) {
      _addRecommendedVaccines(
          bestSeries.targetDisease,
          bestSeries.seriesDose[bestSeries.targetDose].preferableVaccine,
          bestSeries.seriesStatus);
    }
  }

  void finalDates() {
    groupAdjRecDate = LatestOf([groupAdjRecDate, groupEarliestDate]);
    groupAdjPastDueDate = LatestOf([groupAdjPastDueDate, groupEarliestDate]);
  }

  void applyMultiAgLogic(VaxSeries series) {
    vaxSeries.add(series);
    if (series.seriesStatus == SeriesStatus.notComplete) {
      _selectDates(series.recommendedDose);
      _addToReasons(series.forecastReason);
      _addToAntigens(series.seriesStatus, series.targetDisease);
      _addRecommendedVaccines(
          series.targetDisease,
          series.seriesDose[series.targetDose].preferableVaccine,
          series.seriesStatus);
      recommendedDoses.add(series.recommendedDose);
      seriesName.add(series.seriesName);
      targetDisease.add(series.targetDisease);
    }
  }

  void _addRecommendedVaccines(TargetDisease singleTargetDisease,
      List<Vaccine> preferred, SeriesStatus seriesStatus) {
    if (seriesStatus == SeriesStatus.notComplete) {
      preferred.forEach((vaccine) {
        var preferable = groupRecVaccines == null
            ? null
            : groupRecVaccines.keys.firstWhere((vax) => vax.cvx == vaccine.cvx,
                orElse: () => null);
        if (preferable == null) {
          groupRecVaccines[vaccine] = [singleTargetDisease];
        } else {
          groupRecVaccines[preferable].add(singleTargetDisease);
        }
      });
    }
  }

  void _addToAntigens(SeriesStatus status, TargetDisease disease) {
    if (status == SeriesStatus.notComplete) {
      groupForecastAgNeeded.add(disease);
    }
  }

  void _addToReasons(ForecastReason forecastReason) {
    groupForecastReason.add(forecastReason);
  }

  void _selectDates(RecommendedDose recommendedDose) {
    if (recommendedDose.intervalPriority == 'override' ||
        intervalPriority == 'override') {
      groupEarliestDate =
          EarliestOf([groupEarliestDate, recommendedDose.earliestDate]);
      intervalPriority = 'override';
    } else {
      groupEarliestDate =
          LatestOf([groupEarliestDate, recommendedDose.earliestDate]);
    }
    groupAdjRecDate =
        EarliestOf([groupAdjRecDate, recommendedDose.adjustedRecommendedDate]);
    groupAdjPastDueDate =
        EarliestOf([groupAdjPastDueDate, recommendedDose.adjustedPastDueDate]);
    groupLatestDate = EarliestOf([groupLatestDate, recommendedDose.latestDate]);
    groupUnadjRecDate = EarliestOf(
        [groupUnadjRecDate, recommendedDose.unadjustedRecommendedDate]);
    groupUnadjPastDueDate = EarliestOf(
        [groupUnadjPastDueDate, recommendedDose.unadjustedPastDueDate]);
  }

  // void convertNull() {
  //   groupEarliestDate ??= VaxDate.max();
  //   groupAdjRecDate ??= VaxDate.max();
  //   groupAdjPastDueDate ??= VaxDate.max();
  //   groupLatestDate ??= VaxDate.max();
  //   groupUnadjRecDate ??= VaxDate.max();
  //   groupUnadjPastDueDate ??= VaxDate.max();
  // }
}
