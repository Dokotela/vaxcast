import 'package:csv/csv.dart';
import 'package:generate_vax_cast/utils/utils.dart';
import 'package:vax_cast/vax_cast.dart';

import 'create_series_dose.dart';

Series createSeries(String? seriesString) {
  var newSeries = Series();
  if (seriesString == null) {
    return Series();
  }

  /// Parse out the Contraindication content from the tab separated values in
  /// the string
  final seriesData = const CsvToListConverter()
      .convert(seriesString, fieldDelimiter: '\t', eol: '\n');

  for (var row in seriesData) {
    if (row.isNotEmpty && row[0] != null && row[0]!.toString() != '') {
      if (row[0]!.toString().contains('Series Name')) {
        newSeries = newSeries.copyWith(seriesName: valueToString(row[1]!));
      } else if (row[0]!.toString().contains('Target Disease')) {
        newSeries = newSeries.copyWith(
            targetDisease: targetDiseaseStringToEnum[valueToString(row[1]!)]);
      } else if (row[0]!.toString().contains('Vaccine Group')) {
        newSeries = newSeries.copyWith(
            vaccineGroup: vaccineGroupNameStringToEnum[valueToString(row[1]!)]);
      } else if (row[0]!.toString().contains('Administrative Guidance') &&
          row[1]?.toString() != 'Text') {
        if (!row[1]!.toString().contains('n/a')) {
          if (newSeries.seriesAdminGuidance == null) {
            newSeries = newSeries
                .copyWith(seriesAdminGuidance: [valueToString(row[1]!) ?? '']);
          } else {
            newSeries.seriesAdminGuidance!.add(valueToString(row[1]!) ?? '');
          }
        }
      } else if (row[0]!.toString().contains('Series Type') &&
          row[1]?.toString() != 'Type') {
        newSeries = newSeries.copyWith(
            seriesType: seriesTypeStringToEnum[valueToString(row[1]!)]);
      } else if (row[0]!.toString().contains('Equivalent Series Groups') &&
          row[1]?.toString() != 'Series Groups') {
        if (!row[1]!.toString().contains('n/a')) {
          newSeries = newSeries.copyWith(
              equivalentSeriesGroups:
                  equivalentSeriesGroupsStringToEnum[valueToString(row[1]!)]);
        }
      } else if (row[0]!.toString().contains('Gender') &&
          row[1]?.toString() != 'Required Gender') {
        if (!row[1]!.toString().contains('n/a')) {
          if (newSeries.requiredGender == null) {
            newSeries = newSeries.copyWith(
                requiredGender: [genderStringToEnum[valueToString(row[1]!)]!]);
          } else {
            newSeries.requiredGender!
                .add(genderStringToEnum[valueToString(row[1]!)]!);
          }
        }
      } else if (row[0]!.toString().contains('Select Patient Series') &&
          row[1]?.toString() != 'Default Series') {
        newSeries = newSeries.copyWith(
          selectSeries: SelectSeries(
            defaultSeries: binaryStringToEnum[valueToString(row[1]!)],
            productPath: binaryStringToEnum[valueToString(row[2]!)],
            seriesGroupName:
                seriesGroupNameStringToEnum[valueToString(row[3]!)],
            seriesGroup: seriesGroupStringToEnum[valueToString(row[4]!)],
            seriesPriority: seriesPriorityStringToEnum[valueToString(row[5]!)],
            seriesPreference:
                seriesPreferenceStringToEnum[valueToString(row[6]!)],
            minAgeToStart: row[7]!.toString().contains('n/a')
                ? null
                : valueToString(row[7]!),
            maxAgeToStart: row[8]!.toString().contains('n/a')
                ? null
                : valueToString(row[8]!),
          ),
        );
      } else if (row[0]!.toString().contains('Indication') &&
          row[1]?.toString() != 'Observation (Code)' &&
          !row[1]!.toString().contains('n/a')) {
        /// extract the code from the text for the observation
        var open = row[1]!.toString().lastIndexOf('(');
        var close = row[1]!.toString().lastIndexOf(')');
        var code = row[1]!.toString().substring(open + 1, close);
        var text = row[1]!.toString().substring(0, open - 1);

        if (newSeries.indication == null) {
          newSeries = newSeries.copyWith(indication: []);
        }
        newSeries.indication!.add(
          Indication(
            observationCode:
                ObservationCode(code: stringToEnum(code) as Obs?, text: text),
            description: row[2]!.toString().contains('n/a')
                ? null
                : valueToString(row[2]!),
            beginAge: row[3]!.toString().contains('n/a')
                ? null
                : valueToString(row[3]!),
            endAge: row[4]!.toString().contains('n/a')
                ? null
                : valueToString(row[4]!),
            guidance: row[5]!.toString().contains('n/a')
                ? null
                : valueToString(row[5]!),
          ),
        );
      } else if (row[0]!.toString().contains('Series Dose')) {
        if (newSeries.seriesDose == null) {
          newSeries = newSeries.copyWith(seriesDose: []);
        }
        ;
        newSeries.seriesDose!.add(
          createSeriesDose(
              seriesData.indexWhere(
                (element) =>
                    element[0]?.toString().trim() ==
                        row[0]!.toString().trim() &&
                    element[1]?.toString().trim() == row[1]!.toString().trim(),
              ),
              seriesData),
        );
      }
    }
  }
  return newSeries;
}
