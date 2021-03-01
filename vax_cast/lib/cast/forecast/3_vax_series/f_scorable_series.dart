part of 'a_vax_series.dart';

bool highEnoughPriority(String seriesPriority, String highPriority) =>
    seriesPriority.compareTo(highPriority) != 1;

bool isOldEnough(
  VaxDate dob,
  VaxDate assessmentDate,
  String minAgeToStart,
  String seriesStatus,
) =>
    dob.minIfNull(minAgeToStart) <= assessmentDate ||
    seriesStatus == 'complete';

bool startedOnTime(List<Dose> pastDoses, VaxDate dob, String maxAgeToStart) {
  if (pastDoses.isEmpty) return true;
  var dose = pastDoses.indexWhere((dose) => dose.valid());
  return dose == -1
      ? true
      : pastDoses[dose].dateGiven < dob.maxIfNull(maxAgeToStart);
}
