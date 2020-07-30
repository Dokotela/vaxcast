import '../export.dart';

class RecommendedDose {
  VaxDate earliestDate;
  VaxDate unadjustedRecommendedDate;
  VaxDate unadjustedPastDueDate;
  VaxDate latestDate;
  VaxDate adjustedRecommendedDate;
  VaxDate adjustedPastDueDate;
  String vaccineGuidance;
  String intervalPriority;
  List<Vaccine> recommendedVaccines;

  RecommendedDose({
    this.earliestDate,
    this.unadjustedRecommendedDate,
    this.unadjustedPastDueDate,
    this.latestDate,
    this.adjustedRecommendedDate,
    this.adjustedPastDueDate,
    this.vaccineGuidance,
    this.intervalPriority,
    this.recommendedVaccines,
  });

  void generateForecastDates(
      SeriesDose seriesDose, VaxPatient patient, List<Dose> pastDoses) {
    var lastDose = getLastDose(pastDoses);
    var age = getSeriesDoseAge(seriesDose, patient.assessmentDate);
    var maxAgeDate = patient.dob.changeIfNotNull(age.maxAge);
    var latestRecAgeDate = patient.dob.changeIfNotNull(age.latestRecAge);
    var earliestRecAgeDate = patient.dob.changeIfNotNull(age.earliestRecAge);
    var minAgeDate = patient.dob.changeIfNotNull(age.minAge);

    var minIntDate;
    var earliestRecIntDate;
    var latestRecIntDate;

    if (seriesDose.interval.isNotEmpty) {
      for (final interval in seriesDose.interval) {
        intervalPriority = interval.intervalPriority;
        if (interval.fromPrevious == FromPrevious.yes) {
          if (lastDose != null) {
            var dateGiven = lastDose.dateGiven;
            minIntDate = LatestOf(
                [minIntDate, dateGiven.changeIfNotNull(interval.minInt)]);
            earliestRecIntDate = LatestOf([
              earliestRecIntDate,
              (dateGiven.changeIfNotNull(interval.earliestRecInt))
            ]);
            latestRecIntDate = LatestOf([
              latestRecIntDate,
              (dateGiven.changeIfNotNull(interval.latestRecInt))
            ]);
          }
        } else if (interval.fromTargetDose != FromTarget.na) {
          var prevDose = pastDoses.firstWhere(
              (dose) => dose.target.value1 == interval.fromTargetDose.index,
              orElse: () => null);
          if (prevDose != null) {
            minIntDate = LatestOf([
              minIntDate,
              prevDose.dateGiven.changeIfNotNull(interval.minInt)
            ]);
            earliestRecIntDate = LatestOf([
              earliestRecIntDate,
              prevDose.dateGiven.changeIfNotNull(interval.earliestRecInt)
            ]);
            latestRecIntDate = LatestOf([
              latestRecIntDate,
              (prevDose.dateGiven.changeIfNotNull(interval.latestRecInt))
            ]);
          }
        } else if (interval.fromMostRecent.isNotEmpty) {
          var pastCvx = interval.fromMostRecent.split(';');
          var indexDose = patient.pastImmunizations.lastWhere(
              (dose) => pastCvx.contains(dose.cvx),
              orElse: () => null);
          if (indexDose != null) {
            minIntDate = LatestOf([
              minIntDate,
              indexDose.dateGiven.changeIfNotNull(interval.minInt)
            ]);
            earliestRecIntDate = LatestOf([
              earliestRecIntDate,
              indexDose.dateGiven.changeIfNotNull(interval.earliestRecInt)
            ]);
            latestRecIntDate = LatestOf([
              latestRecIntDate,
              indexDose.dateGiven.changeIfNotNull(interval.latestRecInt)
            ]);
          }
        }
      }
    }

    var conflictCvx = <Cvx>[];
    if (seriesDose.allowableVaccine.isNotEmpty) {
      seriesDose.allowableVaccine.forEach((dose) {
        if (!conflictCvx.contains(dose.cvx)) conflictCvx.add(dose.cvx);
      });
    }
    if (seriesDose.preferableVaccine.isNotEmpty) {
      seriesDose.preferableVaccine.forEach((dose) {
        if (!conflictCvx.contains(dose.cvx)) conflictCvx.add(dose.cvx);
      });
    }
    var latestConflictEndIntDate = <VaxDate>[];
    for (final liveDose in patient.liveVirusList) {
      for (final conflict in SupportingData
          .scheduleSupportingData.liveVirusConflicts.liveVirusConflict) {
        if (conflict.previous.cvx == liveDose.cvx &&
            conflictCvx.contains(conflict.current.cvx)) {
          latestConflictEndIntDate.add(liveDose.dateGiven
              .changeIfNotNull(conflict.minConflictEndInterval));
        }
      }
    }

    var inadvertent = pastDoses.lastIndexWhere(
        (dose) => dose.evaluation?.value2 == EvalReason.inadvertent);
    var lastInadvertentDose = inadvertent == -1 ? null : pastDoses[inadvertent];

    var seasonRecStartDate = seriesDose.seasonalRecommendation != null
        ? seriesDose.seasonalRecommendation.startDate != null
            ? VaxDate.yyyymmdd(seriesDose.seasonalRecommendation.startDate)
            : VaxDate.min()
        : VaxDate.min();

    //ToDo: intervals from conditions

    earliestDate = LatestOf([
      minAgeDate,
      minIntDate,
      LatestOf(latestConflictEndIntDate),
      seasonRecStartDate,
      lastInadvertentDose?.dateGiven,
    ]);

    unadjustedRecommendedDate =
        earliestRecAgeDate ?? earliestRecIntDate ?? earliestDate;
    unadjustedPastDueDate = latestRecAgeDate != null
        ? latestRecAgeDate.change('- 1 day')
        : latestRecIntDate != null ? latestRecIntDate.change('- 1 day') : null;
    latestDate = maxAgeDate == null ? null : maxAgeDate.change('- 1 day');
    adjustedRecommendedDate =
        LatestOf([earliestDate, unadjustedRecommendedDate]);
    adjustedPastDueDate = unadjustedPastDueDate != null
        ? LatestOf([earliestDate, unadjustedPastDueDate])
        : null;

    recommendedVaccines = <Vaccine>[];
    recommendedVaccines = seriesDose.preferableVaccine;
  }

  void invalidate() {
    earliestDate = null;
    adjustedRecommendedDate = null;
    adjustedPastDueDate = null;
    latestDate = null;
  }
}

Dose getLastDose(List<Dose> pastDoses) => pastDoses == null
    ? null
    : pastDoses.isEmpty
        ? null
        : pastDoses.lastWhere(
            (dose) => dose.evaluation?.value2 != EvalReason.inadvertent,
            orElse: () => null);

VaxAge getSeriesDoseAge(SeriesDose seriesDose, VaxDate assessmentDate) =>
    seriesDose.age.length == 1
        ? seriesDose.age[0]
        : VaxDate.yyyymmdd(seriesDose.age[0].cessationDate == ''
                    ? '29991231'
                    : seriesDose.age[0].cessationDate) >=
                assessmentDate
            ? seriesDose.age[0]
            : seriesDose.age[1];
