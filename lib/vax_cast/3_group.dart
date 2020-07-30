import '../export.dart';

class Group {
  VaxPatient patient;
  SeriesGroupName seriesGroupName;
  List<VaxSeries> vaxSeries;
  EquivalentSeriesGroups equivalentSeriesGroups;
  bool anySeriesComplete;
  SeriesPriority highestPriority;
  int prioritizedSeries;
  int defaultSeries;
  int numScorableSeries;
  int numSeriesInProcess;
  int numCompleteSeries;
  int numSeriesWithHighestNumValidDoses;
  int numProdValidSeries;
  int numSeriesFinishingEarliest;
  int highestNumValidDoses;
  VaxDate earliestFinishDate;
  int numCompletableSeries;
  int numSeriesClosestToCompletion;
  int lowestNumDosesFromCompletion;
  bool bestGroup;

  Group(Series series, VaxPatient newPatient) {
    patient = newPatient;
    seriesGroupName = series.selectSeries.seriesGroupName;
    vaxSeries = [VaxSeries(series, patient)];
    equivalentSeriesGroups = series.equivalentSeriesGroups;
    anySeriesComplete = false;
    highestPriority = SeriesPriority.d;
    prioritizedSeries = -1;
    defaultSeries = -1;
    numScorableSeries = 0;
    numSeriesInProcess = 0;
    numCompleteSeries = 0;
    numSeriesWithHighestNumValidDoses = 0;
    numProdValidSeries = 0;
    numSeriesFinishingEarliest = 0;
    highestNumValidDoses = 0;
    earliestFinishDate = VaxDate.max();
    numCompletableSeries = 0;
    numSeriesClosestToCompletion = 0;
    lowestNumDosesFromCompletion = 99;
    bestGroup = false;
  }

  void evaluateAllPatientSeries() => vaxSeries.forEach((series) {
        series.evaluateVaccineDosesAdministered(anySeriesComplete);
        anySeriesComplete &= series.seriesStatus == SeriesStatus.complete;
      });

  void forecastEachSeries(bool immunity, bool contraindicated) {
    for (final series in vaxSeries) {
      if (immunity) {
        series.seriesStatus = SeriesStatus.immune;
      } else {
        if (series.seriesStatus == SeriesStatus.notComplete) {
          series.findNonSkippableTargetDose(
              null, SkipContext.forecast, anySeriesComplete);
          if (series.seriesStatus == SeriesStatus.notComplete) {
            series.checkContraindication();
            if (series.shouldReceiveAnotherTargetDose(
                immunity, contraindicated)) {
              series.generateForecastDates(anySeriesComplete);
              setHighestPriority(series.seriesPriority);
            }
          }
        }
      }
    }
  }

  void setHighestPriority(SeriesPriority priority) =>
      highestPriority = priority.index.compareTo(highestPriority.index) == -1
          ? priority
          : highestPriority;

  void selectPatientSeries() {
    preFilterPatientSeries();
    getScoreableNumbers();
    findOnePrioritizedSeries();
    if (prioritizedSeries == -1) {
      classifyAndScoreSeries();
      getPrioritizedFromScore();
    }
    vaxSeries = [vaxSeries[prioritizedSeries]];
  }

  void preFilterPatientSeries() => vaxSeries
      .forEach((series) => series.preFilterPatientSeries(highestPriority));

  void getScoreableNumbers() {
    for (final series in vaxSeries) {
      numCompleteSeries += series.seriesStatus == SeriesStatus.complete ? 1 : 0;
      numScorableSeries +=
          series.scorableSeries == null ? 0 : series.scorableSeries ? 1 : 0;
      numSeriesInProcess += series.targetDose != 0 &&
              series.seriesStatus == SeriesStatus.notComplete
          ? 1
          : 0;
    }
  }

  void findOnePrioritizedSeries() {
    defaultSeries = vaxSeries.indexWhere((series) => series.isDefaultSeries);
    if (numScorableSeries == 0 && defaultSeries != -1) {
      prioritizedSeries = defaultSeries;
    } else if (numScorableSeries == 1) {
      prioritizedSeries =
          vaxSeries.indexWhere((series) => series.scorableSeries);
    } else if (numCompleteSeries == 1) {
      prioritizedSeries = vaxSeries
          .indexWhere((series) => series.seriesStatus == SeriesStatus.complete);
    } else if (numSeriesInProcess == 1) {
      prioritizedSeries =
          vaxSeries.indexWhere((series) => series.targetDose != 0);
    } else if (numSeriesInProcess == 0 && defaultSeries != -1) {
      prioritizedSeries = defaultSeries;
    }
  }

  void classifyAndScoreSeries() {
    if (numCompleteSeries >= 2) {
      vaxSeries.forEach((series) =>
          series.shouldBeScored = series.seriesStatus == SeriesStatus.complete);
      vaxSeries.retainWhere((series) => series.shouldBeScored);
      scoreAllCompletedPatientSeries();
    } else if (numSeriesInProcess >= 2) {
      vaxSeries.forEach((series) => series.shouldBeScored =
          series.targetDose != 0 &&
              series.seriesStatus == SeriesStatus.notComplete);
      vaxSeries.retainWhere((series) => series.shouldBeScored);
      scoreInProcessPatientSeries();
    } else {
      vaxSeries.forEach((series) => series.shouldBeScored = true);
      scoreNoValidDoses();
    }
  }

  void scoreAllCompletedPatientSeries() {
    vaxSeries.forEach((series) {
      series.prepareToScoreSeries();
      getHighestNumValidDoses(series);
      getNumProdValidSeries(series);
      getEarliestFinishDate(series);
    });

    vaxSeries.forEach((series) {
      getNumSeriesWithHighestNumValidDoses(series);
      getNumSeriesFinishingEarliest(series);
    });
    if (numSeriesWithHighestNumValidDoses == 1) {
      awardNumSeriesWithHighestNumValidDoses(1);
    }
    if (numProdValidSeries == 1) {
      awardNumProdValidSeries(1);
    }
    if (numSeriesFinishingEarliest == 1) {
      awardNumSeriesFinishingEarliest(2);
    }
    vaxSeries.forEach((series) {
      series.notProdValidSeries(-1);
      series.notHighestNumValidDoses(highestNumValidDoses, -1);
      series.notEarliestToFinish(earliestFinishDate, -1);
    });
  }

  void scoreInProcessPatientSeries() {
    vaxSeries.forEach((series) {
      series.prepareToScoreSeries();
      getNumProdValidSeries(series);
      getHighestNumValidDoses(series);
      getEarliestFinishDate(series);
      getNumCompletableSeries(series);
      getLowestNumDosesFromCompletion(series);
    });
    vaxSeries.forEach((series) {
      getNumSeriesWithHighestNumValidDoses(series);
      getNumSeriesClosestToCompletion(series);
      getNumSeriesFinishingEarliest(series);
    });
    if (numProdValidSeries == 1) {
      awardNumProdValidSeries(2);
    }
    if (numCompletableSeries == 1) {
      awardNumCompletableSeries(3);
    }
    if (numSeriesWithHighestNumValidDoses == 1) {
      awardNumSeriesWithHighestNumValidDoses(2);
    }
    if (numSeriesClosestToCompletion == 1) {
      awardNumSeriesClosestToCompletion(2);
    }
    if (numSeriesFinishingEarliest == 1) {
      awardNumSeriesFinishingEarliest(1);
    }
    vaxSeries.forEach((series) {
      series.notProdValidSeries(-2);
      series.notCompletable(-3);
      series.notHighestNumValidDoses(highestNumValidDoses, -2);
      series.notClosestToCompletion(lowestNumDosesFromCompletion, -2);
      series.notEarliestToFinish(earliestFinishDate, -1);
    });
  }

  void scoreNoValidDoses() {
    vaxSeries.forEach((series) {
      series.prepareToScoreSeries();
      getEarliestStartDate(series);
      getNumCompletableSeries(series);
      getNumProdSeries(series);
    });
    vaxSeries.forEach((series) {
      getNumSeriesFinishingEarliest(series);
      getNumCompletableSeries(series);
    });
    if (numSeriesFinishingEarliest == 1) {
      awardNumSeriesStartingEarliest(1);
    }
    if (numCompletableSeries == 1) {
      awardNumCompletableSeries(1);
    }
    if (numProdValidSeries == 1) {
      awardNumProdValidSeries(-1);
    }
    vaxSeries.forEach((series) {
      series.notEarliestToStart(earliestFinishDate, -1);
      series.notCompletable(-1);
      series.notProdSeries(1);
    });
  }

  //I know I should just add another field, but this will be my idiosyncrasy
  void getEarliestStartDate(VaxSeries series) => earliestFinishDate =
      earliestFinishDate <= series.recommendedDose.earliestDate
          ? earliestFinishDate
          : series.recommendedDose.earliestDate;

  void getNumProdSeries(VaxSeries series) =>
      numProdValidSeries += series.isProductSeries ? 1 : 0;

  void getHighestNumValidDoses(VaxSeries series) {
    var count = 0;
    series.targetDoses.forEach((dose) => count += dose == 'valid' ? 1 : 0);

    highestNumValidDoses =
        highestNumValidDoses >= count ? highestNumValidDoses : count;
  }

  void getNumProdValidSeries(VaxSeries series) => numProdValidSeries +=
      series.isProductSeries && series.allDosesValid ? 1 : 0;

  void getNumCompletableSeries(VaxSeries series) =>
      numCompletableSeries += series.completable ? 1 : 0;

  void getEarliestFinishDate(VaxSeries series) =>
      earliestFinishDate = earliestFinishDate <= series.forecastFinishDate
          ? earliestFinishDate
          : series.forecastFinishDate;

  void getNumSeriesWithHighestNumValidDoses(VaxSeries series) =>
      numSeriesWithHighestNumValidDoses +=
          series.targetDose == highestNumValidDoses ? 1 : 0;

  void getNumSeriesFinishingEarliest(VaxSeries series) =>
      numSeriesFinishingEarliest +=
          series.forecastFinishDate == earliestFinishDate ? 1 : 0;

  void getLowestNumDosesFromCompletion(VaxSeries series) =>
      lowestNumDosesFromCompletion = lowestNumDosesFromCompletion <=
              (series.seriesDose.length - series.targetDose + 1)
          ? lowestNumDosesFromCompletion
          : series.seriesDose.length - series.targetDose + 1;

  void getNumSeriesClosestToCompletion(VaxSeries series) =>
      numSeriesClosestToCompletion +=
          series.seriesDose.length - series.targetDose + 1 ==
                  lowestNumDosesFromCompletion
              ? 1
              : 0;

  void awardNumProdValidSeries(int points) => vaxSeries
      .firstWhere((series) => series.isProductSeries && series.allDosesValid)
      .score += points;

  void awardNumCompletableSeries(int points) =>
      vaxSeries.firstWhere((series) => series.completable).score += points;

  void awardNumSeriesWithHighestNumValidDoses(int points) => vaxSeries
      .firstWhere((series) => series.targetDose == highestNumValidDoses)
      .score += points;

  void awardNumSeriesClosestToCompletion(int points) => vaxSeries
      .firstWhere((series) =>
          series.seriesDose.length - series.targetDose + 1 ==
          lowestNumDosesFromCompletion)
      .score += points;

  void awardNumSeriesFinishingEarliest(int points) => vaxSeries
      .firstWhere((series) => series.forecastFinishDate == earliestFinishDate)
      .score += points;

  void awardNumSeriesStartingEarliest(int points) => vaxSeries
      .firstWhere(
          (series) => series.recommendedDose.earliestDate == earliestFinishDate)
      .score += points;

  void isItABestSeries(Map<SeriesGroupName, Group> groups) {
    vaxSeries[0].isItABestSeries(groups, equivalentSeriesGroups);
    bestGroup = vaxSeries[0].bestSeries;
  }

  void getPrioritizedFromScore() {
    var score = -99;
    var numHighestScore = 0;
    var highestPreference = 99;
    vaxSeries.forEach(
        (series) => score = score > series.score ? score : series.score);
    vaxSeries.forEach((series) {
      numHighestScore += score == series.score ? 1 : 0;
      highestPreference = highestPreference < series.seriesPreference.index
          ? highestPreference
          : series.seriesPreference.index;
    });
    if (numHighestScore > 1) {
      prioritizedSeries = vaxSeries.indexWhere((series) =>
          series.score == score &&
          series.seriesPreference.index == highestPreference);
      vaxSeries[prioritizedSeries].prioritized = true;
    } else {
      prioritizedSeries =
          vaxSeries.indexWhere((series) => series.score == score);
    }
  }
}
