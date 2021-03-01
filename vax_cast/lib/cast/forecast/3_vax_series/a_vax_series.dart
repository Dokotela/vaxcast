import 'package:dartz/dartz.dart';
import '../../vax_cast.dart';

part 'b_skippable.dart';
part 'c_completed.dart';
part 'd_contraindicated.dart';
part 'e_another_dose_needed.dart';
part 'f_scorable_series.dart';
part 'g_forecast_finish_date.dart';
part 'h_best_series.dart';

class VaxSeries {
  VaxPatient patient;
  List<Dose> pastDoses;
  String seriesStatus;
  //aged out, complete, contraindicated, immune, not complete, not recommended
  List<SeriesDose> seriesDose;
  int targetDose;
  String seriesName;
  String targetDisease;
  String seriesVaccineGroup;
  String seriesAdminGuidance;
  bool isStandardSeries;
  bool isDefaultSeries;
  bool isProductSeries;
  String seriesPriority;
  String seriesPreference;
  String minAgeToStart;
  String maxAgeToStart;
  List<TargetStatus> targetDoses;
  String forecastReason;
  bool prioritized;
  bool scorableSeries;
  bool shouldBeScored;
  bool allDosesValid;
  bool completeable;
  VaxDate forecastFinishDate;
  int score;
  bool bestSeries;
  RecommendedDose recommendedDose;

  VaxSeries(Series series, VaxPatient newPatient) {
    patient = newPatient;
    pastDoses = <Dose>[];
    seriesStatus = 'not complete';
    seriesDose = series.seriesDose;
    targetDose = 0;
    seriesName = series.seriesName;
    targetDisease = series.targetDisease;
    seriesVaccineGroup = series.seriesVaccineGroup;
    seriesAdminGuidance = series.seriesAdminGuidance;
    isStandardSeries = series.seriesType == 'Standard';
    isDefaultSeries = series.defaultSeries == 'Yes';
    isProductSeries = series.productPath == 'Yes';
    seriesPriority = series.seriesPriority;
    seriesPreference = series.seriesPreference;
    minAgeToStart = series.minAgeToStart;
    maxAgeToStart = series.maxAgeToStart;
    targetDoses = series.seriesDose == null
        ? null
        : List.filled(series.seriesDose.length, TargetStatus.not_satisfied);
    prioritized = false;
    scorableSeries = false;
    shouldBeScored = false;
    allDosesValid = false;
    completeable = true;
    forecastFinishDate = VaxDate.max();
    score = 0;
    bestSeries = false;
  }

  void evaluateVaccineDosesAdministered(bool anySeriesComplete) {
    if (pastDoses != null && pastDoses.isNotEmpty) {
      pastDoses.sort((a, b) => a.dateGiven.compareTo(b.dateGiven));
      for (final dose in pastDoses) {
        dose.patient = patient;
        if (seriesStatus == 'not complete') {
          if (dose.canBeEvaluated()) {
            findNonSkippableTargetDose(dose, 'Evaluation', anySeriesComplete);
            if (seriesStatus == 'not complete') {
              dose.evaluatePastDose(
                  seriesDose[targetDose], targetDose, pastDoses);
              if (dose.valid() && seriesStatus == 'not complete') {
                completeTargetDose(dose.target.value2, dose.dateGiven);
              }
            }
          } else {
            dose.isSubStandard();
          }
        }
      }
    }
  }

  void findNonSkippableTargetDose(
      Dose dose, String context, bool anySeriesComplete) {
    var skip = true;
    while (skip) {
      var refDate = dose?.dateGiven ?? patient.assessmentDate;
      skip = Skippable(refDate, anySeriesComplete, patient, pastDoses, context)
          .checkSkipDate(seriesDose[targetDose]);
      if (skip) {
        completeTargetDose(TargetStatus.skipped, null);
        skip = seriesStatus == 'not complete';
      }
    }
  }

  void completeTargetDose(TargetStatus status, VaxDate dateGiven) {
    targetDose += 1;
    Tuple2<String, TargetStatus> newStatus =
        completed(status, dateGiven, seriesDose, targetDose);
    if (newStatus == null) {
      targetDose -= 1;
    } else {
      seriesStatus = newStatus.value1 ?? seriesStatus;
      targetDoses[targetDose - 1] = newStatus.value2;
    }
  }

  void checkContraindication() {
    if (seriesStatus != 'contraindicated') {
      if (contraindicated(patient, targetDisease, seriesDose[targetDose])) {
        seriesStatus = 'contraindicated';
      }
    }
  }

  bool shouldReceiveAnotherTargetDose(
      bool immunity, bool antigenContraindicated) {
    Tuple2<String, String> reason = checkIfAnotherDoseNeeded(
      immunity,
      antigenContraindicated,
      patient,
      targetDoses,
      seriesStatus,
      seriesDose[targetDose],
    );

    seriesStatus = reason.value1;
    forecastReason = reason.value2 ?? forecastReason;
    return seriesStatus == 'not complete';
  }

  void setAnotherDose(String status, String reason) {
    seriesStatus = status;
    forecastReason = reason ?? forecastReason;
  }

  void generateForecastDates(bool anySeriesComplete) {
    var forecast = true;
    while (seriesStatus == 'not complete' && forecast) {
      recommendedDose = RecommendedDose();
      recommendedDose.generateForecastDates(
          seriesDose[targetDose], patient, pastDoses);
      if (Skippable(recommendedDose.earliestDate, anySeriesComplete, patient,
              pastDoses, 'Forecast')
          .checkSkipDate(seriesDose[targetDose])) {
        completeTargetDose(TargetStatus.skipped, null);
      } else {
        forecast = false;
      }
    }
    validateForecastedDates();
  }

  void validateForecastedDates() {
    if ((recommendedDose?.earliestDate ?? VaxDate.min()) >=
        (recommendedDose?.latestDate ?? VaxDate.max())) {
      seriesStatus = 'aged out';
      forecastReason =
          'Patient is unable to finish the series prior to the maximum age';
      recommendedDose.invalidate();
    }
  }

  void preFilterPatientSeries(String highPriority) {
    scorableSeries = highEnoughPriority(seriesPriority, highPriority) &&
        isOldEnough(
            patient.dob, patient.assessmentDate, minAgeToStart, seriesStatus) &&
        startedOnTime(pastDoses, patient.dob, maxAgeToStart);
  }

  void prepareToScoreSeries() {
    allDosesValid = pastDoses.indexWhere((dose) => !dose.valid()) == -1;
    forecastFinishDate = getForecastFinishDate(
      seriesStatus,
      recommendedDose,
      targetDose,
      seriesDose,
      patient.dob,
      patient.assessmentDate,
    );

    completeable = getCompleteable(
      seriesDose.last,
      patient.assessmentDate,
      forecastFinishDate,
      patient.dob,
    );
  }

  void notProdValidSeries(int points) =>
      score += isProductSeries && allDosesValid ? 0 : points;

  void notProdSeries(int points) => score += isProductSeries ? 0 : points;

  void notCompletable(int points) => score += completeable ? 0 : points;

  void notHighestNumValidDoses(int highestNumValidDoses, int points) =>
      score += targetDose == highestNumValidDoses ? 0 : points;

  void notClosestToCompletion(int lowestNumDosesFromCompletion, int points) =>
      score +=
          seriesDose.length - targetDose + 1 == lowestNumDosesFromCompletion
              ? 0
              : points;

  void notEarliestToFinish(VaxDate earliestFinishDate, int points) =>
      score += forecastFinishDate == earliestFinishDate ? 0 : points;

  void notEarliestToStart(VaxDate earliestFinishDate, int points) =>
      score += recommendedDose.earliestDate == earliestFinishDate ? 0 : points;

  void isItABestSeries(List<Group> groups, String equivalentGroups) =>
      bestSeries = getBestSeries(
        groups,
        equivalentGroups,
        seriesStatus,
        isStandardSeries,
      );
}