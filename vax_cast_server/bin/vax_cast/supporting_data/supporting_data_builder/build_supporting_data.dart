import 'package:build/build.dart';
import 'package:excel/excel.dart';

import 'contraindications.dart';
import 'immunity.dart';

class SupportingDataBuilder extends Builder {
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

    /// identify only those files that contain AntigenSupportingData
    if (inputId.toString().contains('AntigenSupportingData')) {
      var antigenSupportingData = immunity(excel);
      antigenSupportingData = contraindications(excel, antigenSupportingData);
    }
  }
}
