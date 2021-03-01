part of 'a_vax_series.dart';

bool getBestSeries(
  List<Group> groups,
  String equivalentGroups,
  String seriesStatus,
  bool isStandardSeries,
) {
  if (seriesStatus == 'complete' || equivalentGroups == null) {
    return true;
  } else {
    var equivalentIndex =
        groups.indexWhere((group) => group.seriesGroup == equivalentGroups);
    return equivalentIndex == -1
        ? true
        : groups[equivalentIndex].vaxSeries[0].seriesStatus == 'complete'
            ? false
            : !isStandardSeries
                ? true
                : !groups[equivalentIndex].vaxSeries[0].isStandardSeries
                    ? false
                    : true;
  }
}
