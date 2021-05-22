import 'package:excel/excel.dart';
import 'package:vax_cast/vax_cast.dart';

import 'create_series_dose.dart';

Series createSeries(Sheet sheet) {
  var newSeries = Series();
  for (var row in sheet.rows) {
    if (row.isNotEmpty &&
        row[0]?.value != null &&
        row[0]!.value.toString() != '') {
      if (row[0]!.value.toString().contains('Series Name')) {
        newSeries = newSeries.copyWith(seriesName: row[1]!.value.toString());
      } else if (row[0]!.value.toString().contains('Target Disease')) {
        newSeries = newSeries.copyWith(
            targetDisease: targetDiseaseStringToEnum[row[1]!.value.toString()]);
      } else if (row[0]!.value.toString().contains('Vaccine Group')) {
        newSeries = newSeries.copyWith(
            vaccineGroup:
                vaccineGroupNameStringToEnum[row[1]!.value.toString().trim()]);
      } else if (row[0]!.value.toString().contains('Administrative Guidance') &&
          row[1]?.value.toString() != 'Text') {
        if (!row[1]!.value.toString().contains('n/a')) {
          if (newSeries.seriesAdminGuidance == null) {
            newSeries = newSeries
                .copyWith(seriesAdminGuidance: [row[1]!.value.toString()]);
          } else {
            newSeries.seriesAdminGuidance!.add(row[1]!.value.toString());
          }
        }
      } else if (row[0]!.value.toString().contains('Series Type') &&
          row[1]?.value.toString() != 'Type') {
        newSeries = newSeries.copyWith(
            seriesType: seriesTypeStringToEnum[row[1]!.value.toString()]);
      } else if (row[0]!
              .value
              .toString()
              .contains('Equivalent Series Groups') &&
          row[1]?.value.toString() != 'Series Groups') {
        if (!row[1]!.value.toString().contains('n/a')) {
          newSeries = newSeries.copyWith(
              equivalentSeriesGroups: equivalentSeriesGroupsStringToEnum[
                  row[1]!.value.toString().trim()]);
        }
      } else if (row[0]!.value.toString().contains('Gender') &&
          row[1]?.value.toString() != 'Required Gender') {
        if (!row[1]!.value.toString().contains('n/a')) {
          if (newSeries.requiredGender == null) {
            newSeries = newSeries.copyWith(requiredGender: [
              genderStringToEnum[row[1]!.value.toString().trim()]!
            ]);
          } else {
            newSeries.requiredGender!
                .add(genderStringToEnum[row[1]!.value.toString().trim()]!);
          }
        }
      } else if (row[0]!.value.toString().contains('Select Patient Series') &&
          row[1]?.value.toString() != 'Default Series') {
        newSeries = newSeries.copyWith(
          selectSeries: SelectSeries(
            defaultSeries: binaryStringToEnum[row[1]!.value.toString().trim()],
            productPath: binaryStringToEnum[row[2]!.value.toString().trim()],
            seriesGroupName:
                seriesGroupNameStringToEnum[row[3]!.value.toString().trim()],
            seriesGroup:
                seriesGroupStringToEnum[row[4]!.value.toString().trim()],
            seriesPriority:
                seriesPriorityStringToEnum[row[5]!.value.toString().trim()],
            seriesPreference:
                seriesPreferenceStringToEnum[row[6]!.value.toString().trim()],
            minAgeToStart: row[7]!.value.toString().contains('n/a')
                ? null
                : row[7]!.value.toString().trim(),
            maxAgeToStart: row[8]!.value.toString().contains('n/a')
                ? null
                : row[8]!.value.toString().trim(),
          ),
        );
      } else if (row[0]!.value.toString().contains('Indication') &&
          row[1]?.value.toString() != 'Observation (Code)' &&
          !row[1]!.value.toString().contains('n/a')) {
        /// extract the code from the text for the observation
        var open = row[1]!.value.toString().lastIndexOf('(');
        var close = row[1]!.value.toString().lastIndexOf(')');
        var code = row[1]!.value.toString().substring(open + 1, close);
        var text = row[1]!.value.toString().substring(0, open - 1);

        if (newSeries.indication == null) {
          newSeries = newSeries.copyWith(indication: []);
        }
        newSeries.indication!.add(
          Indication(
            observationCode:
                ObservationCode(code: ObsStringToEnumMap[code], text: text),
            description: row[2]!.value.toString().contains('n/a')
                ? null
                : row[2]!.value.toString(),
            beginAge: row[3]!.value.toString().contains('n/a')
                ? null
                : row[3]!.value.toString().trim(),
            endAge: row[4]!.value.toString().contains('n/a')
                ? null
                : row[4]!.value.toString().trim(),
            guidance: row[5]!.value.toString().contains('n/a')
                ? null
                : row[5]!.value.toString().trim(),
          ),
        );
      } else if (row[0]!.value.toString().contains('Series Dose')) {
        if (newSeries.seriesDose == null) {
          newSeries = newSeries.copyWith(seriesDose: []);
        }
        ;
        newSeries.seriesDose!.add(createSeriesDose(
            sheet.rows.indexWhere((element) =>
                element[0]?.value.toString().trim() ==
                    row[0]!.value.toString().trim() &&
                element[1]?.value.toString().trim() ==
                    row[1]!.value.toString().trim()),
            sheet.rows));
      }
    }
  }
  return newSeries;
}
