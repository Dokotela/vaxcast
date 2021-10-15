// import 'package:dartz/dartz.dart';

// import '../vaxcast.dart';

// class VaxSeries {
//   VaxPatient patient;
//   SeriesStatus seriesStatus;
//   List<Dose> pastDoses;
//   String seriesName;
//   int targetDose;
//   List<SeriesDose> seriesDose;
//   List<TargetStatus> targetDoses;
//   TargetDisease targetDisease;
//   ForecastReason forecastReason;
//   RecommendedDose recommendedDose;
//   SeriesPriority seriesPriority;
//   bool scorableSeries;
//   String minAgeToStart;
//   String maxAgeToStart;
//   bool isDefaultSeries;
//   bool shouldBeScored;
//   bool allDosesValid;
//   VaxDate forecastFinishDate;
//   int score;
//   bool isProductSeries;
//   bool completable;
//   bool bestSeries;
//   bool isStandardSeries;
//   SeriesPreference seriesPreference;
//   bool prioritized;
//   // String seriesVaccineGroup;
//   // String seriesAdminGuidance;

//   VaxSeries(Series series, VaxPatient newPatient) {
//     patient = newPatient;
//     seriesStatus = SeriesStatus.notComplete;
//     pastDoses = <Dose>[];
//     seriesName = series.seriesName;
//     targetDose = 0;
//     seriesDose = series.seriesDose;
//     targetDoses = series.seriesDose == null
//         ? null
//         : List.filled(series.seriesDose.length, TargetStatus.notSatisfied);
//     targetDisease = series.targetDisease;
//     seriesPriority = series.selectSeries.seriesPriority;
//     scorableSeries = false;
//     minAgeToStart = series.selectSeries.minAgeToStart;
//     maxAgeToStart = series.selectSeries.maxAgeToStart;
//     isDefaultSeries = series.selectSeries.defaultSeries == Binary.yes;
//     shouldBeScored = false;
//     allDosesValid = false;
//     forecastFinishDate = VaxDate.max();
//     score = 0;
//     isProductSeries = series.selectSeries.productPath == Binary.yes;
//     completable = true;
//     bestSeries = false;
//     isStandardSeries = series.seriesType == SeriesType.standard;
//     seriesPreference = series.selectSeries.seriesPreference;
//     prioritized = false;
//     // seriesVaccineGroup = series.seriesVaccineGroup;
//     // seriesAdminGuidance = series.seriesAdminGuidance;
//   }

//   bool seriesIsNotComplete() => seriesStatus == SeriesStatus.notComplete;

//   void evaluateVaccineDosesAdministered(bool anySeriesComplete) {
//     if (pastDoses.isNotEmpty) {
//       pastDoses.sort((a, b) => a.dateGiven.compareTo(b.dateGiven));
//       for (final dose in pastDoses) {
//         if (dose.hasNotfinishedEvaluation()) {
//           dose.patient = patient;
//           if (seriesIsNotComplete()) {
//             findNonSkippableTargetDose(
//                 dose, SkipContext.evaluation, anySeriesComplete);
//           }
//           if (seriesIsNotComplete()) {
//             dose.evaluatePastDose(
//                 seriesDose[targetDose], targetDose, pastDoses);
//             if (dose.valid() && seriesIsNotComplete()) {
//               completeTargetDose(dose.target.value2, dose.dateGiven);
//             }
//           }
//         } else if (dose.evaluation?.value1 == EvalStatus.notValid) {
//           dose.unsatisfiedTarget();
//         }
//       }
//     }
//   }

//   void findNonSkippableTargetDose(
//       Dose dose, SkipContext context, bool anySeriesComplete) {
//     var skip = true;
//     while (skip) {
//       var refDate = dose?.dateGiven ?? patient.assessmentDate;
//       skip = shouldDoseBeSkipped(context, anySeriesComplete, refDate);
//       if (skip) {
//         completeTargetDose(TargetStatus.skipped, null);
//         skip = seriesStatus == SeriesStatus.notComplete;
//       }
//     }
//   }

//   bool shouldDoseBeSkipped(
//       SkipContext context, bool anySeriesComplete, VaxDate refDate) {
//     var curTargetSkip = seriesDose[targetDose].conditionalSkip;
//     return curTargetSkip.isEmpty
//         ? false
//         : correctContext(curTargetSkip[0], context)
//             ? isSkippable(curTargetSkip[0], anySeriesComplete, refDate, context)
//             : curTargetSkip.length == 1
//                 ? false
//                 : correctContext(curTargetSkip[1], context)
//                     ? isSkippable(
//                         curTargetSkip[1], anySeriesComplete, refDate, context)
//                     : false;
//   }

//   bool correctContext(ConditionalSkip oldSkip, SkipContext curContext) =>
//       (oldSkip.context == SkipContext.both || oldSkip.context == curContext);

//   bool isSkippable(ConditionalSkip newSkip, bool anySeriesComplete,
//       VaxDate refDate, SkipContext context) {
//     for (final vaxSet in newSkip.set_) {
//       if (shouldBeSkipped(vaxSet, anySeriesComplete, refDate, context))
//         return true;
//     }
//     return false;
//   }

//   bool shouldBeSkipped(VaxSet vaxSet, bool anySeriesComplete, VaxDate refDate,
//           SkipContext context) =>
//       canUseOrLogic(vaxSet.conditionLogic)
//           ? orCondition(vaxSet, anySeriesComplete, refDate, context)
//           : andCondition(vaxSet, anySeriesComplete, refDate, context);

//   bool canUseOrLogic(String logic) => (logic == 'OR' || logic == '');

//   bool orCondition(VaxSet vaxSet, bool anySeriesComplete, VaxDate refDate,
//       SkipContext context) {
//     for (final condition in vaxSet.condition) {
//       if (isSkipConditionMet(condition, anySeriesComplete, refDate, context)) {
//         return true;
//       }
//     }
//     return false;
//   }

//   bool andCondition(VaxSet vaxSet, bool anySeriesComplete, VaxDate refDate,
//       SkipContext context) {
//     for (final condition in vaxSet.condition) {
//       if (!isSkipConditionMet(condition, anySeriesComplete, refDate, context)) {
//         return false;
//       }
//     }
//     return true;
//   }

//   bool isSkipConditionMet(Condition condition, bool anySeriesComplete,
//       VaxDate refDate, SkipContext context) {
//     switch (condition.conditionType) {
//       case ConditionType.age:
//         return ageCondition(condition, refDate);

//       case ConditionType.completedSeries:
//         return anySeriesComplete;

//       case ConditionType.interval:
//         return intervalCondition(condition, refDate);

//       case ConditionType.countByAge:
//         return countCondition(condition, refDate, context);

//       case ConditionType.countByDate:
//         return countCondition(condition, refDate, context);
//     }
//     return false;
//   }

//   bool ageCondition(Condition condition, VaxDate refDate) =>
//       patient.dob.minIfNull(condition.beginAge) <= refDate &&
//       refDate < patient.dob.maxIfNull(condition.endAge);

//   bool intervalCondition(Condition condition, VaxDate refDate) {
//     if (pastDoses.isEmpty) return false;
//     var date = VaxDate.min();
//     pastDoses.forEach((dose) {
//       if (dose.dateGiven < refDate) {
//         date = dose.dateGiven > date ? dose.dateGiven : date;
//       }
//     });
//     return date == VaxDate.min()
//         ? false
//         : refDate >= date.change(condition.interval);
//   }

//   bool countCondition(
//       Condition condition, VaxDate refDate, SkipContext context) {
//     if (pastDoses.isEmpty) return false;
//     var count = 0;
//     var doses = <Dose>[];
//     pastDoses.forEach((dose) {
//       if (context == SkipContext.forecast) {
//         if (dose.dateGiven <= refDate) doses.add(dose);
//       } else {
//         if (dose.dateGiven < refDate) doses.add(dose);
//       }
//     });
//     for (var i = 0; i < doses.length; i++) {
//       var addToCount = true;
//       if (condition.conditionType == ConditionType.countByAge) {
//         addToCount = addToCountByAge(condition, doses.elementAt(i));
//       } else if (condition.conditionType == ConditionType.countByDate) {
//         addToCount = addToCountByDate(condition, doses.elementAt(i));
//       }
//       if (condition.vaccineTypes.isNotEmpty) {
//         addToCount &= addToCountByType(condition, doses.elementAt(i));
//       }
//       if (condition.doseType == DoseType.valid) {
//         addToCount &= pastDoses[i].valid();
//       }

//       count += addToCount ? 1 : 0;
//     }
//     return condition.doseCountLogic == DoseCountLogic.greaterThan
//         ? count > int.parse(condition.doseCount)
//         : condition.doseCountLogic == DoseCountLogic.equalTo
//             ? count == int.parse(condition.doseCount)
//             : count < int.parse(condition.doseCount);
//   }

//   bool addToCountByAge(Condition condition, Dose dose) =>
//       patient.dob.maxIfNull(condition.endAge) > dose.dateGiven &&
//       dose.dateGiven >= patient.dob.minIfNull(condition.beginAge);

//   bool addToCountByDate(Condition condition, Dose dose) =>
//       VaxDate.min().fromNullableString(condition.startDate) <= dose.dateGiven &&
//       dose.dateGiven < VaxDate.max().fromNullableString(condition.endDate);

//   bool addToCountByType(Condition condition, Dose dose) {
//     var vaxList = condition.vaccineTypes.split(';');
//     var thisCvx = dose.cvx.toString().split('code')[1];
//     return vaxList.indexWhere(
//             (cvxEntry) => int.parse(cvxEntry) == int.parse(thisCvx)) !=
//         -1;
//   }

//   void completeTargetDose(TargetStatus status, VaxDate dateGiven) {
//     targetDose += 1;
//     Tuple2<SeriesStatus, TargetStatus> newStatus =
//         completed(status, dateGiven, seriesDose, targetDose);
//     if (newStatus == null) {
//       targetDose -= 1;
//     } else {
//       seriesStatus = newStatus.value1 ?? seriesStatus;
//       targetDoses[targetDose - 1] = newStatus.value2;
//     }
//   }

//   Tuple2<SeriesStatus, TargetStatus> completed(TargetStatus status,
//           VaxDate dateGiven, List<SeriesDose> seriesDose, int targetDose) =>
//       targetDose == seriesDose.length &&
//               seriesDose.last.recurringDose == Binary.yes
//           ? completeRecurring(status, dateGiven, seriesDose.last)
//           : completeNonRecurring(status, dateGiven, seriesDose, targetDose);

//   Tuple2<SeriesStatus, TargetStatus> completeRecurring(
//           TargetStatus status, VaxDate dateGiven, SeriesDose seriesDose) =>
//       seriesDose.seasonalRecommendation == null
//           ? null
//           : status == TargetStatus.skipped ||
//                   (VaxDate.max().fromNullableString(
//                               seriesDose.seasonalRecommendation.endDate) >
//                           dateGiven &&
//                       dateGiven >=
//                           VaxDate.min().fromNullableString(
//                               seriesDose.seasonalRecommendation.startDate))
//               ? Tuple2(SeriesStatus.complete, status)
//               : null;

//   Tuple2<SeriesStatus, TargetStatus> completeNonRecurring(TargetStatus status,
//           VaxDate dateGiven, List<SeriesDose> seriesDose, int targetDose) =>
//       seriesDose[targetDose - 1].seasonalRecommendation != null
//           ? status == TargetStatus.satisfied || status == TargetStatus.skipped
//               ? Tuple2(null, status)
//               : null
//           : targetDose == seriesDose.length
//               ? Tuple2(SeriesStatus.complete, status)
//               : Tuple2(null, status);

//   void checkContraindication() {
//     if (seriesStatus != SeriesStatus.contraindicated) {
//       if (contraindicated(seriesDose[targetDose])) {
//         seriesStatus = SeriesStatus.contraindicated;
//       }
//     }
//   }

//   bool contraindicated(SeriesDose seriesDose) {
//     if (patient.conditions.isNotEmpty &&
//         SupportingData.antigenSupportingData[targetDisease].contraindications
//                 .vaccine !=
//             null) {
//       for (final condition in patient.conditions) {
//         var obsCondition = SupportingData.antigenSupportingData[targetDisease]
//             .contraindications.vaccine.contraindication
//             .firstWhere(
//                 (contraindication) =>
//                     contraindication.observationCode == condition,
//                 orElse: () => null);
//         if (obsCondition != null) {
//           var dob = patient.dob;
//           var assessmentDate = patient.assessmentDate;
//           var contraindicatedCvx = <Cvx>[];
//           obsCondition.contraindicatedVaccine.forEach((vaccine) {
//             if (dob.minIfNull(vaccine.beginAge) <= assessmentDate &&
//                 assessmentDate < dob.maxIfNull(vaccine.endAge)) {
//               contraindicatedCvx.add(vaccine.cvx);
//             }
//           });
//           seriesDose.preferableVaccine
//               .removeWhere((vax) => contraindicatedCvx.contains(vax.cvx));
//         }
//       }
//     }
//     return seriesDose.preferableVaccine.isEmpty;
//   }

//   bool shouldReceiveAnotherTargetDose(
//       bool immunity, bool antigenContraindicated) {
//     Tuple2<SeriesStatus, ForecastReason> reason = checkIfAnotherDoseNeeded(
//       immunity,
//       antigenContraindicated,
//     );

//     seriesStatus = reason.value1;
//     forecastReason = reason.value2 ?? forecastReason;
//     return seriesStatus == SeriesStatus.notComplete;
//   }

//   Tuple2<SeriesStatus, ForecastReason> checkIfAnotherDoseNeeded(
//     bool immunity,
//     bool antigenContraindicated,
//   ) {
//     var newSeriesDose = seriesDose[targetDose];
//     VaxDate dob = patient.dob;
//     if (!targetDoses.contains(TargetStatus.notSatisfied)) {
//       if (targetDoses.contains(TargetStatus.satisfied)) {
//         return Tuple2(SeriesStatus.complete, ForecastReason.complete);
//       } else {
//         return Tuple2(
//             SeriesStatus.notRecommended, ForecastReason.notRecommended);
//       }
//     } else if (seriesStatus == SeriesStatus.immune || immunity) {
//       return Tuple2(SeriesStatus.immune, ForecastReason.notRecommended);
//     } else if (seriesStatus == SeriesStatus.contraindicated ||
//         antigenContraindicated) {
//       return Tuple2(
//           SeriesStatus.contraindicated, ForecastReason.notRecommended);
//     } else if (patient.assessmentDate >=
//         dob.maxIfNull(
//             getApplicableAge(newSeriesDose.age, patient.assessmentDate)
//                 .maxAge)) {
//       return Tuple2(SeriesStatus.agedOut, ForecastReason.maximumAge);
//     } else if (newSeriesDose.seasonalRecommendation == null) {
//       return Tuple2(SeriesStatus.notComplete, null);
//     } else if (patient.assessmentDate >
//         VaxDate.yyyymmdd(
//             newSeriesDose?.seasonalRecommendation?.endDate ?? '29991231')) {
//       return Tuple2(SeriesStatus.notComplete, ForecastReason.seasonalPast);
//     } else {
//       return Tuple2(SeriesStatus.notComplete, null);
//     }
//   }

//   VaxAge getApplicableAge(List<VaxAge> age, VaxDate assessmentDate) =>
//       age.length == 1
//           ? age[0]
//           : VaxDate.yyyymmdd(age[0].cessationDate.isEmpty
//                       ? '29991231'
//                       : age[0].cessationDate) >=
//                   assessmentDate
//               ? age[0]
//               : age[1];

//   void generateForecastDates(bool anySeriesComplete) {
//     var forecast = true;
//     while (seriesStatus == SeriesStatus.notComplete && forecast) {
//       recommendedDose = RecommendedDose();
//       recommendedDose.generateForecastDates(
//           seriesDose[targetDose], patient, pastDoses);
//       if (shouldDoseBeSkipped(SkipContext.forecast, anySeriesComplete,
//           recommendedDose.earliestDate)) {
//         completeTargetDose(TargetStatus.skipped, null);
//       } else {
//         forecast = false;
//       }
//     }
//     validateForecastedDates();
//   }

//   void validateForecastedDates() {
//     if ((recommendedDose?.earliestDate ?? VaxDate.min()) >=
//         (recommendedDose?.latestDate ?? VaxDate.max())) {
//       seriesStatus = SeriesStatus.agedOut;
//       forecastReason = ForecastReason.maximumAge;
//       recommendedDose.invalidate();
//     }
//   }

//   void preFilterPatientSeries(SeriesPriority highPriority) {
//     scorableSeries = highEnoughPriority(seriesPriority, highPriority) &&
//         isOldEnough(
//             patient.dob, patient.assessmentDate, minAgeToStart, seriesStatus) &&
//         startedOnTime(pastDoses, patient.dob, maxAgeToStart);
//   }

//   bool highEnoughPriority(
//           SeriesPriority seriesPriority, SeriesPriority highPriority) =>
//       seriesPriority.index.compareTo(highPriority.index) != 1;

//   bool isOldEnough(
//     VaxDate dob,
//     VaxDate assessmentDate,
//     String minAgeToStart,
//     SeriesStatus seriesStatus,
//   ) =>
//       dob.minIfNull(minAgeToStart) <= assessmentDate ||
//       seriesStatus == SeriesStatus.complete;

//   bool startedOnTime(List<Dose> pastDoses, VaxDate dob, String maxAgeToStart) {
//     if (pastDoses.isEmpty) return true;
//     var dose = pastDoses.indexWhere((dose) => dose.valid());
//     return dose == -1
//         ? true
//         : pastDoses[dose].dateGiven < dob.maxIfNull(maxAgeToStart);
//   }

//   void prepareToScoreSeries() {
//     allDosesValid = pastDoses.indexWhere((dose) => !dose.valid()) == -1;
//     if (seriesStatus == SeriesStatus.complete) {
//       forecastFinishDate = VaxDate.min();
//     } else {
//       forecastFinishDate = recommendedDose.earliestDate;
//       for (var i = targetDose + 1; i < seriesDose.length; i++) {
//         if (seriesDose[i].interval.isNotEmpty) {
//           if (seriesDose[i].interval[0].fromPrevious == FromPrevious.yes) {
//             forecastFinishDate =
//                 forecastFinishDate.change(seriesDose[i].interval[0].absMinInt);
//           }
//         }
//         forecastFinishDate = forecastFinishDate >
//                 patient.dob.minIfNull(
//                     seriesDoseAge(seriesDose[i], patient.assessmentDate)
//                         .absMinAge)
//             ? forecastFinishDate
//             : patient.dob.minIfNull(
//                 seriesDoseAge(seriesDose[i], patient.assessmentDate).absMinAge);
//       }
//     }
//     String seriesAge =
//         seriesDoseAge(seriesDose.last, patient.assessmentDate).maxAge;
//     completable = forecastFinishDate < patient.dob.maxIfNull(seriesAge);
//   }

//   VaxAge seriesDoseAge(SeriesDose seriesDose, VaxDate assessmentDate) =>
//       seriesDose.age.length == 1
//           ? seriesDose.age[0]
//           : VaxDate.yyyymmdd(seriesDose.age[0].cessationDate == ''
//                       ? '29991231'
//                       : seriesDose.age[0].cessationDate) >=
//                   assessmentDate
//               ? seriesDose.age[0]
//               : seriesDose.age[1];

//   void notProdValidSeries(int points) =>
//       score += isProductSeries && allDosesValid ? 0 : points;

//   void notProdSeries(int points) => score += isProductSeries ? 0 : points;

//   void notCompletable(int points) => score += completable ? 0 : points;

//   void notHighestNumValidDoses(int highestNumValidDoses, int points) =>
//       score += targetDose == highestNumValidDoses ? 0 : points;

//   void notClosestToCompletion(int lowestNumDosesFromCompletion, int points) =>
//       score +=
//           seriesDose.length - targetDose + 1 == lowestNumDosesFromCompletion
//               ? 0
//               : points;

//   void notEarliestToFinish(VaxDate earliestFinishDate, int points) =>
//       score += forecastFinishDate == earliestFinishDate ? 0 : points;

//   void notEarliestToStart(VaxDate earliestFinishDate, int points) =>
//       score += recommendedDose.earliestDate == earliestFinishDate ? 0 : points;

//   void isItABestSeries(Map<SeriesGroupName, Group> groups,
//       EquivalentSeriesGroups equivalentSeriesGroups) {
//     if (seriesStatus == SeriesStatus.complete ||
//         equivalentSeriesGroups == null) {
//       bestSeries = true;
//     } else {
//       var equivalentGroupName = groups.keys.firstWhere(
//           (seriesGroupName) =>
//               groups[seriesGroupName].equivalentSeriesGroups ==
//               equivalentSeriesGroups,
//           orElse: () => null);
//       bestSeries = equivalentGroupName == null
//           ? true
//           : groups[equivalentGroupName].vaxSeries[0].seriesStatus ==
//                   SeriesStatus.complete
//               ? false
//               : !isStandardSeries
//                   ? true
//                   : !groups[equivalentGroupName].vaxSeries[0].isStandardSeries
//                       ? false
//                       : true;
//     }
//   }
// }
