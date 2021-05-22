import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:excel/excel.dart';

import 'contraindications.dart';
import 'create_series/create_series.dart';
import 'immunity.dart';

class SupportingDataBuilder extends Builder {
  static const filePath = 'assets/new_json';
  @override
  Map<String, List<String>> get buildExtensions => {
        '.xlsx': ['.json']
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    /// Grab the object matching the input file
    var inputId = buildStep.inputId;

    /// Read in the data from the excel spreadsheet
    var contents = await buildStep.readAsBytes(inputId);
    var excel = Excel.decodeBytes(contents);
    var newFileName = inputId.path.toString().split('- ')[1].split('.xlsx')[0];
    var newFilePath = '$filePath/${newFileName}.json';

    /// identify only those files that contain AntigenSupportingData
    if (inputId.toString().contains('AntigenSupportingData')) {
      /// first we get the immunity data
      var antigenSupportingData = immunity(excel);

      /// then we get the contraindication data
      antigenSupportingData = contraindications(excel, antigenSupportingData);

      /// add the list of series
      antigenSupportingData = antigenSupportingData.copyWith(series: []);

      /// go through each sheet that is a series, in this case we just ignore all sheets
      /// that we know the excel document is going to have that are not series
      excel.tables.forEach((key, value) {
        if (key != 'Antigen Series Overview' &&
            key != 'Change History' &&
            key != 'FAQ' &&
            key != 'Immunity' &&
            key != 'Contraindications') {
          if (excel.tables[key] != null) {
            antigenSupportingData.series!.add(createSeries(excel.tables[key]!));
          }
        }
      });
      var file = jsonEncode(antigenSupportingData.toJson());
      await File(newFilePath).writeAsString(file);
    }
  }
}
