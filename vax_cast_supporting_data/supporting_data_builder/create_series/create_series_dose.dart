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
    }
  }
  return seriesDose;
}
