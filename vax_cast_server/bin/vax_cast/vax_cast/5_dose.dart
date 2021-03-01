import 'package:dartz/dartz.dart';

import '../vax_cast.dart';

class Dose {
  String doseId;
  VaxDate dateGiven;
  String doseCondition;
  double volume;
  Cvx cvx;
  List<TargetDisease> antigens;
  Tuple2<int, TargetStatus> target;
  Tuple2<EvalStatus, EvalReason> evaluation;
  VaxPatient patient;
  String mvx;
  Tuple2<bool, EvalReason> validAge;
  Tuple2<bool, EvalReason> prefInt;
  Tuple2<bool, EvalReason> allowInt;
  Tuple2<bool, String> conflict;
  Tuple2<bool, EvalReason> preferVax;
  Tuple2<bool, EvalReason> allowVax;

  Dose({
    String vol,
    this.doseId,
    this.dateGiven,
    this.doseCondition,
    this.cvx,
    this.antigens,
    this.patient,
    this.mvx,
    evaluation,
  }) {
    vol ??= '-1';
    volume = double.tryParse(vol);
    this.evaluation =
        evaluation ?? Tuple2(EvalStatus.notEvaluated, EvalReason.notEvaluated);
  }

  Dose.copy(Dose oldDose) {
    volume = oldDose.volume;
    doseId = oldDose.doseId;
    target = oldDose.target;
    dateGiven = oldDose.dateGiven;
    doseCondition = oldDose.doseCondition;
    cvx = oldDose.cvx;
    mvx = oldDose.mvx;
    evaluation = oldDose.evaluation;
    antigens = oldDose.antigens;
  }

  bool hasNotfinishedEvaluation() =>
      evaluation?.value1 == EvalStatus.notEvaluated;

  void unsatisfiedTarget() => target = Tuple2(-1, TargetStatus.notSatisfied);

  bool invalid() => evaluation?.value1 != EvalStatus.valid;

  bool valid() => evaluation?.value1 == EvalStatus.valid;

  void setNotValid(EvalReason reason) {
    unsatisfiedTarget();
    evaluation = Tuple2(EvalStatus.notValid, reason);
  }

  void evaluatePastDose(
      SeriesDose seriesDose, int targetDose, List<Dose> pastDoses) {
    !inadvertentDose(seriesDose)
        ? evaluateNotInadvertentDose(seriesDose, targetDose, pastDoses)
        : setNotValid(EvalReason.inadvertent);
  }

  void evaluateNotInadvertentDose(
      SeriesDose seriesDose, int targetDose, List<Dose> pastDoses) {
    var currentIndex = pastDoses.indexWhere((dose) => dose.doseId == doseId);
    var pastDose = currentIndex == -1 ? null : pastDoses[currentIndex];
    var doseAge = setDoseAge(seriesDose.age, dateGiven);
    validAge =
        validateAge(doseAge, pastDose, targetDose, dateGiven, patient.dob);
    validAge.value1
        ? evaluateValidAgeDose(seriesDose, targetDose, pastDoses)
        : setNotValid(validAge.value2 == EvalReason.tooYoung
            ? EvalReason.tooYoung
            : validAge.value2 == EvalReason.tooOld
                ? EvalReason.inappropriate
                : EvalReason.notEvaluated);
  }

  VaxAge setDoseAge(List<VaxAge> ageList, VaxDate dateGiven) {
    for (var age in ageList) {
      if (age.effectiveDate.isEmpty && age.cessationDate.isEmpty) {
        return age;
      } else if (age.effectiveDate.isNotEmpty && age.cessationDate.isEmpty) {
        if (VaxDate.yyyymmdd(age.effectiveDate) <= dateGiven) {
          return age;
        }
      } else if (age.effectiveDate.isEmpty && age.cessationDate.isNotEmpty) {
        if (dateGiven < VaxDate.yyyymmdd(age.cessationDate)) {
          return age;
        }
      } else if (dateGiven < VaxDate.yyyymmdd(age.cessationDate) &&
          VaxDate.yyyymmdd(age.effectiveDate) <= dateGiven) {
        return age;
      }
    }
    return ageList[0];
  }

  void evaluateValidAgeDose(
      SeriesDose seriesDose, int targetDose, List<Dose> pastDoses) {
    setPreferableIntervals(seriesDose, pastDoses);
    setAllowableIntervals(seriesDose, pastDoses);
    (allowInt?.value1 ?? false) || (prefInt?.value1 ?? true)
        ? evaluateValidIntervalDose(seriesDose, targetDose, pastDoses)
        : setNotValid(prefInt.value2 == EvalReason.tooSoon ||
                allowInt.value2 == EvalReason.tooSoon
            ? EvalReason.tooSoon
            : EvalReason.notEvaluated);
  }

  void evaluateValidIntervalDose(
      SeriesDose seriesDose, int targetDose, List<Dose> pastDoses) {
    evalLiveVirusConflict(patient, cvx, dateGiven, pastDoses);
    !conflict.value1
        ? evaluateNonConflictedDose(seriesDose, targetDose)
        : setNotValid(EvalReason.productConflict);
  }

  void evaluateNonConflictedDose(SeriesDose seriesDose, int targetDose) {
    preferVax = preferable(seriesDose, this);
    allowVax = allowable(seriesDose, this);
    !allowVax.value1 && !preferVax.value1
        ? setNotValid(EvalReason.inappropriate)
        : evaluateAllowedDose(seriesDose, targetDose);
  }

  void evaluateAllowedDose(SeriesDose seriesDose, int targetDose) {
    if (seriesDose.seasonalRecommendation == null) {
      target = Tuple2(targetDose, TargetStatus.satisfied);
      evaluation = Tuple2(EvalStatus.valid, null);
    } else {
      final startDate = VaxDate.fromString(
          seriesDose.seasonalRecommendation?.startDate ?? VaxDate.min());
      final endDate = VaxDate.fromString(
          seriesDose.seasonalRecommendation?.endDate ?? VaxDate.max());
      if (startDate <= dateGiven && dateGiven <= endDate) {
        target = Tuple2(targetDose, TargetStatus.satisfied);
        evaluation = Tuple2(EvalStatus.valid, null);
      } else {
        unsatisfiedTarget();
        evaluation = Tuple2(EvalStatus.valid, null);
      }
    }
  }

  bool inadvertentDose(SeriesDose seriesDose) =>
      seriesDose.inadvertentVaccine.isEmpty
          ? false
          : seriesDose.inadvertentVaccine
                      .indexWhere((vaccine) => vaccine.cvx == cvx) ==
                  -1
              ? false
              : true;

  Tuple2<bool, EvalReason> validateAge(VaxAge age, Dose pastDose,
      int targetDose, VaxDate dateGiven, VaxDate dob) {
    var absMinAgeDate = dob.minIfNull(age.absMinAge);
    var minAgeDate = dob.minIfNull(age.minAge);
    var maxAgeDate = dob.maxIfNull(age.maxAge);
    return dateGiven < absMinAgeDate
        ? Tuple2(false, EvalReason.tooYoung)
        : absMinAgeDate <= dateGiven && dateGiven < minAgeDate
            ? evalAgeGracePeriod(pastDose, targetDose)
            : minAgeDate <= dateGiven && dateGiven < maxAgeDate
                ? Tuple2(true, EvalReason.valid)
                : dateGiven >= maxAgeDate
                    ? Tuple2(false, EvalReason.tooOld)
                    : Tuple2(false, EvalReason.notEvaluated);
  }

  Tuple2<bool, EvalReason> evalAgeGracePeriod(Dose pastDose, int targetDose) =>
      pastDose == null
          ? Tuple2(true, EvalReason.gracePeriod)
          : targetDose == 0
              ? Tuple2(true, EvalReason.gracePeriod)
              : ((pastDose?.validAge?.value1 ?? true) &&
                      ((pastDose?.allowInt?.value1 ?? true) ||
                          (pastDose?.prefInt?.value1 ?? true)))
                  ? Tuple2(true, EvalReason.gracePeriod)
                  : Tuple2(false, EvalReason.tooYoung);

  void setPreferableIntervals(SeriesDose seriesDose, List<Dose> pastDoses) =>
      seriesDose.interval == null
          ? prefInt = Tuple2(true, EvalReason.valid)
          : pastDoses.length == 1
              ? prefInt = Tuple2(true, EvalReason.valid)
              : pastDoses.indexWhere((dose) => dose.doseId == doseId) == 0
                  ? prefInt = Tuple2(true, EvalReason.valid)
                  : isPreferableInterval(seriesDose, pastDoses);

  void isPreferableInterval(SeriesDose seriesDose, List<Dose> pastDoses) {
    for (final interval in seriesDose.interval) {
      var applyInterval = interval.effectiveDate.isNotEmpty
          ? dateGiven >= VaxDate.yyyymmdd(interval.effectiveDate)
          : true;
      applyInterval = interval.cessationDate.isNotEmpty
          ? applyInterval &&
              dateGiven < VaxDate.yyyymmdd(interval.cessationDate)
          : applyInterval;
      var index = -1;
      if (applyInterval) {
        if (interval.fromPrevious == FromPrevious.yes) {
          index =
              pastDoses.indexWhere((pastDose) => pastDose.doseId == doseId) - 1;
        } else if (interval.fromTargetDose != FromTarget.na) {
          index = pastDoses.indexWhere((pastDose) =>
              pastDose.target.value1 == interval.fromTargetDose.index);
        } else if (interval.fromMostRecent.isNotEmpty) {
          index = pastDoses.lastIndexWhere((pastDose) {
            var vaxList = interval.fromMostRecent.split(';');
            var thisCvx = pastDose.cvx.toString().split('code')[1];
            return vaxList.indexWhere((cvxEntry) => cvxEntry == thisCvx) != -1;
          });
        } else {
          index = -1;
        }
      }

      var absMinIntDate;
      var minIntDate;
      if (index == -1) {
        absMinIntDate = minIntDate = VaxDate.min();
      } else {
        absMinIntDate =
            pastDoses[index].dateGiven.minIfNull(interval.absMinInt);
        minIntDate = pastDoses[index].dateGiven.minIfNull(interval.minInt);
      }

      if (dateGiven < absMinIntDate) {
        prefInt = setPrefInt(false, EvalReason.tooSoon, prefInt);
      } else {
        if (absMinIntDate <= dateGiven && dateGiven < minIntDate) {
          if (seriesDose.doseNumber == 1) {
            prefInt = setPrefInt(true, EvalReason.gracePeriod, prefInt);
          } else {
            var previousDose = pastDoses[index];
            if ((previousDose?.validAge?.value1 ?? true) &&
                ((previousDose?.allowInt?.value1 ?? true) ||
                    (previousDose?.prefInt?.value1 ?? true))) {
              prefInt = setPrefInt(true, EvalReason.gracePeriod, prefInt);
            } else {
              prefInt = setPrefInt(false, EvalReason.tooSoon, prefInt);
            }
          }
        } else if (minIntDate <= dateGiven) {
          prefInt = setPrefInt(true, EvalReason.gracePeriod, prefInt);
        } else {
          prefInt = setPrefInt(false, EvalReason.tooSoon, prefInt);
        }
      }
    }
  }

  Tuple2<bool, EvalReason> setPrefInt(
          bool pref, EvalReason reason, Tuple2<bool, EvalReason> prefInt) =>
      Tuple2(
          prefInt == null ? pref : prefInt.value1 && pref,
          prefInt == null || prefInt?.value2 == EvalReason.valid
              ? reason
              : prefInt.value2);

  void setAllowableIntervals(SeriesDose seriesDose, List<Dose> pastDoses) =>
      allowInt = seriesDose.allowableInterval == null
          ? Tuple2(false, EvalReason.notEvaluated)
          : pastDoses.length == 1
              ? Tuple2(true, EvalReason.valid)
              : pastDoses.indexWhere((pastDose) => pastDose.doseId == doseId) ==
                      0
                  ? Tuple2(true, EvalReason.valid)
                  : isAllowableInterval(
                      seriesDose.allowableInterval, pastDoses);

  Tuple2<bool, EvalReason> isAllowableInterval(
      Interval allowable, List<Dose> pastDoses) {
    var pastIndex;
    if (allowable.fromPrevious == FromPrevious.yes) {
      pastIndex =
          pastDoses.indexWhere((pastDose) => pastDose.doseId == doseId) - 1;
    } else if (allowable.fromTargetDose != FromTarget.na) {
      pastIndex = pastDoses.indexWhere(
          (dose) => dose.target.value1 == allowable.fromTargetDose.index);
    }
    return dateGiven >=
            pastDoses[pastIndex].dateGiven.minIfNull(allowable.absMinInt)
        ? Tuple2(true, EvalReason.valid)
        : Tuple2(false, EvalReason.tooSoon);
  }

  void evalLiveVirusConflict(
      VaxPatient patient, Cvx cvx, VaxDate dateGiven, List<Dose> pastDoses) {
    conflict = Tuple2(false, null);
    VaxDate latest;
    List<Dose> liveList = patient.liveVirusList;
    pastDoses.forEach((dose) {
      var index = liveList
          .indexWhere((liveVaccine) => liveVaccine.doseId == dose.doseId);
      if (index != -1) {
        liveList.removeAt(index);
        liveList.add(dose);
      }
    });
    if (liveList.isNotEmpty) {
      var liveVaccines = checkLiveVirusList(liveList, dateGiven);
      if (liveVaccines.isNotEmpty) {
        var liveConflicts = liveConflictList(cvx);
        if (liveConflicts.isNotEmpty) {
          for (final conflict in liveConflicts) {
            var index = liveVaccines
                .indexWhere((dose) => dose.cvx == conflict.previous.cvx);
            if (index != -1) {
              if (isThereConflict(conflict, liveVaccines[index], dateGiven)) {
                if (!this.conflict.value1) {
                  this.conflict = Tuple2(true, liveVaccines[index].doseId);
                  latest = liveVaccines[index]
                      .dateGiven
                      .change(conflict.minConflictEndInterval);
                } else if (latest <
                    liveVaccines[index]
                        .dateGiven
                        .change(conflict.minConflictEndInterval)) {
                  this.conflict = Tuple2(true, liveVaccines[index].doseId);
                }
              }
            }
          }
        }
      }
    }
  }

  List<Dose> checkLiveVirusList(List<Dose> liveList, VaxDate dateGiven) {
    var curLiveList = <Dose>[];
    liveList.forEach((dose) {
      if (dose.dateGiven < dateGiven) {
        curLiveList.add(dose);
      }
    });
    return liveList;
  }

  List<LiveVirusConflict> liveConflictList(Cvx cvx) {
    var conflictList = <LiveVirusConflict>[];
    SupportingData.scheduleSupportingData.liveVirusConflicts.liveVirusConflict
        .forEach((dose) {
      if (dose.current.cvx == cvx) {
        conflictList.add(dose);
      }
    });
    return conflictList;
  }

  bool isThereConflict(
      LiveVirusConflict conflict, Dose dose, VaxDate dateGiven) {
    var conflictBeginIntDate =
        dose.dateGiven.maxIfNull(conflict.conflictBeginInterval);
    var conflictEndIntDate = dose.dateGiven.minIfNull(dose.valid()
        ? conflict.minConflictEndInterval
        : conflict.conflictEndInterval);
    return conflictBeginIntDate <= dateGiven && dateGiven < conflictEndIntDate;
  }

  Tuple2<bool, EvalReason> preferable(SeriesDose seriesDose, Dose dose) {
    var dob = dose.patient.dob;
    var prefIndex = seriesDose.preferableVaccine
        .indexWhere((preferable) => preferable.cvx == dose.cvx);
    if (prefIndex == -1) {
      return Tuple2(false, EvalReason.inappropriate);
    } else {
      var prefVax = seriesDose.preferableVaccine[prefIndex];
      var prefBeginAgeDate = dob.minIfNull(prefVax.beginAge);
      var prefEndAgeDate = dob.maxIfNull(prefVax.endAge);
      if (prefBeginAgeDate > dose.dateGiven) {
        return Tuple2(false, EvalReason.tooYoung);
      } else if (dose.dateGiven >= prefEndAgeDate) {
        return Tuple2(false, EvalReason.tooOld);
      } else if (prefVax.mvx == null ||
          prefVax.mvx == dose.mvx ||
          dose.mvx == null) {
        if (dose.volume == null || prefVax.volume == null) {
          return Tuple2(true, null);
        } else if (dose.volume >= double.parse(prefVax.volume)) {
          return Tuple2(true, null);
        } else {
          return Tuple2(false, EvalReason.quantity);
        }
      } else {
        return Tuple2(false, EvalReason.inappropriate);
      }
    }
  }

  Tuple2<bool, EvalReason> allowable(SeriesDose seriesDose, Dose dose) {
    var dob = dose.patient.dob;
    if (seriesDose.allowableVaccine == null) {
      return Tuple2(true, null);
    } else {
      var allowIndex = seriesDose.allowableVaccine
          .indexWhere((allowable) => allowable.cvx == dose.cvx);
      if (allowIndex == -1) {
        return Tuple2(false, EvalReason.inappropriate);
      } else {
        var allowableVax = seriesDose.allowableVaccine[allowIndex];
        var allowBeginAgeDate = dob.minIfNull(allowableVax.beginAge);
        var allowEndAgeDate = dob.maxIfNull(allowableVax.endAge);
        return allowBeginAgeDate > dose.dateGiven
            ? Tuple2(false, EvalReason.tooYoung)
            : dose.dateGiven >= allowEndAgeDate
                ? Tuple2(false, EvalReason.tooOld)
                : Tuple2(true, null);
      }
    }
  }

//ToDo: consider including volumes for allowable dosages

}
