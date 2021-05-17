import 'package:excel/excel.dart';

import '../export_supporting_data.dart';

Series createSeries(Sheet sheet) {
  var newSeries = Series(
      seriesName: sheet.rows[0][1]!.value.toString(),
      targetDisease:
          targetDiseaseStringToEnum[sheet.rows[1][1]!.value.toString()],
      vaccineGroup: vaccineGroupNameStringToEnum[
          sheet.rows[2][1]!.value.toString().trim()]);
  if (sheet.rows[0][1]!.value.toString().contains('Ebola')) {
    print(newSeries.toJson());
  }
  return newSeries;
}
