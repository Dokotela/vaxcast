import 'package:excel/excel.dart';
import 'package:vax_cast/vax_cast.dart';

Series createSeries(Sheet sheet) {
  var newSeries = Series(
    seriesName: sheet.rows[0][1]!.value.toString(),
    targetDisease:
        targetDiseaseStringToEnum[sheet.rows[1][1]!.value.toString()],
    vaccineGroup:
        vaccineGroupNameStringToEnum[sheet.rows[2][1]!.value.toString().trim()],
    seriesAdminGuidance: sheet.rows[4][1]!.value.toString().contains('n/a')
        ? null
        : [sheet.rows[4][1]!.value.toString()],
    seriesType: seriesTypeStringToEnum[sheet.rows[6][1]!.value.toString()],
    equivalentSeriesGroups: equivalentSeriesGroupsStringToEnum[
        sheet.rows[8][1]!.value.toString().trim()],
    requiredGender: sheet.rows[10][1]!.value.toString().contains('n/a')
        ? null
        : [genderStringToEnum[sheet.rows[10][1]!.value.toString().trim()]!],
    selectSeries: SelectSeries(
      defaultSeries:
          binaryStringToEnum[sheet.rows[12][1]!.value.toString().trim()],
      productPath:
          binaryStringToEnum[sheet.rows[12][2]!.value.toString().trim()],
      seriesGroupName: seriesGroupNameStringToEnum[
          sheet.rows[12][3]!.value.toString().trim()],
      seriesGroup:
          seriesGroupStringToEnum[sheet.rows[12][4]!.value.toString().trim()],
      seriesPriority: seriesPriorityStringToEnum[
          sheet.rows[12][5]!.value.toString().trim()],
      seriesPreference: seriesPreferenceStringToEnum[
          sheet.rows[12][6]!.value.toString().trim()],
      minAgeToStart: sheet.rows[12][7]!.value.toString().contains('n/a')
          ? null
          : sheet.rows[12][7]!.value.toString().trim(),
      maxAgeToStart: sheet.rows[12][8]!.value.toString().contains('n/a')
          ? null
          : sheet.rows[12][8]!.value.toString().trim(),
    ),
  );
  return newSeries;
}
