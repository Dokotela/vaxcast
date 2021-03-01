part of 'a_dose.dart';

Tuple2<bool, Dose> evalLiveVirusConflict(
    VaxPatient patient, String cvx, VaxDate dateGiven, List<Dose> pastDoses) {
  Tuple2<bool, Dose> liveConflict = Tuple2(false, null);
  VaxDate latest;
  List<Dose> liveList = patient.liveVirusList;
  pastDoses.forEach((dose) {
    var index = liveList.indexWhere((liveVaccine) =>
        liveVaccine.dateGiven == dose.dateGiven && liveVaccine.cvx == dose.cvx);
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
              .indexWhere((dose) => dose.cvx == conflict.previousCvx);
          if (index != -1) {
            if (isThereConflict(conflict, liveVaccines[index], dateGiven)) {
              if (!liveConflict.value1) {
                liveConflict = Tuple2(true, liveVaccines[index]);
                latest = liveVaccines[index]
                    .dateGiven
                    .change(conflict.minConflictEndInterval);
              } else if (latest <
                  liveVaccines[index]
                      .dateGiven
                      .change(conflict.minConflictEndInterval)) {
                liveConflict = Tuple2(true, liveVaccines[index]);
              }
            }
          }
        }
      }
    }
  }
  return liveConflict;
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

List<LiveVirusConflict> liveConflictList(String cvx) {
  var conflictList = <LiveVirusConflict>[];
  SupportingData.scheduleSupportingData.liveVirusConflicts.forEach((dose) {
    if (dose.currentCvx == cvx) {
      conflictList.add(dose);
    }
  });
  return conflictList;
}

bool isThereConflict(LiveVirusConflict conflict, Dose dose, VaxDate dateGiven) {
  var conflictBeginIntDate =
      dose.dateGiven.maxIfNull(conflict.conflictBeginInterval);
  var conflictEndIntDate = dose.dateGiven.minIfNull(dose.valid()
      ? conflict.minConflictEndInterval
      : conflict.conflictEndInterval);
  return conflictBeginIntDate <= dateGiven && dateGiven < conflictEndIntDate;
}
