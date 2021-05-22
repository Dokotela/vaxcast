import 'package:excel/excel.dart';
import 'package:vax_cast/vax_cast.dart';

SeriesDose createSeriesDose(int index, List<List<Data?>> rows) {
  var seriesDose = SeriesDose();
  for (var i = index; i < rows.length; i++) {
    var row = rows[i];
    if (row[0] == null ||
        row[0]?.value == null ||
        row[0]!.value.toString() == '') {
      return seriesDose;
    } else if (row[0]!.value.toString().contains('Series Dose')) {
      seriesDose = seriesDose.copyWith(
          doseNumber: doseNumberStringToEnum[row[1]!.value.toString().trim()]);
    } else if (row[0]!.value.toString().contains('Age') &&
        !row[1]!.value.toString().contains('Absolute Minimum Age')) {
      if (seriesDose.age == null) {
        seriesDose = seriesDose.copyWith(age: []);
      }
      seriesDose.age!.add(VaxAge(
        absMinAge: row[1]!.value.toString().trim().contains('n/a')
            ? null
            : row[1]!.value.toString().trim(),
        minAge: row[2]!.value.toString().trim().contains('n/a')
            ? null
            : row[2]!.value.toString().trim(),
        earliestRecAge: row[3]!.value.toString().trim().contains('n/a')
            ? null
            : row[3]!.value.toString().trim(),
        latestRecAge: row[4]!.value.toString().trim().contains('n/a')
            ? null
            : row[4]!.value.toString().trim(),
        maxAge: row[5]!.value.toString().trim().contains('n/a')
            ? null
            : row[5]!.value.toString().trim(),
        effectiveDate: row[6]!.value.toString().trim().contains('n/a')
            ? null
            : row[6]!.value.toString().trim(),
        cessationDate: row[7]!.value.toString().trim().contains('n/a')
            ? null
            : row[7]!.value.toString().trim(),
      ));
    } else if (row[0]!.value.toString().contains('Preferable Interval') &&
        !row[1]!
            .value
            .toString()
            .contains('From Immediate Previous Dose Administered? Y/N')) {
      if (seriesDose.interval == null) {
        seriesDose = seriesDose.copyWith(interval: []);
      }

      /// extract the code from the text for the observation
      var open = row[4]!.value.toString().lastIndexOf('(');
      var close = row[4]!.value.toString().lastIndexOf(')');
      var code = '';
      var text = '';
      if (open != -1 && close != -1) {
        code = row[4]!.value.toString().substring(open + 1, close);
        text = row[4]!.value.toString().substring(0, open - 1);
      }
      seriesDose.interval!.add(Interval(
        fromPrevious: row[1]!.value.toString().trim().contains('n/a')
            ? null
            : fromPreviousStringToEnum[row[1]!.value.toString().trim()],
        fromTargetDose: row[2]!.value.toString().trim().contains('n/a')
            ? null
            : fromTargetStringToEnum[row[2]!.value.toString().trim()],
        fromMostRecent: row[3]!.value.toString().trim().contains('n/a')
            ? null
            : row[3]!.value.toString().trim(),
        fromRelevantObs: open == -1 || close == -1
            ? null
            : ObservationCode(code: ObsStringToEnumMap[code], text: text),
        absMinInt: row[5]!.value.toString().trim().contains('n/a')
            ? null
            : row[5]!.value.toString().trim(),
        minInt: row[6]!.value.toString().trim().contains('n/a')
            ? null
            : row[6]!.value.toString().trim(),
        earliestRecInt: row[7]!.value.toString().trim().contains('n/a')
            ? null
            : row[7]!.value.toString().trim(),
        latestRecInt: row[8]!.value.toString().trim().contains('n/a')
            ? null
            : row[8]!.value.toString().trim(),
        intervalPriority: row[9]!.value.toString().trim().contains('n/a')
            ? null
            : row[9]!.value.toString().trim(),
        effectiveDate: row[10]!.value.toString().trim().contains('n/a')
            ? null
            : row[10]!.value.toString().trim(),
        cessationDate: row[11]!.value.toString().trim().contains('n/a')
            ? null
            : row[11]!.value.toString().trim(),
      ));
    }
  }
  return seriesDose;
}
